Config.create!([
  {key: "setpoint", value: "71"},
  {key: "mode", value: "hold"},
  {key: "units", value: "f"},
  {key: "location", value: "Brooklyn"},
  {key: "range", value: "3"}
])
Datum.create!([
  {temp: 64.0, sensor_id: 1, humidity: nil},
  {temp: 22.0, sensor_id: nil, humidity: nil},
  {temp: 99.0, sensor_id: 2, humidity: nil},
  {temp: 88.0, sensor_id: 2, humidity: nil},
  {temp: 63.0, sensor_id: 1, humidity: nil},
  {temp: 67.0, sensor_id: 2, humidity: nil},
  {temp: 77.0, sensor_id: 2, humidity: nil},
  {temp: 75.0, sensor_id: 2, humidity: nil},
  {temp: 24.0, sensor_id: 1, humidity: 28.0},
  {temp: 75.2, sensor_id: 1, humidity: 28.0},
  {temp: 71.6, sensor_id: 1, humidity: 30.0},
  {temp: 67.0, sensor_id: 1, humidity: nil}
])
Program.create!([
  {day: "Monday", am_on: "6:00", am_off: "9:00", pm_on: "4:00", pm_off: "11:59"}
])
