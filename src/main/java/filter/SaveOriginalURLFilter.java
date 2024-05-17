package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * SaveOriginalURLFilter는 사용자가 로그인 페이지로 이동하기 전에
 * 원래 접속하고 있던 URL을 세션에 저장하는 역할을 하는 필터 클래스입니다.
 */
public class SaveOriginalURLFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // 초기화 로직(필요하면 추후 추가)
    }

    /**
     * 사용자가 로그인 페이지로 이동하기 전에 원래 접속하고 있던 URL을 세션에 저장합니다.
     */
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession();

        // 현재 요청의 URI와 쿼리 문자열을 조합하여 원래 URL을 만듭니다.
        String originalURL = req.getRequestURI();
        String queryString = req.getQueryString();
        if (queryString != null) {
            originalURL += "?" + queryString;
        }

        // 원래 URL을 세션에 저장합니다.
        // session.setAttribute("originalURL", originalURL);

        // 필터 체인의 다음 필터 또는 서블릿을 호출합니다.
        //chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        // 정리 작업 로직(필요하면 추후 추가)
    }
}
