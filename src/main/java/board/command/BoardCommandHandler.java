package board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface BoardCommandHandler {
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception;
}
