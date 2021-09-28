$(document).ready(function () {
    let selectAll = $('input[name="checkAll"]');
    let inputItems = $('input[name="checkItem"]');
    let totalItems = $('#totalItems');
    let totalItemsSelected = $('#totalItemsSelected');

    selectAll.click(function(){
        changeCheckAll($(this));
        itemsChangeCheck(inputItems,selectAll,totalItemsSelected);
    })
    inputItems.click(function (){
        selectAll.prop('checked', true);
        itemsChangeCheck(inputItems,selectAll,totalItemsSelected);
    });

    totalItems.text(inputItems.length);
});

changeCheckAll = (element) => {
    let iCheck = $('input[type="checkbox"]');
    if(element.is(':checked')){
        iCheck.prop('checked', true);
        return;
    }
    iCheck.prop('checked', false);
}

itemsChangeCheck = (iCheck,funcCheck,itemsSelected) => {
    var n = 0;
    iCheck.each(function(i,e){
        if(!e.checked){
            funcCheck.prop('checked', false);
            return;
        }
        n++;
    });
    itemsSelected.text(n);
}