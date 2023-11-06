function selectAtt(selectAll){
    const checkboxes = document.getElementsByName('student');
    checkboxes.forEach((checkbox) => {
        checkbox.checked = selectAll.checked;
    })
}