import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv/tv.dart';
import 'package:ditonton/domain/usecases/tv/get_airing_today_tvs.dart';
import 'package:ditonton/domain/usecases/tv/get_on_the_air_tvs.dart';
import 'package:ditonton/domain/usecases/tv/get_popular_tvs.dart';
import 'package:ditonton/domain/usecases/tv/get_top_rated_tvs.dart';
import 'package:flutter/cupertino.dart';

class AiringTodayTvNotifier extends ChangeNotifier {
  var _airingTodayTvs = <TV>[];
  List<TV> get airingTodayTvs => _airingTodayTvs;

  RequestState _airingTodayState = RequestState.Empty;
  RequestState get airingTodayState => _airingTodayState;

  var _onTheAirTvs = <TV>[];
  List<TV> get onTheAirTvs => _onTheAirTvs;

  RequestState _onTheAirTvsState = RequestState.Empty;
  RequestState get onTheAirTvsState => _onTheAirTvsState;

  var _popularTvs = <TV>[];
  List<TV> get popularTvs => _popularTvs;

  RequestState _popularTvsState = RequestState.Empty;
  RequestState get popularTvsState => _popularTvsState;

  var _topRatedTvs = <TV>[];
  List<TV> get topRatedTvs => _topRatedTvs;

  RequestState _topRatedTvsState = RequestState.Empty;
  RequestState get topRatedTvsState => _topRatedTvsState;

  String _message = '';
  String get message => _message;

  AiringTodayTvNotifier({
    required this.getAiringTodayTvs,
    required this.getOnTheAirTvs,
    required this.getPopularTvs,
    required this.getTopRatedTvs,
  });

  final GetAiringTodayTvs getAiringTodayTvs;
  final GetOnTheAirTvs getOnTheAirTvs;
  final GetPopularTvs getPopularTvs;
  final GetTopRatedTvs getTopRatedTvs;

  Future<void> fetchAiringTodayTvs() async {
    _airingTodayState = RequestState.Loading;
    notifyListeners();

    final result = await getAiringTodayTvs.execute();
    result.fold(
      (failure) {
        _airingTodayState = RequestState.Error;
        _message = failure.message;
        notifyListeners();
      },
      (tvsData) {
        _airingTodayState = RequestState.Loaded;
        _airingTodayTvs = tvsData;
        notifyListeners();
      },
    );
  }

  Future<void> fetchOnTheAirTodayTvs() async {
    _onTheAirTvsState = RequestState.Loading;
    notifyListeners();

    final result = await getOnTheAirTvs.execute();
    result.fold(
      (failure) {
        _onTheAirTvsState = RequestState.Error;
        _message = failure.message;
        notifyListeners();
      },
      (tvsData) {
        _onTheAirTvsState = RequestState.Loaded;
        _onTheAirTvs = tvsData;
        notifyListeners();
      },
    );
  }

  Future<void> fetchPopularTvs() async {
    _popularTvsState = RequestState.Loading;
    notifyListeners();

    final result = await getPopularTvs.execute();
    result.fold(
      (failure) {
        _popularTvsState = RequestState.Error;
        _message = failure.message;
        notifyListeners();
      },
      (tvsData) {
        _popularTvsState = RequestState.Loaded;
        _popularTvs = tvsData;
        notifyListeners();
      },
    );
  }

  Future<void> fetchTopRatedTvs() async {
    _topRatedTvsState = RequestState.Loading;
    notifyListeners();

    final result = await getTopRatedTvs.execute();
    result.fold(
      (failure) {
        _topRatedTvsState = RequestState.Error;
        _message = failure.message;
        notifyListeners();
      },
      (tvsData) {
        _topRatedTvsState = RequestState.Loaded;
        _topRatedTvs = tvsData;
        notifyListeners();
      },
    );
  }
}
