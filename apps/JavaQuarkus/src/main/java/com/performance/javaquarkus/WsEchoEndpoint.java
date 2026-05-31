package com.performance.javaquarkus;

import jakarta.websocket.OnMessage;
import jakarta.websocket.OnOpen;
import jakarta.websocket.Session;
import jakarta.websocket.server.ServerEndpoint;

@ServerEndpoint("/ws/echo")
public class WsEchoEndpoint {

    @OnOpen
    public void onOpen(Session session) {
        // nothing needed
    }

    @OnMessage
    public String onMessage(String message, Session session) {
        return message;
    }
}
