import 'package:last_project_clean/Weather/domain/entities/Weather.dart';
import 'package:last_project_clean/Weather/domain/repository/base_weather_repository.dart';

class GetWeatherByCountryName{
  final BaseWeatherRepository repository;

  GetWeatherByCountryName(this.repository);

  Future<Weather> execute(String cityName) async{
   return await repository.getWeatherByCityName(cityName);
  }
}