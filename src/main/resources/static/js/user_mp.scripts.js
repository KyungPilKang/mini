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
    /*let outbtn=document.getElementById("lo_btn");
    outbtn.onclick=function(){
        location.href="index.jsp";
    }*/
    let contactForm=document.getElementById("contactForm");
    let message=document.getElementById("message");
    contactForm.onsubmit=function(e){
        if(video_id.checked!=true&&class_id.checked!=true&&effect_id.checked!=true&&memory_id.checked!=true){
            sweetalert("error", "입력 오류", "유형을 선택하세요");
            e.preventDefault();
            return;
        }
        if(title.value==""){
            sweetalert("error", "입력 오류", "제목을 입력하세요");
            e.preventDefault();
            return;
        }
        if(message.value==""){
            sweetalert("error", "입력 오류", "내용을 입력하세요");
            e.preventDefault();
            return;
        }
    }

};