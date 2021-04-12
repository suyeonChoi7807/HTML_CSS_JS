<%@page import="model.EmpVO"%>
<%@page import="java.util.List"%>
<%@page import="model.EmpDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
int deptid= Integer.parseInt(request.getParameter("deptid"));
EmpDAO dao= new EmpDAO();
List<EmpVO> emplist= dao.selectByDept(deptid);


%>
<table>
	<tr>
		<td>직원번호</td><td>직원이름</td><td>급여</td><td>입사일</td><td>부서번호</td>
	</tr>
<%
	for(EmpVO emp:emplist){
		out.print("<tr>");
		out.print("<td>"+emp.getEmployee_id()+"</td><td>"+emp.getLast_name()+emp.getFirst_name()+"</td><td>"+emp.getSalary()+"</td><td>"+emp.getHire_date()+"</td><td>"+emp.getDepartment_id()+"</td>");
		out.print("</tr>");
	}
%>
</table>
</body>
</html>