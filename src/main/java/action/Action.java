package action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.ActionForward;

// XXXaction클래스가 가져야 할 공통 메서드 정의
public interface Action {

	/*
	 * XXXaction 클래스에서 수행할 작업을 공통 메서드인 execute() 메서드로 정의
	 *  => xxxaction 클래스에서 execute() 메서드 구현 (=오버라이딩) 강제하기 위해 추상메서드 형태로 정의
	 *  => 서브클래스에서 상속에 대한 제약을 덜어주기 위해 인터페이스로 정의( 인터페이스는 다중 상속 가능 )
	 * 
	 */
	// 추상메서드 바디 없어야함!,,
	 public ActionForward execute(HttpServletRequest request, HttpServletResponse response);
}
