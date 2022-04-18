<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- 카카오 api 키 : 700964fd212f7cae7bcd319a98f18d59 / 서버가 local host 8080 일때만 작동(중요)  -->
 <!-- 원하는 카카오맵 샘플 검색 : https://apis.map.kakao.com/web/sample/ -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>전시회 지도 api</title>
    
</head>
<body>
<h1>카카오맵 폐기예정</h1>
<!-- 주소 못찾을 경우 카카오 제보  -->
<!-- <p style="margin-top:-12px">
    <em class="link">
   <a href="javascript:void(0);" onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
            혹시 주소 결과가 잘못 나오는 경우에는 여기에 제보해주세요.
        </a>
    </em>
</p> -->

<p id = "adress_name">2022 퓰리처상 사진전</p>
<p id="adress">부산문화회관 전시실</p>
<div id="map" style="width:300px;height:350px;"></div>

<!-- 지도 api js 시작 -->
<!-- 지도 api JS 최상단에 위치할 것 (그렇지 않으면 안될 수 있음) -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=700964fd212f7cae7bcd319a98f18d59&libraries=services"></script>
<script>
// 주소명 , 전시회 장소의 Text를 변수로 지정
var adress_name = document.querySelector("#adress_name").innerText
var adress = document.querySelector("#adress").innerText

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.5666805, 126.9784147), // 지도의 중심좌표 (서울시청)
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch(adress, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+adress_name+'</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    
     }else{
    	 alert("위치를 찾을 수 없습니다!") 
    }
});    
</script>
<!-- 지도 api js 끝 -->
</body>
</html>