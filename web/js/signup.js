/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function passvalid() {
   var pwd = document.getElementById("pwd").value;
  var cpwd = document.getElementById("cpwd").value;
  if (pwd !== cpwd)
  {
    document.getElementById("cpwd").setCustomValidity("Passwords do not match");
    return false;
  } else {
    document.getElementById("cpwd").setCustomValidity("");
  }
      return true;
}

function redirectToPayment() {
    var userType = document.getElementById("userType").value;
    if (userType === "learner") {
        location.href = "payment.jsp";
    } else if (userType === "expert") {
        location.href = "index.jsp";
    }
}


function submit() {
    if (passvalid() === true) {
        redirectToPayment();
    }
}