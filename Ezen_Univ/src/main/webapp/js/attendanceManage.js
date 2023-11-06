for(let i=0; i<=3; i++){
    const getValue = "getValue"+i;

    function getValue(event){
        
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