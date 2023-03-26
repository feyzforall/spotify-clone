import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spotifyclone/features/library/data/library_repository.dart';
import 'package:spotifyclone/features/library/domain/current_users_playlists.dart';
import 'package:spotifyclone/network/network_error.dart';
import 'package:spotifyclone/network/network_manager.dart';

void main() {
  final Dio dio = Dio();
  final NetworkManager networkManager = NetworkManager(dio);
  final LibraryRepository libraryRepository = LibraryRepository(networkManager);

  test(
    "Fetch Current User's Playlists, return [CurrentUsersPlaylists] if its success",
    () async {
      final response = await libraryRepository.fetchCurrentUserPlaylists();
      expect(response is Right<NetworkError, CurrentUsersPlaylists>, true);
    },
  );
}
