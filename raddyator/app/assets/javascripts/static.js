


var weatherCall = function(){
	$.ajax({
			type: "GET",
			url: "http://api.openweathermap.org/data/2.5/weather?q=Brooklyn&units=imperial&appid=44db6a862fba0b067b1930da0d769e98",
			success: function(data){
				console.log(data);
				console.log(data.main.temp);
				$(".current-temp").text(data.main.temp);
				$(".current-weather").text(data.weather[0].main);


			}
		});
};

var async = window.setTimeout(weatherCall(), 0);



