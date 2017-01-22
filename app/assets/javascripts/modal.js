window.onload = function(){

  var modal = document.getElementById('myModal');

  var btn = document.getElementById("myBtn");

  var span = document.getElementsByClassName("close")[0];

  btn.onclick = function(event) {
    event.preventDefault();
    modal.style.display = "block"
  }

  span.onclick = function() {
      modal.style.display = "none";
  }

  window.onclick = function(event) {
      if (event.target == modal) {
          modal.style.display = "none";
      }
  }

  // var myIndex = 0;
  // carousel();
  //
  // function carousel() {
  //     var i;
  //     var x = document.getElementsByClassName("mySlides");
  //     for (i = 0; i < x.length; i++) {
  //        x[i].style.display = "none";
  //     }
  //     myIndex++;
  //     if (myIndex > x.length) {myIndex = 1}
  //     x[myIndex-1].style.display = "block";
  //     setTimeout(carousel, 2000);
  // }
};
