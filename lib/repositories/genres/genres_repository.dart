import 'package:app_filmes/models/genres_model.dart';

abstract class GenresRepository {
  Future<List<GenresModel>> getGenres();
}
