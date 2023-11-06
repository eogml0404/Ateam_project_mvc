for(let i=1; i<=4; i++){

    function getValue(event,i){
        const value=event.target.value;
        const eleid="value"+i;
        document.getElementById(eleid).value=value;
    }
}

function selectAtt(selectAll){
    const checkboxes = document.getElementsByName('student');
    checkboxes.forEach((checkbox) => {
        checkbox.checked = selectAll.checked;
    })
}