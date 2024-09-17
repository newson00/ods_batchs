package com.ls.ods_batchs.utils;

import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@Component
public class StringToTimestampConverter implements Converter<String, Timestamp> {

    private static final String DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";

    @Override
    public Timestamp convert(String source) {
        try {
            if (source == null || source.isEmpty()) {
                return null;
            }
            SimpleDateFormat dateFormat = new SimpleDateFormat(DATE_FORMAT);
            return new Timestamp(dateFormat.parse(source).getTime());
        } catch (ParseException e) {
            throw new IllegalArgumentException("Invalid date format. Please use " + DATE_FORMAT);
        }
    }
}

