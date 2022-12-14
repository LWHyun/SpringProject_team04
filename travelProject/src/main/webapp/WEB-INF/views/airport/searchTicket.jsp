<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script> 

<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.search_field{
	border:1px;
	background: #EAEAEA;
	width: 1200px;
	height: 220px;
	margin: 0 auto;
}

.trip {
	width : 80px;
	display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    align-content: center;
    justify-content: space-between;
    align-items: center;
    margin: 0 0 15px 30px;
}

.round_trip {
	display: inline-block;
	width: 40px;
	height: 20px;
	text-align: center;
	font-size: 18px;
}
.round_trip:hover{
	text-decoration: underline;
    color:blue;
    cursor: pointer;
}
.oneway {
	
	display: inline-block;
	width: 40px;
	height: 20px;
	text-align: center;
	font-size: 18px;
	margin-left: 5px;
}
.oneway:hover{
	text-decoration: underline;
    color:blue;
    cursor: pointer;
}

.start_end {
	
	width : 1140px;
	height: 62px;
	display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    align-content: center;
    justify-content: space-between;
    align-items: center;
    margin: 0 0 15px 30px;
}

.starting {
	width:370px;
	height: 60px;
}

.ending {
	margin-right:255px;
	width:370px;
	height: 60px;
}

.date{
	width : 1140px;
	height: 62px;
	display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    align-content: center;
    justify-content: space-between;
    align-items: center;
    margin-left: 30px;
}

.dates_start_check{
	display:inline-block;
	width: 161px;
	height: 62px;
	text-align: center;
}
.dates_start_end {
	display:inline-block;
	width: 161px;
	height: 62px;
	text-align: center;
	margin-right: 40px;
}
.ppl_check {
	display:inline-block;
	width: 410px;
	height: 62px;
	text-align: center;
	margin-left: 50px;
	background: white;
	border: 1px solid black;
}

.dates_start_oneway{
	display:inline-block;
	width: 370px;
	height: 62px;
	text-align: center;
	margin-right: 40px;
}



.air_search{
	display:inline-block;
	width: 161px;
	height: 62px;
	text-align: center;
	color:white;
    background-color: #1E9EED;
    border: 1px solid #1E9EED;
    padding: 0.5rem;
    line-height: 1rem;
    border-radius: 0.5rem;
    font-size: 18px;
    font-weight: bold;
}
.air_search:hover{
	cursor: pointer;
}

/*??????  */

	.entire {
		margin-top: 60px;
	}
	.modal_wrap {
        display: none;
        width: 500px;
        height: 450px;
        position: absolute;
        top: 135%;
        left: 25%;
        margin: -250px 0 0 -250px;
        background:#eee;
        z-index: 999;
    }
    .modal_wrap2{
        display: none;
        width: 500px;
        height: 450px;
        position: absolute;
        top: 135%;
        left: 60%;
        margin: -250px 0 0 -250px;
        background:#eee;
        z-index: 999;
    }
    
    .modal_wrap3{
        display: none;
        width: 500px;
        height: 550px;
        position: absolute;
        top: 145%;
        left: 60%;
        margin: -250px 0 0 -250px;
        background:#eee;
        z-index: 999;
    }
    .black_bg{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 30000px;
        background-color:rgba(0, 0,0, 0.2);
        top:0;
        left: 0;
        z-index: 1;
    }
    .black_bg2{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 30000px;
        background-color:rgba(0, 0,0, 0.2);
        top:0;
        left: 0;
        z-index: 1;
    }
    .black_bg3{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 30000px;
        background-color:rgba(0, 0,0, 0.2);
        top:0;
        left: 0;
        z-index: 1;
    }
    
    .select_area{
    	margin-left: 30px;
    }
    
    .modal_close{
        width: 26px;
        height: 26px;
        position: absolute;
        top: -30px;
        right: 0;
    }
    .modal_close2{
        width: 26px;
        height: 26px;
        position: absolute;
        top: -30px;
        right: 0;
    }
    
    .modal_close3 {
        width: 26px;
        height: 26px;
        position: absolute;
        top: -30px;
        right: 0;
    }
    
    .modal_close> span{
        display: block;
        width: 100%;
        height: 100%;
        background:url(https://img.icons8.com/metro/26/000000/close-window.png);
        text-indent: -9999px;
    }
    
    .modal_close2> span{
        display: block;
        width: 100%;
        height: 100%;
        background:url(https://img.icons8.com/metro/26/000000/close-window.png);
        text-indent: -9999px;
    }
    
    .modal_close3> span{
        display: block;
        width: 100%;
        height: 100%;
        background:url(https://img.icons8.com/metro/26/000000/close-window.png);
        text-indent: -9999px;
    }
    .modal_close_country{
    	border: 1px solid black;
    	width : 400px;
		display: flex;
	    flex-direction: row;
	    flex-wrap: nowrap;
	    align-content: center;
	    justify-content: space-between;
	    align-items: center;
	    margin-left: 30px;
	    margin-top: 10px;
    }
    .modal_close_country_1{
    	border-right: 1px solid black;
    }
    
    .modal_close_country_1 > ul > li  {
    	/* border: 1px solid gray; */
    	border-collapse:collapse;
     	width:200px;
     	height: 60px;
     	list-style: none;
     	display:inline-block;
     	margin-left: 10px;
     	
  
    }
    ul {
    	padding-left: 0px;
    	list-style: none;
    }
    
    .modal_close_country_2{
    	width:200px;
    }
    .modal_close_country_2 > ul > li {
    	border-collapse:collapse;
    	display:inline-block;
     	width:200px;
     	height: 53px;
     	list-style: none;
     	text-align: center;
     	margin-right: 10px;
     	
    }
    
     #a {
    	cursor: pointer;
		
    }
    
     #a:hover {
    	color:red;
    }
    
    
/* ?????? ?????? ?????? ?????? */
.member_count {
    min-height: 50px;
}

.member_count_entire {
	margin-top: 40px;
	margin-left: 20px;
}

.ppl_select{
	margin-left: 7px;
	font-size: 20px;
	
}

.seat_select{
	margin-left: 7px;
	font-size: 20px;
}
.member_count ul {
    margin: 0;
}
.member_count ul li {
    height: 39px;
}
.member_count li:not(:first-child) {
    margin-top: 30px;
}
p {
    line-height: 1.5;
}
.member_count .tit {
    float: left;
    width: 55%;
    margin: 0;
    color: #111;
    margin-top: 10px;
}
.member_count p.tit {
    text-align: left;
    font-size: 14px;
    color: #333;
}
span.txt {
    position: relative;
}
.member_count .tit .txt {
    margin: 0;
    font-size: 13px;
    line-height: 1;
    top: -3px;
}
.member_count p.tit .txt {
    text-align: left;
    font-size: 13px;
    color: #888;
    top: 0;
    left: 10px;
}
.member_count .price {
    display: block;
    font-size: 17px;
    font-weight: 600;
    line-height: 1;
}

/* ?????? */
button {
    background-color: #fff;
}
.num_count_group {
    display: inline-block;
    width: 114px;
    height: 38px;
    border: 1px solid #c3c3c3;
    border-radius: 2px;
    margin-top: 10px;
}
.num_count_group button:after {
    width: 26px;
    height: 27px;
}
.num_count_group .btn_decrement:after {
    display: inline-block;
    content: '';
    background-image: url(icon_minus.png);
    background-repeat: no-repeat;
    background-position: 0px 0px;
}
.num_count_group .btn_increment:after {
    display: inline-block;
    content: '';
    background-image: url(icon_plus.png);
    background-repeat: no-repeat;
    background-position: 0px 0px;
}

/* ?????? ?????? */
.num_count_group button {
    float: left;
    width: 35px;
    height: 36px;
    padding: 5px 5px 4px;
}
.num_count_group .btn_decrement {
    border: none;
    border-right: 1px solid #ddd;
}
.num_count_group .btn_decrement:hover {
    cursor: pointer;
}

/* ?????? ????????? */
.num_count_group .inpt_counter {
    float: left;
    display: block;
    font-size: 15px;
    color: #111;
    width: 33px;
    height: 36px;
    line-height: 34px;
    text-align: center;
    margin: 0 4px;
}

/* ??? ?????? */
.num_count_group .btn_increment {
    float: right !important;
    border: none;
    border-left: 1px solid #ddd;
}
.num_count_group .btn_increment:hover {
    cursor: pointer;
}


/* member_count float ???????????? */
.member_count:after {
    display: block;
    clear: both;
    content: '';
}


.select_complete{
	border: 1px solid #5E2BB8;
	background: #5E2BB8;
	width: 130px;
	height: 36px;
	color: white;
	text-align: center;
	line-height: center;
	margin-left: 300px;
	font-size: 20px;
}
.select_complete_text:hover {
	cursor: pointer;
	color:red;
}
   
   
</style>
</head>
<body>
<!--?????? ??????  -->
<div id="banner">
		<jsp:include page="./banner.jsp"></jsp:include>
	</div><!-- banner -->
<!--?????? ????????????  -->
<div class="search_field">
	<div class="trip">
		<div class="round_trip">
		     ??????
		</div>
		<div class="oneway">
		     ??????
		</div>
	</div>	
		<div class="start_end">
				<!--?????? ????????????  -->
				 <input type="text" id="modal_btn" class="starting" data-toggle="modal" data-target="#exampleModalCenter" placeholder="??????">
				 <input type="hidden" value="" class="starting_hidden">	
					<div class="black_bg"></div>
						<div class="modal_wrap">
						    <div class="modal_close"><span>close</span></div>
						    <div class="entire">
							    <span class="select_area">????????? ??????????????????.</span>
							    <div class="modal_close_country">
							    	<div class="modal_close_country_1">
								        <ul>
								        	<li id="korea"><span id="a">??????</span></li>
								        	<li id="thailand"><span id="a">??????</span></li>
								        	<li id="japan"><span id="a">??????</span></li>
								        	<li id="china"><span id="a">??????</span></li>
								        </ul>
								    </div>
								    <div class="modal_close_country_2">
								        <ul>
								        	<%-- <c:forEach var="city" items="${city}"> DB??? ?????? ????????? ???????????? ????????????--%>
								        	<li id="jeju" value="??????"><span id="a">??????</span></li>
								        	<li id="busan" value="??????"><span id="a">??????</span></li>
								        	<li id="yeosu" value="??????"><span id="a">??????</span></li>
								        	<li id="incheon" value="??????"><span id="a">??????</span></li>
								        	<%-- </c:forEach> --%>
								        </ul>
								    </div>     
							        
							    </div> <!-- modal_close_country_1 -->
							</div>
			    		</div>    <!--?????????  --> 
			
				<div>
					<img class="change" src="airport/img/change.png" width="15px" height="15px">
				</div>
			<div>
				<!-- <input type="text" class="ending" placeholder="?????????"> -->
				<input type="text" id="modal_btn2" class="ending" data-toggle="modal" data-target="#exampleModalCenter" placeholder="?????????">
				 <input type="hidden" value="" class="ending_hidden">	
					<div class="black_bg2"></div>
						<div class="modal_wrap2">
						    <div class="modal_close2"><span>close</span></div>
						    <div class="entire">
							    <span class="select_area">????????? ??????????????????.</span>
							    <div class="modal_close_country">
							    	<div class="modal_close_country_1">
								        <ul>
								        	<li id="korea"><span id="a">??????</span></li>
								        	<li id="thailand"><span id="a">??????</span></li>
								        	<li id="japan"><span id="a">??????</span></li>
								        	<li id="china"><span id="a">??????</span></li>
								        </ul>
								    </div>
								    <div class="modal_close_country_2">
								        <ul>
								        	<%-- <c:forEach var="city" items="${city}"> DB??? ?????? ????????? ???????????? ????????????--%>
								        	<li id="jeju2" value="??????"><span id="a">??????</span></li>
								        	<li id="busan2" value="??????"><span id="a">??????</span></li>
								        	<li id="yeosu2" value="??????"><span id="a">??????</span></li>
								        	<li id="incheon2" value="??????"><span id="a">??????</span></li>
								        	<%-- </c:forEach> --%>
								        </ul>
								    </div>     
							        
							    </div> <!-- modal_close_country_1 -->
							</div>
			    		</div>    <!--?????????  --> 
			</div>
		</div>
		<div class="date">
			<div class="date_start">
				<input type="date" name="dates_start_check" value="" id="dates_start_check" class="dates_start_check">
			</div>
			<div class="date_end">
				<input type="date" name="dates_start_end" value=""  id="dates_start_end" class="dates_start_end">
			</div>
			<div class="date_oneway">
				<input type="date" name="dates_start_oneway" value=""  id="dates_start_oneway" class="dates_start_oneway">
			</div>
			<div class="ppl">
				<button type="button" id="modal_btn3" class="ppl_check" data-toggle="modal" data-target="#exampleModalCenter"><span class="ppl_check_text">?????? 1??? / ?????????</span></button>
				<div class="black_bg3"></div>
				<div class="member_count modal_wrap3">
					<div class="modal_close3"><span>close</span></div>
					<div class="member_count_entire">
					<span class="ppl_select">??????</span><hr width="460px">
						<ul>
							<li>
								<p class="tit">
                                            <span class="txt">??????</span><br>
                                        </p>
                                        <span class="num_count_group">
                                            <button class="btn_decrement down"><img src="airport/img/minus.png"></button>
                                            <span class="inpt_counter adultCnt"></span>
                                            <button class="btn_increment up"><img src="airport/img/plus.png"></button>
                                        </span>
							</li>
							<!--  ??????
								<li>
                                     <p class="tit">
                                            <span class="txt">??????</span>
                                     </p>
                                        <span class="num_count_group">
                                            <button class="btn_decrement down"><img src="../upload/minus.png"></button>
                                            <span class="inpt_counter childCnt"></span>
                                            <button class="btn_increment up"><img src="../upload/plus.png"></button>
                                       </span>
                             </li> -->
						</ul>
						<br><br>
						<p class="seat_select">????????????</p><hr width="460px">
						<label><input type="radio" value="?????????" name="radio_seat" class="radio_seat">  ?????????</label><p>
						<label><input type="radio" value="???????????????" name="radio_seat" class="radio_seat">  ???????????????</label><p>
						<label><input type="radio" value="?????????" name="radio_seat" class="radio_seat">  ?????????</label>
						<input type="hidden" value="">
						<p><img src="airport/img/caution.png" width="20px" height="15px">  ?????? ?????? ?????? ????????? 9????????????.</p>
						<div class="select_complete"><span class="select_complete_text">????????????</span></div>
					</div>	
				</div>
				
			</div>
			<div class="search">
				<input type="text" class="air_search" value="????????? ??????">
			</div>
		</div>
</div>



<!-- ???????????? -->
<!-- ????????? ????????? Start -->
        <div class="favourite-place place-padding">
            <div class="container">
                <!-- Section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle text-center">
                            <span>FEATURED TOURS Packages</span>
                            <h2>Weekly Best</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5???</span> </span>
                                    <h6><a href="#">????????? 3??? (?????????/?????????/????????????) 8~12??? #???????????????</a></h6>
                                    <h6>?????????, ?????????, ???????????? ????????????</h6>
                                    <p class="dolor">18700???</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>?????????, ?????????</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5???</span> </span>
                                    <h6><a href="#">????????? 3??? (?????????/?????????/????????????) 8~12??? #???????????????</a></h6>
                                    <h6>?????????, ?????????, ???????????? ????????????</h6>
                                    <p class="dolor">18700???</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>?????????, ?????????</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5???</span> </span>
                                    <h6><a href="#">????????? 3??? (?????????/?????????/????????????) 8~12??? #???????????????</a></h6>
                                    <h6>?????????, ?????????, ???????????? ????????????</h6>
                                    <p class="dolor">18700???</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>?????????, ?????????</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5???</span> </span>
                                    <h6><a href="#">????????? 3??? (?????????/?????????/????????????) 8~12??? #???????????????</a></h6>
                                    <h6>?????????, ?????????, ???????????? ????????????</h6>
                                    <p class="dolor">18700???</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>?????????, ?????????</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5???</span> </span>
                                    <h6><a href="#">????????? 3??? (?????????/?????????/????????????) 8~12??? #???????????????</a></h6>
                                    <h6>?????????, ?????????, ???????????? ????????????</h6>
                                    <p class="dolor">18700???</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>?????????, ?????????</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5???</span> </span>
                                    <h6><a href="#">????????? 3??? (?????????/?????????/????????????) 8~12??? #???????????????</a></h6>
                                    <h6>?????????, ?????????, ???????????? ????????????</h6>
                                    <p class="dolor">18700???</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>?????????, ?????????</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ????????? ????????? End  -->
        
        <!-- ?????? ?????? Start -->
        <div class="favourite-place place-padding">
            <div class="container">
                <!-- Section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle text-center">
                            <span>FEATURED TOURS Packages</span>
                            <h2>Weekly Best</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5???</span> </span>
                                    <h6><a href="#">????????? 3??? (?????????/?????????/????????????) 8~12??? #???????????????</a></h6>
                                    <h6>?????????, ?????????, ???????????? ????????????</h6>
                                    <p class="dolor">18700???</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>?????????, ?????????</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5???</span> </span>
                                    <h6><a href="#">????????? 3??? (?????????/?????????/????????????) 8~12??? #???????????????</a></h6>
                                    <h6>?????????, ?????????, ???????????? ????????????</h6>
                                    <p class="dolor">18700???</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>?????????, ?????????</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5???</span> </span>
                                    <h6><a href="#">????????? 3??? (?????????/?????????/????????????) 8~12??? #???????????????</a></h6>
                                    <h6>?????????, ?????????, ???????????? ????????????</h6>
                                    <p class="dolor">18700???</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>?????????, ?????????</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5???</span> </span>
                                    <h6><a href="#">????????? 3??? (?????????/?????????/????????????) 8~12??? #???????????????</a></h6>
                                    <h6>?????????, ?????????, ???????????? ????????????</h6>
                                    <p class="dolor">18700???</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>?????????, ?????????</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5???</span> </span>
                                    <h6><a href="#">????????? 3??? (?????????/?????????/????????????) 8~12??? #???????????????</a></h6>
                                    <h6>?????????, ?????????, ???????????? ????????????</h6>
                                    <p class="dolor">18700???</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>?????????, ?????????</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5???</span> </span>
                                    <h6><a href="#">????????? 3??? (?????????/?????????/????????????) 8~12??? #???????????????</a></h6>
                                    <h6>?????????, ?????????, ???????????? ????????????</h6>
                                    <p class="dolor">18700???</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>?????????, ?????????</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <!-- ?????? ?????? End -->


<script type="text/javascript">
	
////////////////////////???????????? ?????? ???????????? ????????? ????????? ????????????///////////////////////
	function onClick() {
	    document.querySelector('.modal_wrap').style.display ='block';
	    document.querySelector('.black_bg').style.display ='block';
	    
	}
	function onClick2() {
	    document.querySelector('.modal_wrap2').style.display ='block';
	    document.querySelector('.black_bg2').style.display ='block';
	    
	}
	
	
	function offClick() {
	    document.querySelector('.modal_wrap').style.display ='none';
	    document.querySelector('.black_bg').style.display ='none';
	    
	}
	
	function offClick2() {
	    document.querySelector('.modal_wrap2').style.display ='none';
	    document.querySelector('.black_bg2').style.display ='none';
	    
	}
	
	document.getElementById('modal_btn').addEventListener('click', onClick);
	document.getElementById('modal_btn2').addEventListener('click', onClick2);
	document.querySelector('.modal_close').addEventListener('click', offClick);
	document.querySelector('.modal_close2').addEventListener('click', offClick2);
	//////////////////////////////////////////////////////////////////////////
	
//////////////////////////????????? ????????? ????????????????????? ??????////////////////////
	$(function(){

		  $("#jeju").click(function(){
		    	$(".starting").val("??????");
		    });
		  $("#busan").click(function(){
		    	$(".starting").val("??????");
		    });
		  $("#yeosu").click(function(){
		    	$(".starting").val("??????");
		    });
		  $("#incheon").click(function(){
		    	$(".starting").val("??????");
		    });
		  
	});
//////////////////////////////////////////////////////////////////////////

//////////////////////////????????? ????????? ????????????????????? ??????////////////////////	
	$(function(){

		  $("#jeju2").click(function(){
		    	$(".ending").val("??????");
		    });
		  $("#busan2").click(function(){
		    	$(".ending").val("??????");
		    });
		  $("#yeosu2").click(function(){
		    	$(".ending").val("??????");
		    });
		  $("#incheon2").click(function(){
		    	$(".ending").val("??????");
		    });
		  
	});
//////////////////////////////////////////////////////////////////////////	

///////////????????? ??????????????? ???????????? ????????? ?????? ????????? ??????(hidden????????? ??????????????????????????? ????????????)////////////
	$(function(){
		$('.change').click(function(){
			var starting = $(".starting").val();
			var ending = $(".ending").val();
			var starting_hidden = $(".starting_hidden").val();
			var ending_hidden = $(".ending_hidden").val();
			
			
			$(".starting").val(ending);
			$(".starting_hidden").val(ending_hidden);
			$(".ending").val(starting);
			$(".ending_hidden").val(starting);
			
		});
	});
///////////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////???????????? ???????????? ??????/////////////////////////////////
	function pplOnClick() {
	    document.querySelector('.modal_wrap3').style.display ='block';
	    document.querySelector('.black_bg3').style.display ='block';
	    
	}
	
	function pplOffClick() {
	    document.querySelector('.modal_wrap3').style.display ='none';
	    document.querySelector('.black_bg3').style.display ='none';
	    
	}
	
	document.getElementById('modal_btn3').addEventListener('click', pplOnClick);
	document.querySelector('.modal_close3').addEventListener('click', pplOffClick);
///////////////////////////////////////////////////////////////////////////////

////////////////////////????????? ?????? ??????///////////////////////////////////////
$(function() {
            // ?????? ??? ?????? ?????? ??? ??? ?????? ????????? ?????? script ??????
            let adultCnt = $('.adultCnt');
            let childCnt = $('.childCnt');

                // ??? ?????? / ?????? ??????
            let up = $('.up');
            let down = $('.down');

                // ?????? ?????? / ?????? ?????? (???????????? ???????????? ??? - ?????? ????????????)
            let adultPrice;
            let childPrice;
                // ??? ?????? 
            let totalPay = $('.con');

                // ?????? ??? ?????? ??????
            adultCnt.text("1");
            childCnt.text("0");

                // ??? ?????? ?????? ?????? (???????????? ???????????? ??? - ?????? ????????????)
            //totalPay.html('789,000<em>???</em>');

            up.on('click', function() {
                // ?????? ?????? ?????? (up / down)
                let isUp = $(this).hasClass('up');

                // ?????? ?????? ?????? ?????? ???
                let cnt = Number($(this).siblings('span').text());
                console.log(cnt);

                // ?????? ?????? ?????? ?????? ?????? ??? (????????? ?????? ?????? ????????? ?????? ??????)
                let totalCnt = Number(adultCnt.text()) + Number(childCnt.text());

                // ?????? ?????? ??? ?????? / ?????? ??????
                let isAdult = $(this).siblings('span').hasClass('adultCnt');
                console.log(isAdult);

                // ?????? / ?????? , up / down ??????
                if(isAdult && !isUp) {
                    console.log('?????? down');
                } else if(isAdult && isUp) {
                    console.log('?????? up');
                    // ?????? ?????? ?????? ??????.. (????????? ????????? ????????????)
                    if(totalCnt >= 9) {
                        return;
                    } else {
                        cnt += 1;
                        adultCnt.text(cnt);
                    }
                } else if(!isAdult && !isUp) {
                    console.log("?????? down");
                } else if(!isAdult && isUp){
                    console.log('?????? up');
                    // ?????? ?????? ?????? ??????.. (????????? ????????? ????????????)
                    if(totalCnt >= 9) {
                        return;
                    } else {
                        cnt += 1;
                        childCnt.text(cnt);
                    }
                }
            });

            down.on('click', function() {
                // ?????? ?????? ?????? (up / down)
                let isUp = $(this).hasClass('up');

                // ?????? ?????? ?????? ?????? ???
                let cnt = $(this).siblings('span').text();
                console.log(cnt);

                // ?????? ?????? ??? ?????? / ?????? ??????
                let isAdult = $(this).siblings('span').hasClass('adultCnt');
                console.log(isAdult);

                // ?????? / ?????? , up / down ??????
                if(isAdult && !isUp) {
                    console.log('?????? down');
                    if(cnt <= 1) {
                        return;
                    }
                    else {
                        cnt -= 1;
                        adultCnt.text(cnt);
                    }
                } else if(isAdult && isUp) {
                    console.log('?????? up');
                } else if(!isAdult && !isUp) {
                    console.log("?????? down");
                    if(cnt <= 0) {
                        return;
                    }
                    else {
                        cnt -= 1;
                        childCnt.text(cnt);
                    }
                } else if(!isAdult && isUp){
                    console.log('?????? up');
                }
            });
        });
///////////////////////////////////////////////////////////////////////////////////

/////////////////////////////????????? ?????? ????????? ?????? ?????????????????? ??????///////////////////////////////
$(function(){
	 $(".select_complete").click(function(){
	    	var count = $(".inpt_counter").text();
	    	var seat = $(".radio_seat:checked").val();
	    	
	    	$(".ppl_check_text").text("");
	    	$(".ppl_check_text").text("??????"+ count+"??? / "+seat);
	    	
	    });
});
//////////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////?????? /////////////////////////////
$('.air_search').click(function(){

  var dateFrom = document.getElementById('dates_start_check');	//?????????
  var dateTo = document.getElementById('dates_start_end');	//?????????
  var today = new Date();				//?????? ??????

  dateFrom = new Date(dateFrom.value);
  var fromYear = dateFrom.getFullYear();
  var fromMonth = dateFrom.getMonth() + 1;
  var fromDay = dateFrom.getDate();

  //?????? ????????? ?????? ????????? ??? NaN??? ???????????? 0?????? ??????
  if (isNaN(fromYear) || isNaN(fromMonth) || isNaN(fromDay)){
    fromYear  = 0;
    fromMonth = 0;
    fromDay   = 0;
  }

	dateFrom = fromYear +'/'+ fromMonth +'/'+fromDay; 

  dateTo = new Date(dateTo.value);
  var toYear  = dateTo.getFullYear();
  var toMonth = dateTo.getMonth() + 1;
  var toDay   = dateTo.getDate();

  //?????? ????????? ?????? ????????? ??? NaN??? ???????????? 0?????? ??????
  if (isNaN(toYear) || isNaN(toMonth) || isNaN(toDay)){
  toYear  = 0;
  toMonth = 0;
  toDay   = 0;
  }

    dateTo = toYear +'/'+ toMonth +'/'+toDay;

  //???????????? ?????? ???????????? ??????
  var todayYear  = today.getFullYear(); 	//2020
  var todayMonth = today.getMonth() + 1;    	//06
  var todayDay   = today.getDate();  		//11
  today = todayYear +'/'+ todayMonth +'/'+todayDay;  // 2020/06/11 (?????? ????????? ?????? ??????)

  //?????? ?????? ???, ???????????? ?????? ??????????????? ??????, ???????????? ?????????????????? ???????????? ????????? ????????? ?????????
  if(dateFrom >= today && dateTo >= dateFrom){
  	return true;
  } else {
 	 alert("????????? ????????? ???????????????.");
  }
});//click() end

////////////////////////////////?????????????????? ??????????????? ????????????////////////////////////////
$(function(){
	$('.date_oneway').hide();
	
	$('.oneway').click(function(){
		$('.date_start, .date_end').hide();
		$('.date_oneway').show();
	});
	
	$('.round_trip').click(function(){
		$('.date_start, .date_end').show();
		$('.date_oneway').hide();
	});
});



</script>
</body>
</html>