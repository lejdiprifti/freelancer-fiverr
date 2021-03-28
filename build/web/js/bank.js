/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function submit() {
    if (validateForm() === true && validateAccountNumber() === true){
        location.href = "thankyou.jsp";
    } 
}

function validateAccountNumber() {
    var account = document.getElementById("account").value;
  var caccount = document.getElementById("caccount").value;
  if (account !== caccount){
      alert("Account numbers do not match.");
    document.getElementById("caccount").setCustomValidity("Account numbers do not match");
    return false;
  } else {
    document.getElementById("caccount").setCustomValidity("");
  }
  return true;
}


function validateForm() {
    var message = null;
    var routing = document.getElementById("routing").value;
    if (routing === "") {
        message = "Please fill in the routing number";
        document.getElementById("routing").setCustomValidity(message);
        alert(message);
        return false;
    } else {
        document.getElementById("routing").setCustomValidity("");
    }
    
    var account = document.getElementById("account").value;
    if (account === "") {
        message = "Please fill in the account number.";
        document.getElementById("account").setCustomValidity(message);
        alert(message);
        return false;
    } else {
        document.getElementById("account").setCustomValidity("");
    }
    
    var caccount = document.getElementById("caccount").value;
    if (caccount === "") {
        message = "Please fill in the confirm account number.";
        document.getElementById("caccount").setCustomValidity(message);
        alert(message);
        return false;
    } else {
        document.getElementById("caccount").setCustomValidity("");
    }
    
    return true;
}
