import 'package:isar/isar.dart';
import 'package:selfradio/data/models/song.dart';

part 'playlist.g.dart';

@Collection()
class Playlist {
  Id id = Isar.autoIncrement;

  late String name;
  late String cover;

  DateTime lastModified = DateTime.now();

  final songs = IsarLinks<Song>();
}