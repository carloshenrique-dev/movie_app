import 'package:app_filmes/application/ui/loader/loader_mixin.dart';
import 'package:app_filmes/application/ui/messages/messages_mixin.dart';
import 'package:app_filmes/models/movie_detail_model.dart';
import 'package:app_filmes/services/movies/movies_service.dart';
import 'package:get/get.dart';

class DetailController extends GetxController with LoaderMixin, MessagesMixin {
  final MoviesService _moviesService;
  final _message = Rxn<MessageModel>();
  var loading = false.obs;
  var movie = Rxn<MovieDetailModel>();

  DetailController({
    required MoviesService moviesService,
  }) : _moviesService = moviesService;

  @override
  void onInit() {
    super.onInit();
    messageListener(_message);
    loaderListener(loading);
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    try {
      final movieId = Get.arguments;
      loading(true);
      final movieDetailData = await _moviesService.getDetail(movieId);
      movie.value = movieDetailData;
      loading(false);
    } catch (e, s) {
      print(e);
      print(s);
      loading(false);
      _message(
          MessageModel.error(title: 'Erro', message: 'Erro ao carregar dados'));
    }
  }
}
