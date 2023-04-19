

import 'package:last_project_clean/Weather/data/datasource/remote_datasource.dart';
import 'package:last_project_clean/Weather/domain/entities/Weather.dart';
import 'package:last_project_clean/Weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository{

  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);
  @override
  Future<Weather> getWeatherByCityName(String cityName) async{
    return (await baseRemoteDataSource.getWeatherByCountryName(cityName))!;
  }
  
}