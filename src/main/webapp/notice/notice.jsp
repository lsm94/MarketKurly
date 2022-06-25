<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
<style>


.notice .layout-pagination {
	margin: 0
}

.eng2 {
	color: #939393
}

.xans-board-listheader {
	font-size: 12px
}
</style>	
	
<div class="page_aticle aticle_type2">
	<div id="snb" class="snb_cc">
		<h2 class="tit_snb">고객센터</h2>
		<div class="inner_snb">
			<ul class="list_menu">
				<li class="on">
					<a href="#none">공지사항</a>
				</li>
				<li><a href="#none"	">1:1 문의</a></li>
			</ul>
		</div>
		<a href="#" class="link_inquire"><span class="emph">도움이 필요하신가요 ?</span> 1:1 문의하기</a>
	</div>
	<div class="page_section">
		<div class="head_aticle">
			<h2 class="tit">
				공지사항 <span class="tit_sub">컬리의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</span>
			</h2>
		</div>
		<form name="frmList" action="#">
			<input type="hidden" name="id" value="notice">
			<table width="100%" align="center" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td>
							<div class="xans-element- xans-myshop xans-myshop-couponserial ">
								<table width="100%" class="xans-board-listheader jh"
									cellpadding="0" cellspacing="0">
									<thead>
										<tr>
											<th>번호</th>
											<th>제목</th>
											<th>작성자</th>
											<th>작성일</th>
											<th>조회</th>
										</tr>
									</thead>
								</table>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="layout-pagination">
				<div class="pagediv">
					<a href="#"	class="layout-pagination-button layout-pagination-first-page">맨	처음 페이지로 가기</a>
					<a href="#"	class="layout-pagination-button layout-pagination-prev-page">이전 페이지로 가기</a>
					<a href="#" class="layout-pagination-button layout-pagination-next-page">다음 페이지로 가기</a>
					<a href="#" class="layout-pagination-button layout-pagination-next-page">다음 페이지로 가기</a>
				</div>
			</div>
			<table class="xans-board-search xans-board-search2">
				<tbody>
					<tr>
						<td class="input_txt">
							<img src="#">검색어</td>
						<td class="stxt">
							<input type="checkbox" name="search[name]">이름
							<input type="checkbox" name="search[subject]">제목
							<input type="checkbox" name="search[contents]">내용&nbsp;</td>
						<td class="input_txt">&nbsp;</td>
						<td>
							<div class="search_bt">
								<a href="#">
								<img src="#" align="absmiddle"></a> 
								<input type="text" name="search[word]">
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</div>