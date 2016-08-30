function validateForm() {
    var x = document.forms["myForm"]["password"].value;
    var y = document.forms["myForm"]["con_password"].value;
    if (x != y) {
        alert("password must be same");
        return false;
    }
}