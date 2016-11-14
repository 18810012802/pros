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
		response.setContentType("text/html;charset=utf-8");
		response. setCharacterEncoding("UTF-8");
		String type=request.getParameter("type");
		WeatherWS ws=new WeatherWS();
		WeatherWSSoap wsSoap=ws.getWeatherWSSoap();
		List<String> info=null;
		if("province".equals(type)){
			ArrayOfString regionProvince=wsSoap.getRegionProvince();
			info=regionProvince.getString();
		}
		else if("city".equals(type)){
			String id=request.getParameter("id");
			ArrayOfString cityInfo=wsSoap.getSupportCityString(id);
			info=cityInfo.getString();
		}
		else if("weather".equals(type)){
			String id=request.getParameter("id");
			ArrayOfString weatherInfo=wsSoap.getWeather(id, "");
			info=weatherInfo.getString();
		}
		JSONArray jsonarray=JSONArray.fromObject(info);
		response.getWriter().write(jsonarray.toString());
	}

}
