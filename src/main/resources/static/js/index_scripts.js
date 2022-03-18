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
    /*let submit1=document.getElementById("loginForm");
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
    let change1=document.getElementById("no_id");
    let change2=document.getElementById("yes_id");
    let contact_input1=document.getElementById("contact_input1");
    let contact_input2=document.getElementById("contact_input2");
    change1.onchange=function(){
        if(change1.checked==true){
            contact_input1.style.display="";
            contact_input2.style.display="none";
            ct_btn.disabled=false;
            ct_title.disabled=false;
            ct_message.disabled=false;
            ct_title.classList.remove("bg-white");
            ct_message.classList.remove("bg-white");
        } else return;
    }
    change2.onchange=function(){
        if(change2.checked==true){
            contact_input1.style.display="none";
            contact_input2.style.display="none";
            sweetalert("warning", "로그인 요망", "로그인 후 마이페이지에서 진행하세요");
            ct_btn.disabled=true;
            ct_title.disabled=true;
            ct_message.disabled=true;
            ct_title.classList.add("bg-white");
            ct_message.classList.add("bg-white");
        } else return;
    }
    let contact=document.getElementById("contactForm");
    contact.onsubmit=function(e){
        if(change1.checked!=true&&change2.checked!=true){
            sweetalert("error", "입력 오류", "회원 여부를 체크해주세요");
            e.preventDefault();
            return;
        }
        if(change2.checked==true){
            if(ct_user_id_id.value==""){
                sweetalert("error", "입력 오류", "아이디를 입력하세요");
                ct_user_id_id.focus();
                e.preventDefault();
                return;
            } else {
                if(user1.id!=ct_user_id_id.value){
                    sweetalert("error", "아이디 오류", "존재하지 않는 아이디입니다");
                    e.preventDefault();
                    return;
                }
            }
        }
        if(video_id.checked!=true&&class_id.checked!=true&&effect_id.checked!=true&&memory_id.checked!=true){
            sweetalert("error", "입력 오류", "유형을 선택하세요");
            e.preventDefault();
            return;
        }
        if(change1.checked==true){
            if(ct_name_id.value==""){
                sweetalert("error", "입력 오류", "성함을 입력하세요");
                e.preventDefault();
                return;
            }
            if(ct_em_id.value==""){
                sweetalert("error", "입력 오류", "이메일을 입력하세요");
                e.preventDefault();
                return;
            }
            if(ct_ph_id.value==""){
                sweetalert("error", "입력 오류", "전화번호를 입력하세요");
                e.preventDefault();
                return;
            }
            if(ct_title.value==""){
                sweetalert("error", "입력 오류", "제목을 입력하세요");
                e.preventDefault();
                return;
            }
            if(ct_message.value==""){
                sweetalert("error", "입력 오류", "문의내용을 입력하세요");
                e.preventDefault();
                return;
            }
            if(!ct_em_id.value.includes('@')||!ct_em_id.value.includes('.')){
                sweetalert("error", "입력 오류", "이메일이 올바르지 않습니다");
                e.preventDefault();
                return;
            }
            if(!ct_ph_id.value.includes('-')){
                sweetalert("error", "입력 오류", "전화번호가 올바르지 않습니다");
                e.preventDefault();
                return;
            }
        }
    }
};