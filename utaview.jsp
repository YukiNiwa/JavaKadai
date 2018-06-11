<%@ page import="java.util.ArrayList" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
                          "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">

	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=Shift_JIS" charset="UTF-8" />
		<title>Set List</title>
		<link rel="stylesheet" href="css/import.css" type="text/css" media="screen,print" />
	</head>

	<% ArrayList<String[]> table = (ArrayList<String[]>)request.getAttribute("table"); %>

	<body>
	<table>
			<tr>
				<td>
					<form>
						日付 <input type="text" name="name" />
						<input type="submit" value="検索" />
					</form>
				</td>
			</tr>
		</table>

		<br />



		<table border="1">
		<tr>
		<th>日付</th><th>名前</th><th>得点</th><th>歌手</th><th>曲</th>
		</tr>
			<% for(String[] record : table){ %>
				<tr>
					<% for(String data : record) { %>
						<td><%= data %></td>
					<% } %>
				</tr>
			<% } %>
		</table>
        <a href="http://localhost:8080/kadai/top1">Topへ</a><br>

	</body>
</html>
