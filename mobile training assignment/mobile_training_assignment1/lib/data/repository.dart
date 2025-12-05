
import 'package:mobile_training_assignment1/data/api_service.dart';

class Repository {
  final ApiService _apiService;

  Repository(this._apiService);

  Future<Map<String, dynamic>> login(String username, String password) {
    return _apiService.login(username, password);
  }
}
