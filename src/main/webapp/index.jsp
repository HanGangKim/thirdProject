<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
#modal_btn {
    width: 500px;
    height: 100px;
}

.modal_wrap {
    display: none;
    width: 500px;
    height: 500px;
    position: absolute;
    border: 2px solid black;
    top:50%;
    left: 50%;
    margin: -250px 0 0 -250px;
    background:#eee;
    z-index: 2;
}
.modal_background {
    display: none;
    position: absolute;
    width: 100%;
    height: 100%;
    background-color:rgba(0, 0,0, 0.5);
    top:0;
    left: 0;
    z-index: 1;
}
.modal_close {
    width: 26px;
    height: 26px;
    position: absolute;
    top: 10px;
    right: 10px;
}

.modal_wrap .text {
    margin-top: 45px;
    margin-left: 5px;
}

.modal_close .closeImg {
    display: block;
    width: 100%;
    height: 100%;
}

</style>


</head>
<body>
<a href="MyCalendar.jsp">달력보기</a>
<hr>
<button type='button' id="modal_btn">모달창 키기</button>
<button type='button' id="modal_btn">유나 테스트 버튼</button>
<button type='button' id="modal_btn">한수 테스트 버튼</button>
<div class="modal_background"></div>
<div class="modal_wrap">
    <div class="modal_close">X</div>
    <div class="text">
        스틱코드에서 개발에 필요한 모든 코드를 쉽게 사용하세요.
        https://stickode.com/mainlogin.html
    </div>
</div>
</body>

<script type="text/javascript">
//모달 열기
function modalOpen() {
    document.querySelector('.modal_wrap').style.display = 'block';
    document.querySelector('.modal_background').style.display = 'block';
}

// 모달 끄기
function modalClose() {
    document.querySelector('.modal_wrap').style.display = 'none';
    document.querySelector('.modal_background').style.display = 'none';
}


//버튼 클릭리스너 달기
document.querySelector('#modal_btn').addEventListener('click', modalOpen);
document.querySelector('.modal_close').addEventListener('click', modalClose);


</script>

</html>

