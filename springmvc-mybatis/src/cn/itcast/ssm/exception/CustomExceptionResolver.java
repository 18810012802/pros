package cn.itcast.ssm.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

public class CustomExceptionResolver implements HandlerExceptionResolver{

	@Override
	public ModelAndView resolveException(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception ex) {
		// TODO Auto-generated method stub
		CustomException ce=null;
		if(ex instanceof CustomException){
			ce=(CustomException)ex;
		}else{
			ce=new CustomException("Î´Öª´íÎó");
		}
		String message=ce.getMessage();
		ModelAndView mav=new ModelAndView();
		mav.addObject("message",message);
		mav.setViewName("error");
		return mav;
	}

}
