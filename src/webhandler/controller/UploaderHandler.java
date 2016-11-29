package webhandler.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

/*
 * 	ws://xxx.xxx.xxx.xxx/ws/upload.it ���� websooket ���� ����� �������� �ٰ����� �ִ¾� 
 * 	�ְ� �������ִ��� list �� ���ؼ� �޼����� �����ϸ� ���⿡ ����� �ֵ������� �޼����� ��������.
 * 	�ʿ��Ҷ� �޼����� ������ ��Ű�� �Ϸ���.. ���� ������ �ؾߵȴ�.
 */
@Component
public class UploaderHandler extends TextWebSocketHandler {

	List<WebSocketSession> sList;
	HashMap<Object ,WebSocketSession> map;
	@PostConstruct
	public void init() {
		sList = new ArrayList<>();
	
	}

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		System.out.println(session+"pupu����");
		 Object userId = session.getAttributes().get("userId");
		 System.out.println(userId);
		 map.put(""+userId, session);
		sList.add((WebSocketSession) userId);
		System.out.println(sList);
	}
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println(session+"pupu��������");
		sList.remove(session);

	}
	public void sendToAllSession(String msg) {
		HashMap map = new HashMap();
		for (int i = 0; i < sList.size(); i++) {
			map = (HashMap) sList.get(i);
			System.out.println("��û���� �޼���"+map);
			WebSocketSession wss = sList.get(i);
			try {
				wss.sendMessage(new TextMessage(msg));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
