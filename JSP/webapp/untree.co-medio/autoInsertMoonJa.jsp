<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String ctx = request.getContextPath();       //콘텍스트명 얻어오기.

 

response.setHeader("Pragma-directive", "no-cache");

response.setHeader("Cache-directive", "no-cache");

response.setHeader("Pragma", "no-cache");

response.setHeader("Cache-Control", "no-cache");

response.setDateHeader("Expires",0);

%>