package com.bdqn.pms.web.commons;
/**
 * 自定义异常
 *  * @author student
 *
 */

public class PMSException extends Exception {
	public PMSException(String msg){
		super(msg);
	}
	public PMSException(String msg,Throwable throwable){
		super(msg,throwable);
	}
	public PMSException(){
	}
	
	
	
}
