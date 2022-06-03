import '../const/assets.dart';

class Playlist {
  final String title;
  final String subtitle;
  final String image;

  Playlist(this.title, this.subtitle, this.image);
}

List<Playlist> playlists = [
  Playlist('Türkçe Rock', 'Musa Villads', Assets.placeholder),
  Playlist('Türkçe Pop', 'Krishna Nekesa', Assets.placeholder1),
  Playlist('Elektronik', 'Akeem Hauzini', Assets.placeholder2),
  Playlist('Techno', 'Muhsin Vercingetorix', Assets.placeholder3),
  Playlist('Beast Mode', 'Kit Edgardo', Assets.placeholder4),
  Playlist('Türkçe Rock', 'Musa Villads', Assets.placeholder),
  Playlist('Türkçe Pop', 'Krishna Nekesa', Assets.placeholder1),
  Playlist('Elektronik', 'Akeem Hauzini', Assets.placeholder2),
  Playlist('Techno', 'Muhsin Vercingetorix', Assets.placeholder3),
  Playlist('Beast Mode', 'Kit Edgardo', Assets.placeholder4),
];
