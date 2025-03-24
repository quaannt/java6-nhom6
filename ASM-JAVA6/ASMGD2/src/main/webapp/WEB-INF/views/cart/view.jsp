<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%
    Map<Integer, Integer> cart = (Map<Integer, Integer>) session.getAttribute("cart");
%>
<h2>Giỏ hàng của bạn</h2>

<%
    if (cart == null || cart.isEmpty()) {
%>
<p>Giỏ hàng trống!</p>
<%
    } else {
%>
<table border="1">
    <thead>
        <tr>
            <th>Mã sản phẩm</th>
            <th>Số lượng</th>
        </tr>
    </thead>
    <tbody>
        <%
            for (Map.Entry<Integer, Integer> entry : cart.entrySet()) {
        %>
        <tr>
            <td><%= entry.getKey() %></td>
            <td><%= entry.getValue() %></td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>
<%
    }
%>

<a href="/">Quay lại trang chủ</a>
