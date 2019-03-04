package com.bdqn.pms.web.converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;
import org.springframework.util.StringUtils;

/**
 * 自定义转换器
 * 
 * @author Administrator
 * 
 */
public class DateConverter implements Converter<String, Date> {
	@Override
	public Date convert(String source) {
		if (StringUtils.isEmpty(source))
			return null;
		// 将字符串参数转换为指定格式(yyyy-MM-dd HH:mm:ss)
		SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy/MM/dd");
		SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("yyyy年MM月dd日");
		SimpleDateFormat[] sdfarray = { simpleDateFormat1, simpleDateFormat2, simpleDateFormat3 };
		for (SimpleDateFormat sdf : sdfarray) {
			// 成功返回需要的格式
			try {
				return sdf.parse(source);
			} catch (ParseException e) {
				e.printStackTrace();
				continue;
			}
		}
		// 如果失败返回null
		try {
			return simpleDateFormat1.parse(source);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}