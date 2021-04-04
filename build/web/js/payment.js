/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function submit() {
    if (validateForm() === true) {
       $.ajax({
            type: "post",
            url: "/freelancer/payment",
            data: "first=" + $('#first').val() + "&last=" + $('#last').val() +"&zip=" + $("#zip").val() + "&state=" + $("#state").val() + "&email=" + $("#email").val() + "&city=" + $("#city").val() + "&paymentType=" + $("#paymentType").val(),
            success: function (msg) {
                    switch (msg.payment_type) {
                        case "1":
                            location.href = "creditcard.jsp?id=" + msg.payment_id;
                            break;
                        case "2":
                            location.href = "bank.jsp?id=" + msg.payment_id;
                            break;
                    }
            },
            error: function (xhr) {
                if (xhr.status === 403) {
                    alert("Payment was not processed successfully!");
                }
            }
        });
    }
}

function validateForm() {
    var message = null;
    var firstName = document.getElementById("first").value;
    if (firstName.trim() === "") {
        message = "Please fill in the firstname.";
        document.getElementById("first").setCustomValidity(message);
        alert(message);
        return false;
    } else {
        document.getElementById("first").setCustomValidity("");
    }
    
    var lastName = document.getElementById("last").value;
    if (lastName.trim() === "") {
        message = "Please fill in the lastname.";
        document.getElementById("last").setCustomValidity(message);
        alert(message);
        return false;
    } else {
        document.getElementById("last").setCustomValidity("");
    }
    
    var email = document.getElementById("email").value;
    if (email.trim() === "") {
        message = "Please fill in the email.";
        document.getElementById("email").setCustomValidity(message);
        alert(message);
        return false;
    } else {
        document.getElementById("email").setCustomValidity("");
    }
    
    var zip = document.getElementById("zip").value;
   if (zip.trim() === "") {
        message = "Please fill in the zip.";
        document.getElementById("zip").setCustomValidity(message);
        alert(message);
        return false;
    } else {
        document.getElementById("zip").setCustomValidity("");
    }
    
    var street = document.getElementById("street").value;
   if (street.trim() === "") {
        message = "Please fill in the street.";
        document.getElementById("street").setCustomValidity(message);
        alert(message);
        return false;
    } else {
        document.getElementById("street").setCustomValidity("");
    }
    
     var city = document.getElementById("city").value;
   if (city.trim() === "") {
        message = "Please fill in the city.";
        document.getElementById("city").setCustomValidity(message);
        alert(message);
        return false;
    } else {
        document.getElementById("city").setCustomValidity("");
    }
    
     var state = document.getElementById("state").value;
   if (state.trim() === "") {
        message = "Please fill in the state.";
        document.getElementById("state").setCustomValidity(message);
        alert(message);
        return false;
    } else {
        document.getElementById("state").setCustomValidity("");
    }
    
    return true;
}