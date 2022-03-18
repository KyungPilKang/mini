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
    let outbtn=document.getElementById("lo_btn");
    outbtn.onclick=function(){
        location.href="index.jsp";
    }

    let answer1Div=document.getElementById("answer1Div");
    let answer2Div_m=document.getElementById("answer2Div_m");
    let answer1=document.getElementById("answer1");
    let answer1_m=document.getElementById("answer1_m");
    let answer2_m=document.getElementById("answer2_m");

    /*let cnt=0;
    let qJson=['{"type": "촬영", "member": "yes", "title": "설날 연휴 스튜디오 촬영 예약"}', '{"type": "편집", "member": "no", "title": "촬영 인덱스 삽입 관련"}']
    let qArr=[];
    for(temp of qJson){
        qArr.push(JSON.parse(temp));
    }
    for(qObj of qArr){
        let container1=document.getElementById("container1");
        let row1=document.createElement("div");
        row1.classList.add("row", "justify-content-center");
    
        container1.appendChild(row1);
    
        let row1col1=document.createElement("div");
        let row1col1text=document.createElement("h5");
        row1col1.classList.add("col-md-6", "col-lg-1", "mb-5", "text-center");
        row1col1text.innerHTML="No."+(cnt+1);
    
        row1col1.appendChild(row1col1text);
        row1.appendChild(row1col1);
    
        let row1col2=document.createElement("div");
        let row1col2text=document.createElement("h5");
        row1col2.classList.add("col-md-6", "col-lg-1", "mb-5", "text-center");
        row1col2text.innerHTML=qObj.type
    
        row1col2.appendChild(row1col2text);
        row1.appendChild(row1col2);
    
        let row1col3=document.createElement("div");
        let row1col3text=document.createElement("h5");
        row1col3.classList.add("col-md-6", "col-lg-1", "mb-5", "text-center");
        if(qObj.member=="yes"){
            row1col3text.innerHTML="회원"
        } else row1col3text.innerHTML="비회원"
    
        row1col3.appendChild(row1col3text);
        row1.appendChild(row1col3);
    
        let row1col4=document.createElement("div");
        let row1col4div=document.createElement("div");
        let row1col4text=document.createElement("h5");
        row1col4.classList.add("col-md-6", "col-lg-6", "mb-5", "text-center");
        row1col4div.classList.add("portfolio-item", "mx-auto");
        row1col4div.setAttribute("data-bs-toggle", "modal");
        row1col4div.setAttribute("data-bs-target", "#QModal"+(cnt+1));
        row1col4text.innerHTML=qObj.title;
    
        row1col4div.appendChild(row1col4text);
        row1col4.appendChild(row1col4div);
        row1.appendChild(row1col4);
    
        let row1col5=document.createElement("div");
        let row1col5div=document.createElement("div");
        let row1col5text=document.createElement("h5");
        row1col5.classList.add("col-md-6", "col-lg-1", "mb-5", "text-center");
        row1col5div.classList.add("portfolio-item", "mx-auto");
        row1col5div.setAttribute("data-bs-toggle", "modal");
        row1col5div.setAttribute("data-bs-target", "#AModal"+(cnt+1));
        row1col5text.innerHTML="답변하기"
    
        row1col5div.appendChild(row1col5text);
        row1col5.appendChild(row1col5div);
        row1.appendChild(row1col5);
    
        let row1col6=document.createElement("div");
        let row1col6div=document.createElement("div");
        let row1col6text=document.createElement("h5");
        row1col6.classList.add("col-md-6", "col-lg-1", "mb-5", "text-center");
        row1col6div.classList.add("portfolio-item", "mx-auto");
        row1col6div.setAttribute("data-bs-toggle", "modal");
        row1col6div.setAttribute("data-bs-target", "#MdModal"+(cnt+1));
        row1col6text.innerHTML="수정하기"
    
        row1col6div.appendChild(row1col6text);
        row1col6.appendChild(row1col6div);
        row1.appendChild(row1col6);
        cnt++;
    }

    for(qObj of qArr){

    }*/

    /*let cnt2=0;
    let qJson2=['{"type": "촬영", "member": "yes", "fr_title": "촬영 PD 프리랜서 지원", "fr_name": "최길동", "fr_em": "choikd@naver.com", "fr_ph": "010-1111-2222", "fr_etc": "메일로 보낸 이력서를 확인해주시기 바랍니다."}']
    let qArr2=[];
    for(temp of qJson2){
        qArr2.push(JSON.parse(temp));
    }
    for(qObj of qArr2){
        let container2=document.getElementById("container2");
        let row1=document.createElement("div");
        row1.classList.add("row", "justify-content-center");
    
        container2.appendChild(row1);
    
        let row1col1=document.createElement("div");
        let row1col1text=document.createElement("h5");
        row1col1.classList.add("col-md-6", "col-lg-1", "mb-5", "text-center");
        row1col1text.innerHTML="No."+(cnt2+1);
    
        row1col1.appendChild(row1col1text);
        row1.appendChild(row1col1);
    
        let row1col2=document.createElement("div");
        let row1col2text=document.createElement("h5");
        row1col2.classList.add("col-md-6", "col-lg-1", "mb-5", "text-center");
        row1col2text.innerHTML=qObj.type
    
        row1col2.appendChild(row1col2text);
        row1.appendChild(row1col2);
    
        let row1col3=document.createElement("div");
        let row1col3text=document.createElement("h5");
        row1col3.classList.add("col-md-6", "col-lg-1", "mb-5", "text-center");
        if(qObj.member=="yes"){
            row1col3text.innerHTML="회원"
        } else row1col3text.innerHTML="비회원"
    
        row1col3.appendChild(row1col3text);
        row1.appendChild(row1col3);
    
        let row1col4=document.createElement("div");
        let row1col4div=document.createElement("div");
        let row1col4text=document.createElement("h5");
        row1col4.classList.add("col-md-6", "col-lg-6", "mb-5", "text-center");
        row1col4div.classList.add("portfolio-item", "mx-auto");
        row1col4div.setAttribute("data-bs-toggle", "modal");
        row1col4div.setAttribute("data-bs-target", "#fModal"+(cnt2+1));
        row1col4text.innerHTML=qObj.fr_title;
    
        row1col4div.appendChild(row1col4text);
        row1col4.appendChild(row1col4div);
        row1.appendChild(row1col4);
    
        let row1col5=document.createElement("div");
        let row1col5div=document.createElement("div");
        let row1col5a=document.createElement("a");
        let row1col5text=document.createElement("h5");
        row1col5.classList.add("col-md-6", "col-lg-1", "mb-5", "text-center");
        row1col5div.classList.add("portfolio-item", "mx-auto");
        row1col5a.setAttribute("href", "./assets/tempPdf.pdf");
        row1col5a.setAttribute("target", "_blank");
        row1col5a.classList.add("btn-outline-light")
        row1col5a.style.textDecorationLine="none";
        row1col5text.innerHTML="확인하기"
    
        row1col5a.appendChild(row1col5text);
        row1col5div.appendChild(row1col5a);
        row1col5.appendChild(row1col5div);
        row1.appendChild(row1col5);
    
        let row1col6=document.createElement("div");
        let row1col6div=document.createElement("div");
        let row1col6text=document.createElement("h5");
        row1col6.classList.add("col-md-6", "col-lg-1", "mb-5", "text-center");
        row1col6div.classList.add("portfolio-item", "mx-auto");
        row1col6div.setAttribute("id", "fr_id_"+(cnt2+1));
        row1col6text.innerHTML="확인"
    
        row1col6div.appendChild(row1col6text);
        row1col6.appendChild(row1col6div);
        row1.appendChild(row1col6);
        cnt2++;
    }
    for(qObj of qArr2){
        fr_title.value=qObj.fr_title;
        fr_name.value=qObj.fr_name;
        fr_em.value=qObj.fr_em;
        fr_ph.value=qObj.fr_ph;
        fr_etc.value=qObj.fr_etc;
    }
    let fr_id_1=document.getElementById("fr_id_1");
    fr_id_1.onclick=function(e){
        sweetalert("error", "심사 대기중", "아직 심사가 완료되지 않았습니다");
        e.preventDefault();
    }*/
};