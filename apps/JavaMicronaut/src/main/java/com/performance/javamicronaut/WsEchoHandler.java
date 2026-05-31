package com.performance.javamicronaut;

import io.micronaut.websocket.WebSocketSession;
import io.micronaut.websocket.annotation.OnMessage;
import io.micronaut.websocket.annotation.OnOpen;
import io.micronaut.websocket.annotation.ServerWebSocket;

@ServerWebSocket("/ws/echo")
public class WsEchoHandler {

    @OnOpen
    public void onOpen(WebSocketSession session) {
        // nothing needed
    }

    @OnMessage
    public String onMessage(String message, WebSocketSession session) {
        return message;
    }
}
