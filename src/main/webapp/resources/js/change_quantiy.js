$(document).ready(function () {
    $('.quantity-change button[name="plus"]').click(function () {
        var inputQuantity = $(this).next();
        inputQuantity.val(Number(inputQuantity.val()) + 1);
    });

    $('.quantity-change button[name="minus"]').click(function () {
        var inputQuantity = $(this).prev();
        inputQuantity.val(Number(inputQuantity.val()) - 1);
    });
});