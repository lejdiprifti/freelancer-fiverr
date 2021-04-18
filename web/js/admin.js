/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function getRows() {
    $.ajax({
            type: "get",
            url: "/freelancer/admin",
            success: function (msg) {
                msg = msg.slice(0, -2).concat("]");
                data = JSON.parse(msg);
                displayData(data);
            },
            error: function (xhr) {
                alert("ERROR!");
            }
        });
}

function displayData(data) {
    data.forEach(row => {
        if (row["paymentId"] != "null" && row["userType"] == "learner") {
            payment = "DONE";
        } else if (row["paymentId"] =="null" && row["userType"] == "learner") {
            payment = "NOT DONE";
        } else if (row["userType"] == "expert" || row["userType"] == "biller") {
            payment = "NOT APPLICABLE";
        }
        document.getElementById("body").innerHTML += "<th scope=\"row\">" +row["userId"] +"</th><td>" + row["firstname"] +"</td><td>" + row["lastname"] + "</td><td>"
        + row["username"] +"</td><td>" + row["userType"] + "</td><td>" + payment+"</td>" ;
    })
}

window.onload = getRows();