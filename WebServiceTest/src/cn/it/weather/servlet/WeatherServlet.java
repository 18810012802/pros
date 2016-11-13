package cn.it.weather.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.it.weather.ArrayOfString;
import cn.it.weather.WeatherWS;
import cn.it.weather.WeatherWSSoap;
import net.sf.json.JSONArray;

/**
 * Servlet implementation class WeatherServlet
 */
//@WebServlet("/WeatherServlet")
public class WeatherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WeatherServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		WeatherWS ws=new WeatherWS();
		WeatherWSSoap wsSoap=ws.getWeatherWSSoap();
	
		ArrayOfString weatherInfo=wsSoap.getWeather(id, "");
		for(String temp:weatherInfo.getString()){
			System.out.println(temp);
		}
		JSONArray jsonarray=JSONArray.fromObject((List<String>)weatherInfo.getString());
		response.getWriter().write(jsonarray.toString());
		
	}

}