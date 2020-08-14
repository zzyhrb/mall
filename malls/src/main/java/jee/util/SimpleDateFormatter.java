package jee.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.format.Formatter;

public class SimpleDateFormatter implements Formatter<Date> {

	private SimpleDateFormat sdf;

	public void setPattern(String pattern) {
		sdf = new SimpleDateFormat(pattern);
	}

	@Override
	public String print(Date object, Locale locale) {
		return sdf.format(object);
	}

	@Override
	public Date parse(String text, Locale locale) throws ParseException {
		return sdf.parse(text);
	}

}
