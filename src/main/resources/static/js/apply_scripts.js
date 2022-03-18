window.addEventListener('DOMContentLoaded', event => {
    var navbarShrink = function () {
        const navbarCollapsible = document.body.querySelector('#mainNav');
        if (!navbarCollapsible) {
            return;
        }
        if (window.scrollY === 0) {
            navbarCollapsible.classList.remove('navbar-shrink')
        } else {
            navbarCollapsible.classList.add('navbar-shrink')
        }

    };
    navbarShrink();
    document.addEventListener('scroll', navbarShrink);
    const mainNav = document.body.querySelector('#mainNav');
    if (mainNav) {
        new bootstrap.ScrollSpy(document.body, {
            target: '#mainNav',
            offset: 72,
        });
    };
    const navbarToggler = document.body.querySelector('.navbar-toggler');
    const responsiveNavItems = [].slice.call(
        document.querySelectorAll('#navbarResponsive .nav-link')
    );
    responsiveNavItems.map(function (responsiveNavItem) {
        responsiveNavItem.addEventListener('click', () => {
            if (window.getComputedStyle(navbarToggler).display !== 'none') {
                navbarToggler.click();
            }
        });
    });
});
window.onload=function(){
    let sweetalert=(icon,title,contents)=>{
        Swal.fire({
            icon: icon,
            title: title,
            text: contents,
            confirmButtonText: "확인",
            timer: 5000
        })
    }
    /*let user1Json='{"id":"admin", "pw":"kkp1234"}'
    let user1=JSON.parse(user1Json);
    let user2Json='{"id":"user", "pw":"kkp12345"}'
    let user2=JSON.parse(user2Json);
    let submit1=document.getElementById("loginForm");
    submit1.onsubmit=function(e){
        let input_id=lg_user_id_id.value;
        let input_pw=lg_pw_id.value;
        if(input_id==""){
            sweetalert("error", "아이디 오류", "아이디를 입력하세요");
            lg_user_id_id.focus();
            e.preventDefault();
            return;
        } else {
            if(input_pw==""){
                sweetalert("error", "비밀번호 오류", "비밀번호를 입력하세요");
                lg_pw_id.focus();
                e.preventDefault();
                return;
            } else {
                if(user1.id==input_id&&user1.pw==input_pw){
                    submit1.setAttribute("action", "./admin.jsp");
                    return;
                }
                if(user2.id==input_id&&user2.pw==input_pw){
                    submit1.setAttribute("action", "./user.jsp");
                    return;
                }
                if(user1.id!=input_id&&user2.id!=input_id){
                    sweetalert("error", "아이디 오류", "존재하지 않는 아이디입니다");
                    lg_user_id_id.focus();
                    e.preventDefault();
                    return;
                } else {
                    if(user1.pw!=input_pw){
                        sweetalert("error", "비밀번호 오류", "비밀번호가 일치하지 않습니다");
                        lg_pw_id.focus();
                        e.preventDefault();
                        return;
                    }
                    if(user2.pw!=input_pw){
                        sweetalert("error", "비밀번호 오류", "비밀번호가 일치하지 않습니다");
                        lg_pw_id.focus();
                        e.preventDefault();
                        return;
                    }
                }
            }
        }
    }*/
    let submit2=document.getElementById("signinForm");
    submit2.onsubmit=function(e){
        let input_id=user_id.value;
        let input_pw1=user_pw.value;
        let input_pw2=user_pw2.value;   
        let input_name=user_name.value;
        let input_em=user_email.value;
        let input_ph=user_phone.value;
        if(input_id==""){
            sweetalert("error", "입력 오류", "아이디를 입력하세요");
            e.preventDefault();
            return;
        } else {
            if(input_pw1==""){
                sweetalert("error", "입력 오류", "비밀번호를 입력하세요");
                e.preventDefault();
                return;
            } else {
                if(input_pw2==""){
                    sweetalert("error", "입력 오류", "비밀번호를 확인하세요");
                    e.preventDefault();
                    return;
                } else {
                    if(input_name==""){
                        sweetalert("error", "입력 오류", "성함을 입력하세요");
                        e.preventDefault();
                        return;
                    } else {
                        if(input_em==""){
                            sweetalert("error", "입력 오류", "이메일을 입력하세요");
                            e.preventDefault();
                            return;
                        } else {
                            if(input_ph==""){
                                sweetalert("error", "입력 오류", "전화번호를 입력하세요");
                                e.preventDefault();
                                return;
                            } else{
                                if(input_pw1!=input_pw2){
                                    sweetalert("error", "입력 오류", "비밀번호가 일치하지 않습니다");
                                    e.preventDefault();
                                    return;
                                }
                                if(!input_em.includes('@')||!input_em.includes('.')){
                                    sweetalert("error", "입력 오류", "이메일이 올바르지 않습니다");
                                    e.preventDefault();
                                    return;
                                }
                                if(!input_ph.includes('-')){
                                    sweetalert("error", "입력 오류", "전화번호가 올바르지 않습니다");
                                    e.preventDefault();
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    let video_select=document.getElementById("video_select");
    let class_select=document.getElementById("class_select");
    let effect_select=document.getElementById("effect_select");
    video_id.onchange=function(){
        if(video_id.checked==true){
            video_select.style.display="";
            class_select.style.display="none";
            effect_select.style.display="none";
        }
    }
    class_id.onchange=function(){
        if(class_id.checked==true){
            video_select.style.display="none";
            class_select.style.display="";
            effect_select.style.display="none";
        }
    }
    effect_id.onchange=function(){
        if(effect_id.checked==true){
            video_select.style.display="none";
            class_select.style.display="none";
            effect_select.style.display="";
        }
    }
    apply_submit1.onclick=function(e){
        if(video_id.checked!=true&&class_id.checked!=true&&effect_id.checked!=true){
            sweetalert("error", "입력 오류", "지원 분야를 체크해주세요");
            e.preventDefault();
            return;
        }
        if(video_id.checked==true){
            if(sony.checked!=true&&panasonic.checked!=true&&canon.checked!=true&&arri.checked!=true&&blackmagic.checked!=true&&etc1.checked!=true){
                sweetalert("error", "입력 오류", "사용 카메라를 체크해주세요");
                e.preventDefault();
                return;   
            }
        }
        if(class_id.checked==true){
            if(element.checked!=true&&high.checked!=true&&officer.checked!=true&&cpa.checked!=true&&certify.checked!=true&&appoint.checked!=true&&etc2.checked!=true){
                sweetalert("error", "입력 오류", "강의 종류를 체크해주세요");
                e.preventDefault();
                return;   
            }
        }
        if(effect_id.checked==true){
            if(mp4.checked!=true&&mov.checked!=true&&wmv.checked!=true&&mkv.checked!=true&&etc3.checked!=true){
                sweetalert("error", "입력 오류", "편집 포멧을 체크해주세요");
                e.preventDefault();
                return;   
            }
        }
        if(fr_title.value==""){
            sweetalert("error", "입력 오류", "제목을 입력하세요");
            e.preventDefault();
            return;
        }
        if(fr_name.value==""){
            sweetalert("error", "입력 오류", "성함을 입력하세요");
            e.preventDefault();
            return;
        }
        if(apply_email.value==""){
            sweetalert("error", "입력 오류", "이메일을 입력하세요");
            e.preventDefault();
            return;
        }
        if(fr_ph.value==""){
            sweetalert("error", "입력 오류", "전화번호를 입력하세요");
            e.preventDefault();
            return;
        }
        if(etc.value==""||etc.value==null||etc.value==undefined){
            sweetalert("error", "입력 오류", "기타를 입력하세요");
            e.preventDefault();
            return;
        }
        if(!apply_email.value.includes('@')||!apply_email.value.includes('.')){
            sweetalert("error", "입력 오류", "이메일이 올바르지 않습니다");
            e.preventDefault();
            return;
        }
        if(!fr_ph.value.includes('-')){
            sweetalert("error", "입력 오류", "전화번호가 올바르지 않습니다");
            e.preventDefault();
            return;
        }
    }
    apply_submit2.onclick=function(e){
        if(video_id.checked!=true&&class_id.checked!=true&&effect_id.checked!=true){
            sweetalert("error", "입력 오류", "지원 분야를 체크해주세요");
            e.preventDefault();
            return;
        }
        if(video_id.checked==true){
            if(sony.checked!=true&&panasonic.checked!=true&&canon.checked!=true&&arri.checked!=true&&blackmagic.checked!=true&&etc1.checked!=true){
                sweetalert("error", "입력 오류", "사용 카메라를 체크해주세요");
                e.preventDefault();
                return;   
            }
        }
        if(class_id.checked==true){
            if(element.checked!=true&&high.checked!=true&&officer.checked!=true&&cpa.checked!=true&&certify.checked!=true&&appoint.checked!=true&&etc2.checked!=true){
                sweetalert("error", "입력 오류", "강의 종류를 체크해주세요");
                e.preventDefault();
                return;   
            }
        }
        if(effect_id.checked==true){
            if(mp4.checked!=true&&mov.checked!=true&&wmv.checked!=true&&mkv.checked!=true&&etc3.checked!=true){
                sweetalert("error", "입력 오류", "편집 포멧을 체크해주세요");
                e.preventDefault();
                return;   
            }
        }
        if(fr_title.value==""){
            sweetalert("error", "입력 오류", "제목을 입력하세요");
            e.preventDefault();
            return;
        }
        if(etc.value==""||etc.value==null||etc.value==undefined){
            sweetalert("error", "입력 오류", "기타를 입력하세요");
            e.preventDefault();
            return;
        }
    }
};