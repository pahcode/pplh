(function($){

//----------------- 메뉴 열기 -----------------
	
    // 햄버거버튼 열기
    $('.openBtn').on('click', function(){
        $(this).parent().siblings().css({display: 'block'})
        $('.nav').stop().animate({right: '0px'}, 500)
    })
    
    // 햄버거버튼 닫기 (메뉴 이동하면 닫기)
    $('.closeBtn, .nav .depth2 > li > a, .nav a.login, #header .navScrollWrap > div a').on('click', function(){
        $('#navWrap .depth1 > li').removeClass('on')
        $('#navWrap .depth2').slideUp()
        $('.nav').animate({right: '-270px'}, 500, function(){
            $('#navWrap').css({display: 'none'})
        })
    })
    
    // nav에서 depth1 클릭하면
	$('#navWrap .depth1>li>a').off('click').on('click', function(e){
		 e.preventDefault()
	        $(this).parent().toggleClass('on')
	        $(this).parent().find('.depth2').stop().slideToggle(300)
	        $(this).parent().siblings().each(function(){
	            if ($(this).hasClass('on')){
	                $(this).find('.depth2').slideUp(300)
	                $(this).removeClass('on')
			}
		})
	})

    // 로그인 버튼 활성화
    $('#container').on('keyup', '.loginContent .loginWrap input', function(){
        if( $(this).val() !== '' && $(this).siblings('input').val() !== '' ) {
            $('.loginContent .loginForm').addClass('on')
            $(this).siblings('button').attr('type', 'submit')
        } else {
            $('.loginContent .loginForm').removeClass('on')
            $(this).siblings('button').attr('type', 'button')
        }
    })

    // 회원가입 버튼 활성화
    $('#container').on('keyup', '.joinContent .joinWrap input', function(){
        var elLi = $('.joinContent .joinWrap ul li')
        for (var i=0; i < elLi.length; i++) {
            if($('.joinContent .joinWrap ul li').eq(i).find('input').val() == ''){
                $('.joinContent .joinWrap').removeClass('on')
                $('.joinWrap > button').attr('type', 'button')
                i = elLi.length
            } else {
                $('.joinContent .joinWrap').addClass('on')
                $('.joinWrap > button').attr('type', 'submit')
            }
        }
    })
 
})(jQuery)



//----------------- Java Script -----------------

// 회원가입 유효성 체크
function join_check(form) {
    if (document.join_form.userId.value == '') {
        alert('아이디를 입력해 주세요.')
        document.join_form.userId.focus()
        return false
    }
    if (document.join_form.userPw.value == '') {
        alert('비밀번호를 입력해 주세요.')
        document.join_form.userPw.focus()
        return false
    }
    if (document.join_form.name.value == '') {
        alert('이름을 입력해 주세요.')
        document.join_form.name.focus()
        return false
    }
    if (document.join_form.userTel.value == '') {
        alert('연락처를 입력해 주세요.')
        document.join_form.userTel.focus()
        return false
    }
    if (document.join_form.userPw.value != '' && document.join_form.userPw.value !== document.join_form.pwOk.value) {
        alert('비밀번호가 일치하지 않습니다.')
        document.join_form.pass.focus()
        return false
    }
    if (!document.querySelector('.joinContent .joinForm').classList.contains('on')){
        alert('아이디 중복체크를 실행해주세요.')
        document.join_form.userId.focus()
        return false
    }
    document.join_form.submit() 
}

//비밀번호 변경 유효성 체크
function pw_check(form) {
    if (document.pwModify_form.currPw.value == '') {
        alert('현재 비밀번호를 입력해 주세요.')
        document.pwModify_form.currPw.focus()
        return false
    }
    if (document.pwModify_form.changePw.value == '') {
        alert('변경할 비밀번호를 입력해 주세요.')
        document.pwModify_form.changePw.focus()
        return false
    }
    if (document.pwModify_form.changePwOk.value == '') {
        alert('변경할 비밀번호 확인을 입력해 주세요.')
        document.pwModify_form.changePwOk.focus()
        return false
    }
    if (document.pwModify_form.changePw.value !== document.pwModify_form.changePwOk.value) {
        alert('변경 비밀번호가 일치하지 않습니다.')
        document.pwModify_form.changePwOk.focus()
        return false
    }
    document.pwModify_form.submit() 
}


