import 'package:flutter/material.dart';
import 'weatherapi.dart';
import 'package:intl/intl.dart';

class WeatherForecast extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<WeatherForecast> {
  dynamic weatherData;

  @override
  void initState() {
    super.initState();
    getWeather();
  }

  void getWeather() async {
    var data = await WeatherApi.getWeather();
    setState(() {
      weatherData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Weather Forecast',
            style: TextStyle(fontFamily: 'Raleway'),
          ),
          backgroundColor: Color(0xFFEE4D5F),
          foregroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFEE4D5F),
                Color.fromARGB(255, 236, 171, 118),
              ],
            ),
          ),
          child: weatherData == null
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: weatherData.length,
                  itemBuilder: (context, index) {
                    var dateTime = DateTime.fromMillisecondsSinceEpoch(
                        weatherData[index]['dt'] * 1000);
                    var formattedTime = DateFormat.Hm().format(dateTime);
                    var iconImage;
                    switch (weatherData[index]['weather'][0]['main']) {
                      case 'Clear':
                        iconImage = 'assets/images/sun.png';
                        break;
                      case 'Rain':
                        iconImage = 'assets/images/rainy.png';
                        break;
                      case 'Clouds':
                        iconImage = 'assets/images/cloudy.png';
                        break;
                      case 'Smoke':
                        iconImage = 'assets/images/smoky.png';
                        break;
                      case 'Haze':
                        iconImage = 'assets/images/smoky.png';
                        break;
                      case 'Thunderstorm':
                        iconImage = 'assets/images/thunderstrom.png';
                        break;
                      default:
                        iconImage = 'assets/images/cloudy.png';
                    }
                    return ListTile(
                      leading: Image.asset(
                        iconImage,
                        height: 30,
                      ),
                      title: Text(
                        '${weatherData[index]['weather'][0]['description']}',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Raleway'),
                      ),
                      subtitle: Text(
                        '${weatherData[index]['main']['temp'].round()}°C',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Raleway'),
                      ),
                      trailing: Text(
                        formattedTime,
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Raleway'),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
