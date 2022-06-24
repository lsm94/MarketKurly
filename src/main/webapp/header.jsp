<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Content</title>


</head>
<body>
	<div id="wrap" class>
		<div id="container">
			<div id="header">
				<div id="userMenu">
					<ul class="list_menu">
						<li class="menu none_sub menu_join"><a href="index.jsp?folder=login&category=signUp"
							class="link_menu">회원가입</a></li>
						<li class="menu none_sub menu_login"><a href="#"
							class="link_menu">로그인</a> <!----></li>
						<!---->
						<li class="menu lst"><a href="#" class="link_menu">고객센터</a>
							<ul class="sub">
								<li><a href="#none">공지사항</a></li>
								<li><a href="#none">1:1 문의</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div id="headerLogo" class="layout-wrapper">
			<h1 class="logo">
				<a href="/" class="link_main"> <span id="gnbLogoContainer"></span>
					<img
					src="https://res.kurly.com/images/marketkurly/logo/logo_x2.png"
					alt="마켓컬리 로고">
				</a>
			</h1>
		</div>
		<div id="gnb">
			<div class="fixed_container">
				<h2 class="screen_out">메뉴</h2>
				<div id="gnbMenu" class="gnb_kurly">
					<div class="inner_gnbkurly">
						<div class="gnb_main">
							<ul class="gnb">
								<li class="menu1"><a href="#none"><span class="ico"></span><span
										class="txt">전체 카테고리</span></a></li>
								<li class="menu2"><a href="#" class="link new "><span
										class="txt">신상품</span></a></li>
								<li class="menu3"><a href="#" class="link best "><span
										class="txt">베스트</span></a></li>
								
							</ul>
							<div id="side_search" class="gnb_search">
								<form action="#" onsubmit="return searchTracking(this)">
									<input type="hidden" name="searched" value="Y"> <input
										type="hidden" name="log" value="1"> <input
										type="hidden" name="skey" value="all"> <input
										type="hidden" name="hid_pr_text" value=""> <input
										type="hidden" name="hid_link_url" value=""> <input
										type="hidden" id="edit" name="edit" value=""> <input
										name="sword" type="text" value="" required="required"
										label="검색어" placeholder="검색어를 입력해주세요." autocomplete="off"
										class="inp_search"> <input type="image"
										src="https://res.kurly.com/pc/service/common/1908/ico_search_x2.png"
										class="btn_search">
									<div class="init">
										<button type="button" id="searchInit" class="btn_delete">검색어
											삭제하기</button>
									</div>
								</form>
							</div>
							<div class="cart_count">
								<div class="inner_cartcount">
									<a href="#" class="btn_cart"><span class="screen_out">장바구니</span>
										<span id="cart_item_count" class="num realtime_cartcount"
										style="display: none;"></span></a>
								</div>
								<div id="addMsgCart" class="msg_cart">
									<span class="point"></span>
									<div class="inner_msgcart">
										<img src="https://res.kurly.com/images/common/bg_1_1.gif"
											alt="" class="thumb">
										<p id="msgReaddedItem" class="desc">
											<span class="tit"></span> <span class="txt"> 장바구니에 상품을
												담았습니다. <span class="repeat">이미 담으신 상품이 있어 추가되었습니다.</span>
											</span>
										</p>
									</div>
								</div>
							</div>
							<div class="location_set">
								<button type="button" class="btn_location on">배송지 설정하기</button>
								<div class="layer_location">
									<div class="no_address">
										<span class="emph">배송지를 등록</span>하고<br> 구매 가능한 상품을 확인하세요!
										<div class="group_button double">
											<button type="button" class="btn default login">로그인</button>
											<button type="button" class="btn active searchAddress">
												<span class="ico"></span>주소검색
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="gnbPick">
								<a href="#" class="btn_pick">찜한 상품 보기</a>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>