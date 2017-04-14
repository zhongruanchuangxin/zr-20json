package cn.zr.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zr.entity.User;
import net.sf.json.JSONObject;

public class JsonServlet extends HttpServlet {

	/**
		 * Constructor of the object.
		 */
	public JsonServlet() {
		super();
	}

	/**
		 * Destruction of the servlet. <br>
		 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		//ʵ������
		User user1 = new User(1,"������","zr",18);
		User user2 = new User(2,"�Ϻ�","sh",20);
		User user3 = new User(3,"����","bj",30);
		
		//���ϴ洢����
		List<User> users = new ArrayList<User>();
		users.add(user1);
		users.add(user2);
		users.add(user3);
		
		//��javaʵ��ת����json��������
		JSONObject jsonObj = JSONObject.fromObject(user1);
//		JSONArray jsonArr = JSONArray.fromObject(users);
//		
//		System.out.println(jsonArr.toString());
//		out.print(jsonArr);
		
		System.out.println(jsonObj.toString());
		out.print(jsonObj);
		
		out.flush();
		out.close();
	}

	/**
		 * Initialization of the servlet. <br>
		 *
		 * @throws ServletException if an error occurs
		 */
	public void init() throws ServletException {
		// Put your code here
	}

}
