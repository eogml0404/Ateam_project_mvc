const wrapper = document.querySelector('.wrapper');
const first = document.querySelector('.first');
const loginLink = document.querySelector('.login-link');
const registerLink = document.querySelector('.register-link');
const btnpopup = document.querySelector('.btnLogin-popup');
const closebtn = document.querySelector('.icon-close');

registerLink.addEventListener('click', ()=> {
    wrapper.classList.add('active');
});

loginLink.addEventListener('click', ()=> {
    wrapper.classList.remove('active');
});

btnpopup.addEventListener('click', ()=> {
    wrapper.classList.add('active-popup');
    first.classList.add('active-popup');
});

closebtn.addEventListener('click', ()=> {
    wrapper.classList.remove('active-popup');
    first.classList.remove('active-popup');
});

function login(){
    var fm = document.frm;

    var value = document.querySelector('input[name="select"]:checked').value;
   // alert(value);
    if(value==='student'){
        out.println("<script>alert('student');</script>");
        fm.action ="/member/studentLoginAction.jsp";  //처리하기위해 이동하는 주소
	    fm.method = "post";  //이동하는 방식  get 노출시킴 post 감추어서 전달
	    fm.submit();
    }else{
        alert('교수페이지 이동');
        location.href='./main/main_p.html';
    }

    var radios = document.getElementsByName('select');
    /*for(var radio of radios){
        if(radio.checked){
            var checked_select = radio.value;
            // alert(checked_select);
            if(checked_select === "student"){
                fm.action ="<%=request.getContextPath()%>/member/memberLoginAction.do";  //처리하기위해 이동하는 주소
	            fm.method = "post";  //이동하는 방식  get 노출시킴 post 감추어서 전달
	            fm.submit();
	            return;
                location.href='./main/main_s.html';
                break;
            }else{
                location.href='./main/main_p.html';
                break;
            }
        }
    }
    */
}