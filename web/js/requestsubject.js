/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function submit() {
   if (validateForm() === true) {
       location.href = "requestaction.jsp?subrequest=" + document.getElementById("subrequest").value +
               "&comment=" + document.getElementById("comment").value;
   }
}

function validateForm() {
      var message = null;
    var subrequest = document.getElementById("subrequest").value;
    if (subrequest.trim() === "") {
        message = "Please fill in the subject request name.";
        document.getElementById("subrequest").setCustomValidity(message);
        alert(message);
        return false;
    } else {
        document.getElementById("subrequest").setCustomValidity("");
    }
    
    var comment = document.getElementById("comment").value;
    if (comment.trim() === "") {
        message = "Please fill in the comment.";
        document.getElementById("comment").setCustomValidity(message);
        alert(message);
        return false;
    } else {
        document.getElementById("comment").setCustomValidity("");
    }    
    return true;
}

function reset() {
    document.getElementById("comment").value = "";
    document.getElementById("subrequest").value = "";
}