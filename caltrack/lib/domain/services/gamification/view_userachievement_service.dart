import 'package:caltrack/domain/models/gamification/view_userachievement_model.dart';
import 'package:caltrack/domain/repository/gamification/view_userachievement_repository.dart';

class UserAchievementsService {
  final UserAchievementsRepository _userAchievementsRepository;

  UserAchievementsService(this._userAchievementsRepository);

  Future<List<UserAchievementsModel>> fetchAllUserAchievements() async {
    try {
      return await _userAchievementsRepository.getAllUserAchievements();
    } catch (e) {
      throw Exception('Failed to load user achievements: $e');
    }
  }
}
