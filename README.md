# raddyator
Internet-enabled thermostat project

##Specs
+ Rails app with simple REST API running on Heroku which will recieve temperature data
+ Arduino with Ethernet (or wifi) shield and temperature sensor, which will POST to the Rails server every minute
+ Raspberry Pi with LCD touch screen which will display Rails web app and connected to Arduino #2 via USB. RPi will send serial command to Arduino to open or close circuit
+ Arduino #2 with relay, which will recieve serial command from RPi with data for setpoint, hysteresis,  and current temperature and toggle the relay appropriately.
+ Since heating system is either on or off, no PID algorithm will be involves.
