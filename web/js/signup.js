/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
    var username = document.getElementById("username").value;
    if (username.trim() === "") {
        message = "Please fill in the username.";
        document.getElementById("username").setCustomValidity(message);
        alert(message);
        return false;
    } else {
        document.getElementById("username").setCustomValidity("");
    }

    var pwd = document.getElementById("pwd").value;
    if (pwd.trim() === "") {
        message = "Please fill in the password.";
        document.getElementById("pwd").setCustomValidity(message);
        alert(message);
        return false;
    } else {
        document.getElementById("pwd").setCustomValidity("");
    }
    var cpwd = document.getElementById("cpwd").value;
    if (cpwd.trim() === "") {
        message = "Please fill in the confirm password.";
        document.getElmentById("cpwd").setCustomValidity(message);
        alert(message);
        return false;
    } else {
        document.getElementById("cpwd").setCustomValidity("");
    }
    var securityAnswer = document.getElementById("securityAnswer").value;
    if (securityAnswer.trim() === "") {
        message = "Please fill in the security answer.";
        document.getElementById("securityAnswer").setCustomValidity(message);
        alert(message);
        return false;
    } else {
        document.getElementById("securityAnswer").setCustomValidity("");
    }
    return true;
}

function passvalid() {
    var pwd = document.getElementById("pwd").value;
    var cpwd = document.getElementById("cpwd").value;
    if (pwd !== cpwd) {
        alert("Passwords do not match.");
        document.getElementById("cpwd").setCustomValidity("Passwords do not match");
        return false;
    } else {
        document.getElementById("cpwd").setCustomValidity("");
    }
    return true;
}

function submit() {
    if (validateForm() === true && passvalid() === true) {
        $.ajax({
            type: "post",
            url: "/freelancer/signup",
            data: "first=" + $('#first').val() + "&last=" + $('#last').val() + "&user=" + $('#username').val() + "&pwd=" + $('#pwd').val() + "&userType=" + $('#userType').val() + "&securityQuestion=" + $('#securityQuestion').val() + "&securityAnswer=" + $('#securityAnswer').val(),
            success: function () {
                var userType = document.getElementById("userType").value;
                if (userType === "learner") {
                    location.href = "payment.jsp";
                } else if (userType === "expert") {
                    location.href = "index.jsp";
                }
            },
            error: function (xhr) {
                if (xhr.status === 403) {
                    alert("Username already exists.");
                }
            }
        });
    }
}