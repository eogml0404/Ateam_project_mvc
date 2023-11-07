window.onload = function(){
    let now = new Date();
    let dayOfWeek = now.getDay(); 
    
    let tdyweek=0;
    

    switch(dayOfWeek){
        case 1:
            tdyweek = 1;
            break;
        case 2:
            tdyweek = 2;
            break;
        case 3:
            tdyweek = 3;
            break;
        case 4:
            tdyweek = 4;
            break;
        case 5:
            tdyweek = 5;
            break;
    }
	
    let time = 99;
    var hours = now.getHours(); 
	
	if(hours>=9 && hours<=17){
		time=hours-8;
	}
	
	var tt = document.getElementById("mytable");

	tt.rows[time].cells[tdyweek].style.backgroundColor='#FEF7CC';
	
}
