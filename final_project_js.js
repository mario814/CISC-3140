function display() {
  //Assigning the variable to the user input
  var firstName = document.getElementById("fname").value,
   lastName = document.getElementById("lname").value,
   gender = "UNSELECTED",
   address = document.getElementById("address").value,
   zipcode = document.getElementById("zipcode").value,
   city = document.getElementById("city").value;
   var phoneNumber = document.getElementById("phone").value;

  if(document.getElementById('male').checked == true) {   
    gender = "Male"; 
} else if (document.getElementById('female').checked == true){
   gender = "Female"; 

}


  // to print the input here
  document.getElementById("nameInfo").innerHTML =
    "<p><i>Delivery for:</i> <br>" + firstName + " " + lastName + "<br><b>Gender</b>:" + gender+"<br>"+
    "<b>Address: </b> " + address + " ," + city + "," + zipcode+"<br>"+
    "<b>PhoneNumber:</b> " + phoneNumber+"</p>";
}

function myFunction(x) {
  x.style.color = "red";
}

function normalColor(x) {
  x.style.color = "black";
}

