<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p id = "exhibition_name">2022 퓰리처상 사진전</p>
<p id="adress">부산문화회관 전시실</p>
<div id="googleMap" style="width: 400px;height: 400px;"></div>
</body>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8uz4_YNEc-obhIbo9BaHUxktKYQcXqxM&callback=myMap"></script>
<script type="text/javascript">

// 전시회명
var exhibition_name = document.querySelector("#exhibition_name").innerText
// 주소
var adress = document.querySelector("#adress").innerText

    function initialize() {
        var mapOptions = {
                            zoom: 17, // 지도를 띄웠을 때의 줌 크기
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                        };
         
         
        var map = new google.maps.Map(document.getElementById("googleMap"), mapOptions);
         
        var size_x = 40; // 마커로 사용할 이미지의 가로 크기
        var size_y = 40; // 마커로 사용할 이미지의 세로 크기
     
        // 마커로 사용할 이미지 주소
        var image = new google.maps.MarkerImage( adress,
                                                    new google.maps.Size(size_x, size_y),
                                                    '',
                                                    '',
                                                    new google.maps.Size(size_x, size_y));
         
        // Geocoding *****************************************************
        var marker = null;
        var geocoder = new google.maps.Geocoder();
        geocoder.geocode( { 'address': adress}, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                map.setCenter(results[0].geometry.location);
                marker = new google.maps.Marker({
                                map: map,
                                icon: image, // 마커로 사용할 이미지(변수)
                                title: exhibition_name, // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
                                position: results[0].geometry.location
                            });
 
                var content = exhibition_name+"<br/><br/>장소: "+adress; // 말풍선 안에 들어갈 내용
             
                // 마커를 클릭하면 표시되는 내용
                var infowindow = new google.maps.InfoWindow({ content: content});
                google.maps.event.addListener(marker, "click", function() {infowindow.open(map,marker);});
            } else {
            	// 주소를 못찾을 경우 alert 창 + 지도가 표시되지 않음
                alert("Geocode was not successful for the following reason: " + status);
            }
        });     
    }
    google.maps.event.addDomListener(window, 'load', initialize);
</script>
</html>