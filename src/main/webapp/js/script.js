/**
 * 
 */
 
 var minus = document.querySelector(".decreaseQuantity");
	var add = document.querySelector(".increaseQuantity");
	var quantityNumber = document.querySelector(".item-quantity");
	var currentValue = 1;
	var currentQuantity = document.getElementById("item-quantity");
	minus.addEventListener("click", function(){
		currentValue -= 1;
		quantityNumber.value = currentValue;
//		setTimeout(updateCart(cartform), 2000);
	});
	
	add.addEventListener("click", function(){
		currentValue += 1;
		quantityNumber.value = currentValue;
		setTimeout(function(){
		}, 2000);
	});
 
 function updateCart() {
    callAjaxGet('http://localhost:8081/shoppingcart/shoppingCart', myResolve);
}

function callAjaxGet(url, myResolve) {
  const xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
    	myResolve(xhttp);
    }
  };
  xhttp.open("GET", url);
  xhttp.send();
}

