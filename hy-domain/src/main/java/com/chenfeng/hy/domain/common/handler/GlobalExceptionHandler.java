package com.chenfeng.hy.domain.common.handler;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class GlobalExceptionHandler implements HandlerExceptionResolver {
	Logger log = Logger.getLogger(GlobalExceptionHandler.class);

    @Override
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler, Exception exception) {
    	log.debug(exception.getMessage());
    	if (exception instanceof AccessDeniedException) {
    		return new ModelAndView("login");
		}
        return new ModelAndView("error");
    }

}