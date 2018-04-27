<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkerboard</title>
        <link rel="stylesheet" type="text/css" href="index.css">
    </head>
<body>
    <% 
    String height = request.getParameter("height");
    String width = request.getParameter("width");
    
    %>
    
    <% if(height != null && width != null) { %>
    	<div class="container">
    	<h1>Checkerboard: <%= width %>w X <%= height %>h</h1>
    	<% for(int index = 0; index < Integer.parseInt(height); index++) { %>
    		<div class="row">
    		<% for(int index2 = 0; index2 < Integer.parseInt(width); index2++) { %>
    			<% if(index % 2 == 1) { %>
    				<div class="box-odd"></div>
    			<% } else { %>
    				<div class="box-even"></div>
    			<% } %>
    		<% } %>
        	</div>
    	<% } %>
    	</div>
    <% } else { %>
    	<div class="container">
    		<h1>Nothing to Draw</h1>
    		<h2>Add ?height=5&width=5 at the end of the URL to test</h2>
    	</div>
    <% } %>
</body>
</html>