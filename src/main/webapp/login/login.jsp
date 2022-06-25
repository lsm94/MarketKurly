<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="content">
	<div class="section_login">
		<h3 class="tit_login">로그인</h3>
		<div class="write_form">
			<div class="write_view login_view">
				<form method="post" name="form" id="form" action="#">
					<input type="hidden" name="returnUrl" value="#"> 
					<input type="hidden" name="return_url"> 
					<input type="hidden" name="recommend_id">
					<input type="hidden" name="close">
					<input type="text" name="id" size="20" placeholder="아이디를 입력해주세요.">
					<input type="password" name="password" size="20" placeholder="비밀번호를 입력해주세요.">
					<div class="checkbox_save">
						<label class="label_checkbox checked">
						<input type="checkbox" id="chk_security" name="chk_security" value="y" checked="checked"
							onchange="if( this.checked){$(this).parent().addClass('checked')}else{$(this).parent().removeClass('checked')} ">
							보안접속
						</label>
						<div class="login_search">
							<a class="link" onclick="#" href="#none"> 아이디 찾기 </a> 
							<span class="bar"></span>
								 <a class="link" onclick="#" href="#none"> 비밀번호 찾기 </a>
						</div>
					</div>
					<button class="btn_type1" type="submit" onclick="#">
						<span class="txt_type">로그인</span>
					</button>
				</form>
				<a class="btn_type2 btn_member" onclick="#" href="#none"> <span
					class="txt_type">회원가입</span>
				</a>
			</div>
		</div>
	</div>
</div>