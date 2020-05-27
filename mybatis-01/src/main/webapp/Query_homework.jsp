
<%@ page import="java.util.List" %>
<%@ page import="spring.mvc.Bean.Student_Homework" %>
<%@ page import="spring.mvc.utils.MybatisUtils" %>
<%@ page import="org.apache.ibatis.session.SqlSession" %>
<%@ page import="spring.mvc.mapper.StudetHomework_mapper" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2020/3/11
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>查询作业</title>
</head>
<body>
<a href="index.jsp">返回上一页</a>
<table align="center" width="960" border="1" bgcolor="#7fffd4"
       cellpadding="1" cellspacing="1">
    <tr align="center" bgcolor="#faebd7" height="50">
        <td>ID</td>
        <td>学号</td>
        <td>作业编号</td>
        <td>标题</td>
        <td>内容</td>
        <td>创建时间</td>
    </tr>
    <%
        SqlSession sql = MybatisUtils.getsqlSession();

        List<Student_Homework> list = (sql.getMapper(StudetHomework_mapper.class)).selectAll();
        sql.close();
        if(list==null || list.size()<=0){

        }else{
            for(Student_Homework hh:list)
            {

    %>

    <tr align="center">
        <td width="5%"><%=hh.getId()%></td>
        <td width="5%"><%=hh.getStudentid()%></td>
        <td width="5%"><%=hh.getHomework()%></td>
        <td width="20%"><%=hh.getHomeworkTitle()%></td>
        <td width="40%"><%=hh.getHomeworkContent()%></td>
        <td width="15%"><%=hh.getCreateTime()%></td>
    </tr>
    <% }}%>
</table>
</body>
</html>
