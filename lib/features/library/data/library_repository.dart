import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../const/endpoints.dart';
import '../../../network/network_error.dart';
import '../../../network/network_manager.dart';
import '../domain/current_users_playlists.dart';

abstract class ILibraryRepository {
  Future<Either<NetworkError, CurrentUsersPlaylists>> fetchCurrentUserPlaylists();
}

class LibraryRepository extends ILibraryRepository {
  final NetworkManager networkManager;

  LibraryRepository(this.networkManager);

  @override
  Future<Either<NetworkError, CurrentUsersPlaylists>> fetchCurrentUserPlaylists() async {
    try {
      final response = await networkManager.get(Endpoints.currentUserPlaylists);
      final playlists = CurrentUsersPlaylists.fromJson(response.data);
      return Right(playlists);
    } on DioError catch (error) {
      return Left(NetworkError.fromJson(error.response?.data));
    }
  }
}
