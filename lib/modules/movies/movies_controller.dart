import 'package:app_filmes/application/ui/messages/messages_mixin.dart';
import 'package:app_filmes/models/genres_model.dart';
import 'package:app_filmes/services/genres/genres_service.dart';
import 'package:get/get.dart';

class MoviesController extends GetxController with MessagesMixin {
  GenresService _genresService;
  final _message = Rxn<MessageModel>();
  final generos = <GenresModel>[].obs;

  MoviesController({
    required GenresService genresService,
  }) : _genresService = genresService;

  @override
  void onInit() {
    super.onInit();
    messageListener(_message);
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    try {
      final genres = await _genresService.getGenres();
      generos.assignAll(genres);
    } catch (e) {
      _message(MessageModel.error(
          title: 'Erro', message: 'Erro ao buscar os generos'));
    }
  }
}
