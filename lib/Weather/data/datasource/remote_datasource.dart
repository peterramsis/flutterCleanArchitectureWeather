import 'package:dio/dio.dart';
import 'package:last_project_clean/Weather/data/models/WeatherModels.dart';
import 'package:last_project_clean/core/utils/AppConstans.dart';

abstract class BaseRemoteDataSource{
 Future<WeatherModel?> getWeatherByCountryName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource{
  @override
  Future<WeatherModel?> getWeatherByCountryName(String cityName) async {
    try{
      var response = await Dio().get("${AppConstance.baseUrl}/weather?q=${cityName}&appid=${AppConstance.appKey}");
      print("click");
      print(response.data);
      return WeatherModel.fromJson(response.data);
    }catch(e){
      print(e);
      return null;
    }
  }

}