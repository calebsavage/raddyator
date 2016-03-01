$(window).load(function(){


var weatherCall = function(){
	$.ajax({
			type: "GET",
			url: "http://api.openweathermap.org/data/2.5/weather?q=Brooklyn&units=imperial&appid=44db6a862fba0b067b1930da0d769e98",
			success: function(data){
				console.log(data);
				console.log(data.main.temp);
				$(".current-temp").text(data.main.temp + "°");
				$(".current-weather").text(data.weather[0].main);


			}
		});
};



var updateSetPoint = function(){
	$.ajax({
		type: "GET",
		url: "http://localhost:3000/csp",
		success: function(data){
			console.log("csp: " + data);
			$(".csp").text(data + "°")
		}	
	});
}


var spu = function(){ //setpoint up
	$.ajax({
		type: "GET",
		url: "http://localhost:3000/spu",
		success: function(data){
			console.log("spu " + data);
			//do something
		}
	});
}

var spd = function(){ //setpoint down
	$.ajax({
		type: "GET",
		url: "http://localhost:3000/spd",
		success: function(data){
			console.log("spd " + data);
			//do something
		}
	});
}

var cit = function(){ //current indoor temp
	$.ajax({
		type:"GET",
		url: "http://localhost:3000/cit",
		success: function(data){
			console.log("cit " + data);
			$(".cit").text(data + "°");
		}
	})
}

var render = function(){
	updateSetPoint();
	cit();
	window.setTimeout(weatherCall(), 0);

}

$(".up").on("click", function(){
	spu();
	render();

});

$(".down").on("click", function(){
	spd();
	render();

});


$(".test").click(function(){
	console.log("test");
})

render();
})