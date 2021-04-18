/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validateForm() {
    var message = null;
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
    return true;
}

function submit() {
    if (validateForm() === true) {
        $.ajax({
            type: "post",
            url: "/freelancer/signin",
            data: "user=" + $('#username').val() + "&pwd=" + $('#pwd').val(),
            success: function (msg) {
                if (msg == "ADMIN") {
                    location.href = "admin.jsp"
                } else if (msg == "USER") {
                    location.href = "index.jsp";
                }
            },
            error: function (xhr) {
                if (xhr.status === 403) {
                    alert("Password is incorrect!");
                }
            }
        });
    }
}