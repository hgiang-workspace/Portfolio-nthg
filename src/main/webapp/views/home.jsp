<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<body>
<link rel="stylesheet" type ="text/css" href="${pageContext.request.contextPath}/components/style/main.css">
<jsp:include page="../components/includes/header.jsp"/>
<div class="banner-section">
    <img src="${pageContext.request.contextPath}/components/image/homeBanner3.jpg" alt="Banner" style="margin-top: 90px">
</div>

<div class="intro-section">
    <div class="intro-text">
        <h2>Xin chào, mình là Nguyễn Trần Hoàng Giang</h2>
        <p>Sinh viên CNTT, yêu thích lập trình web và hệ thống mạng.
            Đây là portfolio nơi mình chia sẻ các bài tập và dự án đã thực hiện.</p>
    </div>
    <div class="intro-image">
        <img src="${pageContext.request.contextPath}/components/image/profile.jpg" alt="Profile Image">
    </div>
</div>
<div class="banner-section">
    <img src="${pageContext.request.contextPath}/components/image/homeBanner3.png" alt="Banner">
</div>

<div class="skills-section">
    <h2>Chuyên môn & Kiến thức</h2>
    <p>Mình tập trung phát triển kỹ năng trong các lĩnh vực sau:</p>
    <div class="skills-grid">
        <div class="skill-card">
            <h3>Lập trình Java & Web</h3>
            <p>Kinh nghiệm với Java, JSP/Servlet, Maven và xây dựng ứng dụng web động.</p>
        </div>
        <div class="skill-card">
            <h3>Hệ thống mạng</h3>
            <p>Thực hành cấu hình mạng bằng Cisco Packet Tracer, ba tầng mạng, VLAN, Firewall.</p>
        </div>
        <div class="skill-card">
            <h3>Phân tích dữ liệu</h3>
            <p>Khai thác dữ liệu bằng R, xây dựng mô hình dự đoán, trực quan hóa dữ liệu.</p>
        </div>
        <div class="skill-card">
            <h3>Bảo mật & Cloud</h3>
            <p>Kiến thức về firewall (FortiGate), private/public cloud, SLA và triển khai ứng dụng an toàn.</p>
        </div>
    </div>
</div>

<div class="banner-section">
    <img src="${pageContext.request.contextPath}/components/image/homeBanner4.jpg" alt="Banner">
</div>

<div class="languages-section">
    <h2>Ngôn ngữ lập trình mình biết</h2>
    <p>Mình đã học và làm việc với một số ngôn ngữ phổ biến dưới đây:</p>

    <div class="languages-grid">
        <div class="language-card">
            <img src="${pageContext.request.contextPath}/components/image/java.png" alt="Java Logo">
            <h3>Java</h3>
            <p>Lập trình hướng đối tượng, phát triển ứng dụng web với JSP/Servlet, Spring.</p>
        </div>
        <div class="language-card">
            <img src="${pageContext.request.contextPath}/components/image/python.png" alt="Python Logo">
            <h3>Python</h3>
            <p>Phân tích dữ liệu, trực quan hóa và xây dựng mô hình học máy.</p>
        </div>
        <div class="language-card">
            <img src="${pageContext.request.contextPath}/components/image/cSharp.png" alt="C# Logo">
            <h3>C#</h3>
            <p>Cơ bản về cấu trúc dữ liệu & giải thuật, phát triển ứng dụng nhỏ.</p>
        </div>
        <div class="language-card">
            <img src="${pageContext.request.contextPath}/components/image/html-css-js.png" alt="HTML, CSS, JS Logo">
            <h3>HTLM, CSS, JavaScript</h3>
            <p>Thêm tính năng động cho website, thao tác DOM và kết nối API.</p>
        </div>
        <div class="language-card">
            <img src="${pageContext.request.contextPath}/components/image/sql.png" alt="SQL Logo">
            <h3>SQL</h3>
            <p>Làm việc với cơ sở dữ liệu SQL Server và PostgreSQL.</p>
        </div>
        <div class="language-card">
            <img src="${pageContext.request.contextPath}/components/image/R.png" alt="R Logo">
            <h3>R</h3>
            <p>Phân tích dữ liệu y tế, thống kê và xây dựng mô hình dự đoán.</p>
        </div>
    </div>
</div>

<div class="banner-section">
    <img src="${pageContext.request.contextPath}/components/image/homeBanner5.jpg" alt="Banner">
</div>

<div class="features-section">
    <h2>Tính năng của Website</h2>
    <p>Trang web portfolio này được xây dựng nhằm mục đích học tập và giới thiệu cá nhân.
        Các tính năng chính hiện tại bao gồm:</p>

    <div class="features-list">
        <div class="feature-item">
            <h3>Trang chủ</h3>
            <p>Giới thiệu ngắn gọn về bản thân và định hướng nghề nghiệp.</p>
        </div>
        <div class="feature-item">
            <h3>Homeworks</h3>
            <p>Tổng hợp các bài tập, đồ án và lab đã thực hiện trong suốt quá trình học tập.</p>
        </div>
        <div class="feature-item">
            <h3>Liên hệ</h3>
            <p>Cung cấp thông tin liên lạc (Facebook, Instagram, LinkedIn, SĐT) để kết nối dễ dàng.</p>
        </div>
    </div>
</div>

<div class="banner-section">
    <img src="${pageContext.request.contextPath}/components/image/homeBanner6.jpg" alt="Banner">
</div>

<jsp:include page="../components/includes/footer.jsp"/>
</body>
</html>
