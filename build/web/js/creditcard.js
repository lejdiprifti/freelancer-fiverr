/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function submit() {
    if (validateForm() === true){
        location.href = "thankyou.jsp";
    } 
}


function validateForm() {
    var message = null;
    var cardInfo = document.getElementById("card").value;
    if (cardInfo.trim() === "") {
        message = "Please fill in the card number";
        document.getElementById("card").setCustomValidity(message);
        alert(message);
        return false;
    } else {
        document.getElementById("card").setCustomValidity("");
    }
    
    var exp = document.getElementById("exp").value;
    if (exp.trim() === "") {
        message = "Please fill in the experation date.";
        document.getElementById("exp").setCustomValidity(message);
        alert(message);
        return false;
    } else {
        document.getElementById("exp").setCustomValidity("");
    }
    
    var cvc = document.getElementById("cvc").value;
    if (cvc.trim() === "") {
        message = "Please fill in the cvc.";
        document.getElementById("cvc").setCustomValidity(message);
        alert(message);
        return false;
    } else {
        document.getElementById("cvc").setCustomValidity("");
    }
    
    return true;
}