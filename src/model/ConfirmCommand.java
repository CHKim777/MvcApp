package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ConfirmCommand implements ICommand {
	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp) {
		// �Է°� Ȯ��
		// �Է°��� �߸� �Ǿ��� ��� ���� �������� �̵�
		return "member/register_confirm.jsp";
	}
}
