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
		<h2 class="tit_snb">������</h2>
		<div class="inner_snb">
			<ul class="list_menu">
				<li class="on">
					<a href="#none">��������</a>
				</li>
				<li><a href="#none"	">1:1 ����</a></li>
			</ul>
		</div>
		<a href="#" class="link_inquire"><span class="emph">������ �ʿ��ϽŰ��� ?</span> 1:1 �����ϱ�</a>
	</div>
	<div class="page_section">
		<div class="head_aticle">
			<h2 class="tit">
				�������� <span class="tit_sub">�ø��� ���ο� �ҽĵ�� ������ �������� �Ѱ����� Ȯ���ϼ���.</span>
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
											<th>��ȣ</th>
											<th>����</th>
											<th>�ۼ���</th>
											<th>�ۼ���</th>
											<th>��ȸ</th>
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
					<a href="#"	class="layout-pagination-button layout-pagination-first-page">��	ó�� �������� ����</a>
					<a href="#"	class="layout-pagination-button layout-pagination-prev-page">���� �������� ����</a>
					<a href="#" class="layout-pagination-button layout-pagination-next-page">���� �������� ����</a>
					<a href="#" class="layout-pagination-button layout-pagination-next-page">���� �������� ����</a>
				</div>
			</div>
			<table class="xans-board-search xans-board-search2">
				<tbody>
					<tr>
						<td class="input_txt">
							<img src="#">�˻���</td>
						<td class="stxt">
							<input type="checkbox" name="search[name]">�̸�
							<input type="checkbox" name="search[subject]">����
							<input type="checkbox" name="search[contents]">����&nbsp;</td>
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