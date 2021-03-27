/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/*function is_url(str)
{
   var x = document.forms["video"]["vlink"].value;
  x =  /^(?:(?:https?|ftp):\/\/)?(?:(?!(?:10|127)(?:\.\d{1,3}){3})(?!(?:169\.254|192\.168)(?:\.\d{1,3}){2})(?!172\.(?:1[6-9]|2\d|3[0-1])(?:\.\d{1,3}){2})(?:[1-9]\d?|1\d\d|2[01]\d|22[0-3])(?:\.(?:1?\d{1,2}|2[0-4]\d|25[0-5])){2}(?:\.(?:[1-9]\d?|1\d\d|2[0-4]\d|25[0-4]))|(?:(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)(?:\.(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)*(?:\.(?:[a-z\u00a1-\uffff]{2,})))(?::\d{2,5})?(?:\/\S*)?$/;
        if (x.test(str))
        {
           alert("thank you");
          return true;
        }
        else
        {
          alert("not vaild link")  
          return false;
        }
 }*/
  function validatelink() { 
        var vlink = document.getElementById("vlink").value; 
        var pattern = /(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/; 
        if (pattern.test(vlink)) { 
           
            return true; 
        }  
            alert("Url is not valid!"); 
            return false; 
 
    } 
        
  function validateForm() {
  var x = document.forms["video"]["title"].value;
  if (x === "") {
    alert("title must be filled out");
    return false;
  }
 else{
     
     return true;
    
     
}
}   
function validate() {
  
    if (validatelink() && validateForm()  )
        document.getElementById("video").submit();
    else{
        alert("your link or title not vaild ")
    }
   
}