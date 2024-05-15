package board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardNullHandler implements BoardCommandHandler{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		res.sendError(HttpServletResponse.SC_NOT_FOUND);
		return null;
	}

}
