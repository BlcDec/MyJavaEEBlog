package blog.servlet;

import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import blog.service.ArticleService;
import blog.utils.StringUtils;


@WebServlet("/SortServlet")
public class SortServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		//获取的是所有分类 还是一个分类的文章
		//String get = StringUtils.pareCode(request.getParameter("get"));
		//String get=new String(request.getParameter("get").getBytes("ISO-8859-1"),"GB2312");
		String get = new String(request.getParameter("get").getBytes("ISO-8859-1"), "UTF-8");
		System.out.println(get);
		//初始化分类和和文章
		ArticleService as = ArticleService.getInstance();		
		request.setAttribute("sort_article_map",as.getSortAndAirticle(get));					
		//转发		
		request.getRequestDispatcher("/page/sort.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
