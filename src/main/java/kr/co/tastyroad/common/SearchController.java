package kr.co.tastyroad.common;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.tastyroad.notice.model.dto.noticeDto;
import kr.co.tastyroad.notice.model.service.noticeServiceImpl;

@WebServlet("/search.do")
public class SearchController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public SearchController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchText = request.getParameter("search-text");
        
        noticeServiceImpl noticeService = new noticeServiceImpl();
        ArrayList<noticeDto> noticeList = noticeService.searchNotices(searchText);

        request.setAttribute("searchText", searchText); // 검색어를 request에 추가
        request.setAttribute("noticeList", noticeList);
        RequestDispatcher view = request.getRequestDispatcher("/views/search/search_main.jsp");
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
