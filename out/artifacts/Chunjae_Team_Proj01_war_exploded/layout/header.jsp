<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%
    String path8 = request.getContextPath();
    String sid = (String) session.getAttribute("id");
%>
<div class="tnb_wrap">
    <nav class="tnb">
        <ul class="menu">
            <% if(sid != null && sid.equals("admin")) { %>
                <li><a href="<%=path8 %>/member/logout.jsp">로그아웃</a></li>
                <li><a href="<%=path8 %>/admin/adminPage.jsp">관리자페이지</a></li>
            <% } else if(sid!=null) { %>
                <li><a href="<%=path8 %>/member/logout.jsp">로그아웃</a></li>
                <li><a href=" ">마이페이지</a></li>
                <li><a href="map.jsp">오시는길</a></li>
            <% } else { %>
                <li><a href="<%=path8 %>/member/login.jsp">로그인</a></li>
                <li><a href="<%=path8 %>/member/term.jsp">회원가입</a></li>
                <li><a href="<%=path8 %>/map/map.jsp">오시는길</a></li>
            <% } %>
        </ul>
    </nav>
</div>
<div class="hd_wrap">
    <a href="/" class="logo">
        <img src="<%=path8%>/images/whale_460-164.png" alt="WHALE EDU 로고 타입">
    </a>
    <nav class="gnb">
        <ul class="menu">
            <li class="item1">
                <a href="" class="dp1"> 소 개 </a>
                <ul class="sub">
                    <li><a href="<%=path8 %>/intro/intro.jsp"> 회사 소개 </a></li>
                    <li><a href="<%=path8 %>/intro/serviceIntro.jsp"> 서비스 소개 </a></li>
                    <li><a href="<%=path8 %>/map/map.jsp"> 오시는 길 </a></li>
                </ul>
            </li>
            <li class="item2">
                <a href="" class="dp1"> 교육 목표 </a>
                <ul class="sub">
                    <li><a href="<%=path8%>/educational purpose/child.jsp"> 유아 </a></li>
                    <li><a href="<%=path8%>/educational purpose/elementary.jsp"> 초등 </a></li>
                    <li><a href="<%=path8%>/educational purpose/middlehigh.jsp"> 중고등 </a></li>
                </ul>
            </li>
            <li class="item3">
                <a href="" class="dp1"> 커뮤니티 </a>
                <ul class="sub">
                    <li><a href="<%=path8 %>/board/studentboard/StudentBoardList.jsp?page=1"> 학생 커뮤니티 </a></li>
                    <li><a href="<%=path8 %>/board/motherboard/MotherBoardList.jsp?page=1"> 학부모 커뮤니티 </a></li>
                </ul>
            </li>
            <li class="item4">
                <a href="" class="dp1"> 고객지원 </a>
                <ul class="sub">
                    <li><a href="<%=path8%>/cs/board/boardList.jsp?page=1"> 공지사항 </a></li>
                    <li><a href="<%=path8%>/cs/qna/qnaList.jsp?page=1"> QnA </a></li>
                    <li><a href="<%=path8%>/cs/faq/faqList.jsp"> FAQ </a></li>
                </ul>
            </li>
        </ul>

    </nav>
</div>