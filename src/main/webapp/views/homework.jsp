<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Homeworks</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/components/style/homework.css">
</head>
<body>
<!-- Header -->
<jsp:include page="../components/includes/header.jsp" />

<main class="main-content">
    <h2 class="page-title"><img src="../components/image/homeworkIcon.png">Homeworks<img src="../components/image/homeworkIcon.png"></h2>

    <!-- Form thêm bài tập -->
    <section class="form-section">
        <form method="post" action="${pageContext.request.contextPath}/views/homework/create" class="homework-form">
            <input type="hidden" name="action" value="create" />
            <input type="text" name="title" placeholder="Tiêu đề bài tập" required />
            <input type="text" name="link" placeholder="Link (ví dụ: https://...)" required />
            <button type="submit">Thêm bài tập</button>
        </form>
    </section>

    <!-- Danh sách bài tập -->
    <section class="list-section">
        <h3>Danh sách bài tập</h3>
        <c:if test="${empty homeworks}">
            <p class="empty-text">Chưa có bài tập nào.</p>
        </c:if>
        <ul class="homework-list">
            <c:forEach var="hw" items="${homeworks}">
                <li>
                    <img src="../components/image/homeworkIcon3.png">
                    <strong><c:out value="${hw.title}" /></strong>
                    — <a href="${hw.link}" target="_blank"><c:out value="${hw.link}" /></a>
                    <span class="created-at">( <c:out value="${hw.createdAt}" /> )</span>

                    <!-- Nút xóa -->
                    <form method="post" action="${pageContext.request.contextPath}/views/homework/delete"
                          style="display:inline;">
                        <input type="hidden" name="action" value="delete" />
                        <input type="hidden" name="id" value="${hw.id}" />
                        <button type="submit" class="delete-btn">Xóa</button>
                    </form>
                </li>
            </c:forEach>
        </ul>

    </section>

</main>

<!-- Footer -->
<jsp:include page="../components/includes/footer.jsp" />
</body>
</html>
