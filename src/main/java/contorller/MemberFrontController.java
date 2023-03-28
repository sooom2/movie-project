package contorller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import vo.ActionForward;

// *.me 서블릿 패턴에 대한 요청을 모두 처리하는 MemberFrontController 클래스 정의 - 서블릿
@WebServlet("*.me")
public class MemberFrontController extends HttpServlet {

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("MemberFrontController");
		
		request.setCharacterEncoding("UTF-8");
		
		Action action = null; // XXXAction 객체를 공통으로 관리할 Action 인터페이스 타입
		ActionForward forward = null; // 포워딩 정보를 저장할 ActionForward 타입
		
		String command = request.getServletPath();
		System.out.println("command : " + command);
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}












