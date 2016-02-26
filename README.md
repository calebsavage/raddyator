# raddyator
Internet-enabled thermostat project

## Problem
My apartment, like many others, has one thermostat which barely works to control the radiators in multiple rooms with different sizes and heat retention characteristics. It measures the temperature in one location which may not be represenatative of the temp in each room. Some rooms get too cold, others get too hot.



##Specs
+ Rails app with simple REST API running on Heroku which will recieve temperature data
+ Rails app will log data and provide visual analytics (chart.js?) to track energy usage
+ Postgres to store historical temperature data
+ Multiple Arduino units with Ethernet (or wifi) shield and temperature sensor, which will POST to the Rails server every minute
+ Raspberry Pi with LCD touch screen which will display Rails web app and connected to Arduino #2 via USB. RPi will send serial command to Arduino to open or close circuit
+ Arduino #2 with relay, which will recieve serial command from RPi with data for setpoint, hysteresis,  and current temperature and toggle the relay appropriately.
+ Since heating system is either on or off, no PID algorithm will be involves.

##Reach Goal
+ Implement a system where users can vote on the desired tempreature of the space
