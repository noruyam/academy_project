package com.java.controller;

import java.util.ArrayList;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
@ServerEndpoint("/websocket")
public class WebSocketChat {

    // 웹소켓 세션을 담는 ArrayList
    private static ArrayList<Session> sessionList = new ArrayList<Session>();

    // 웹소켓 사용자 연결 성립하는 경우 호출
    @OnOpen
    public void handleOpen(Session session) {
        if (session != null) {
            String sessionId = session.getId();
            
            System.out.println("client 연결완료 >> sessionId == [" + sessionId + "]");
            sessionList.add(session);
            
            // 웹소켓 연결 성립되어 있는 모든 사용자에게 메시지 전송
            sendMessageToAll("***** [user : " + sessionId + "] 접속 *****");
        }
    }
    
    // 웹소켓 메시지(From Client) 수신하는 경우 호출
    @OnMessage
    public String handleMessage(String message, Session session) {
        if (session != null) {
            String sessionId = session.getId();
            System.out.println("메세지 도착 >> sessionId == [" + sessionId + "] / message == [" + message + "]");

            // 웹소켓 연결 성립되어 있는 모든 사용자에게 메시지 전송
            sendMessageToAll("[user : " + sessionId + "] " + message);
        }

        return null;
    }
    
    // 웹소켓 사용자 연결 해제하는 경우 호출
    @OnClose
    public void handleClose(Session session) {
        if (session != null) {
            String sessionId = session.getId();
            System.out.println("client 연결종료 : sessionId == [" + sessionId + "]");
            
            // 웹소켓 연결 성립되어 있는 모든 사용자에게 메시지 전송
            sendMessageToAll("***** [USER : " + sessionId + "] 연결종료 *****");
        }
    }

    // 웹소켓 에러 발생하는 경우 호출
    @OnError
    public void handleError(Throwable t) {
        t.printStackTrace();
    }
    
    // 웹소켓 연결 성립되어 있는 모든 사용자에게 메시지 전송
    private boolean sendMessageToAll(String message) {
        if (sessionList == null) {
            return false;
        }

        int sessionCount = sessionList.size();
        if (sessionCount < 1) {
            return false;
        }

        Session singleSession = null;

        for (int i = 0; i < sessionCount; i++) {
            singleSession = sessionList.get(i);
            if (singleSession == null) {
                continue;
            }

            if (!singleSession.isOpen()) {
                continue;
            }

            sessionList.get(i).getAsyncRemote().sendText(message);
        }

        return true;
    }
}