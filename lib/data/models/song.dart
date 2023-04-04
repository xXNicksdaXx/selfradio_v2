import 'package:isar/isar.dart';
import 'package:selfradio/data/models/playlist.dart';

part 'song.g.dart';

@Collection()
class Song {
  Id id = Isar.autoIncrement;

  late String title;
  late List<String> artists;
  late List<String> feat;
  late String album;
  late String path;

  late DateTime lastModified = DateTime.now();

  @Backlink(to: 'songs')
  final playlists = IsarLinks<Playlist>();
}
