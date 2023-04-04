import 'package:isar/isar.dart';
import 'package:selfradio/data/models/playlist.dart';
import 'package:selfradio/data/models/song.dart';

Future<IsarService> initIsarService() async {
  final isar = await Isar.open([SongSchema, PlaylistSchema]);
  return IsarService(db: isar);
}

class IsarService {
  Isar db;

  IsarService({required this.db});

  IsarCollection<Song> get songs => db.collection<Song>();

  IsarCollection<Playlist> get playlists => db.collection<Playlist>();
}
