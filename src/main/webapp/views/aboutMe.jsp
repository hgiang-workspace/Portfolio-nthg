<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>About Me</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/components/style/about.css">
</head>
<body>
<jsp:include page="../components/includes/header.jsp"/>

<main class="about-container">
    <!-- Info -->
    <div class="info" style="margin-top: 100px">
        <img src="${pageContext.request.contextPath}/components/image/avatar.jpg" alt="Avatar" class="avatar">
        <div class="details">
            <h2>Thông tin cá nhân  <img src="${pageContext.request.contextPath}/components/image/aboutIcon2.png"></h2>
            <p><strong>Họ tên:</strong> Nguyễn Trần Hoàng Giang</p>
            <p><strong>Email:</strong>   ngiang2k5@gmail.com</p>
            <p><strong>Trường:</strong> Đại học Sư Phạm Kỹ Thuật TP.HCM</p>
            <p><strong>Ngành:</strong> Kỹ Thuật Dữ Liệu</p>
        </div>
    </div>

    <!-- Experiences -->
    <div class="experiences">
        <h2>💡 Kiến thức đã học</h2>
        <ul>
            <li>Lập trình Java, JSP/Servlet</li>
            <li>Spring Boot, Hibernate (ORM)</li>
            <li>SQL, PostgreSQL, MySQL</li>
            <li>Cấu hình hệ thống mạng (Cisco, VMware, FortiGate)</li>
            <li>Xử lý dữ liệu lớn: Hadoop, R, Machine Learning cơ bản</li>
        </ul>
        <img src="${pageContext.request.contextPath}/components/images/experience.jpg" alt="Experience">
    </div>

    <!-- Hobbies -->
    <div class="hobbies">
        <h2>🎯 Sở thích cá nhân</h2>
        <div class="hobby-cards">
            <div class="card">
                <img src="${pageContext.request.contextPath}/components/images/football.jpg" alt="Football">
                <p>Chơi bóng đá</p>
            </div>
            <div class="card">
                <img src="${pageContext.request.contextPath}/components/images/music.jpg" alt="Music">
                <p>Nghe nhạc</p>
            </div>
            <div class="card">
                <img src="${pageContext.request.contextPath}/components/images/travel.jpg" alt="Travel">
                <p>Đi du lịch</p>
            </div>
        </div>
    </div>

</main>

<jsp:include page="../components/includes/footer.jsp"/>
</body>
</html>
