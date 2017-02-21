$('document').ready(function() {
  if ("geolocation" in navigator) {
 		//Browser has geolocation

    var options = {
    enableHighAccuracy: true // retrieve more accurate positon, takes longer
    }

		navigator.geolocation.getCurrentPosition(onLocation, onError, options);
	}
	else {
		console.log("Error")
		//Browser does not have geolocation
	}

  function onLocation(position){
		$("div").html("<img src='https://maps.googleapis.com/maps/api/staticmap?maptype=roadmap&center=" + position.coords.latitude + "," + position.coords.longitude + "&zoom=14&size=640x400&markers=color:blue%7Clabel:M%7C" + position.coords.latitude + "," + position.coords.longitude + "&key=AIzaSyBgGKMyzu8ZwrP-Kpk-zsHJNK8DYSJQVLc' alt='map'>");
	}


	function onError(error){
		console.log(error);
	}



  });
