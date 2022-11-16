// Mocks generated by Mockito 5.3.0 from annotations
// in ditonton/test/presentation/pages/tv/tv_detail_page_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;
import 'dart:ui' as _i4;

import 'package:core/core.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeGetTvDetail_0 extends _i1.SmartFake implements _i2.GetTvDetail {
  _FakeGetTvDetail_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeGetTvRecommendations_1 extends _i1.SmartFake
    implements _i2.GetTvRecommendations {
  _FakeGetTvRecommendations_1(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeGetWatchListTvStatus_2 extends _i1.SmartFake
    implements _i2.GetWatchListTvStatus {
  _FakeGetWatchListTvStatus_2(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeSaveWatchlistTvs_3 extends _i1.SmartFake
    implements _i2.SaveWatchlistTvs {
  _FakeSaveWatchlistTvs_3(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeRemoveWatchlistTvs_4 extends _i1.SmartFake
    implements _i2.RemoveWatchlistTvs {
  _FakeRemoveWatchlistTvs_4(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeTVDetail_5 extends _i1.SmartFake implements _i2.TVDetail {
  _FakeTVDetail_5(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

/// A class which mocks [TvDetailNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvDetailNotifier extends _i1.Mock implements _i2.TvDetailNotifier {
  MockTvDetailNotifier() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.GetTvDetail get getTvDetail =>
      (super.noSuchMethod(Invocation.getter(#getTvDetail),
              returnValue:
                  _FakeGetTvDetail_0(this, Invocation.getter(#getTvDetail)))
          as _i2.GetTvDetail);
  @override
  _i2.GetTvRecommendations get getTvRecommendations =>
      (super.noSuchMethod(Invocation.getter(#getTvRecommendations),
              returnValue: _FakeGetTvRecommendations_1(
                  this, Invocation.getter(#getTvRecommendations)))
          as _i2.GetTvRecommendations);
  @override
  _i2.GetWatchListTvStatus get getWatchListTvStatus =>
      (super.noSuchMethod(Invocation.getter(#getWatchListTvStatus),
              returnValue: _FakeGetWatchListTvStatus_2(
                  this, Invocation.getter(#getWatchListTvStatus)))
          as _i2.GetWatchListTvStatus);
  @override
  _i2.SaveWatchlistTvs get saveWatchlistTvs => (super.noSuchMethod(
      Invocation.getter(#saveWatchlistTvs),
      returnValue: _FakeSaveWatchlistTvs_3(
          this, Invocation.getter(#saveWatchlistTvs))) as _i2.SaveWatchlistTvs);
  @override
  _i2.RemoveWatchlistTvs get removeWatchlistTvs =>
      (super.noSuchMethod(Invocation.getter(#removeWatchlistTvs),
              returnValue: _FakeRemoveWatchlistTvs_4(
                  this, Invocation.getter(#removeWatchlistTvs)))
          as _i2.RemoveWatchlistTvs);
  @override
  _i2.TVDetail get tv => (super.noSuchMethod(Invocation.getter(#tv),
          returnValue: _FakeTVDetail_5(this, Invocation.getter(#tv)))
      as _i2.TVDetail);
  @override
  _i2.RequestState get tvState =>
      (super.noSuchMethod(Invocation.getter(#tvState),
          returnValue: _i2.RequestState.empty) as _i2.RequestState);
  @override
  List<_i2.TV> get tvRecommendations =>
      (super.noSuchMethod(Invocation.getter(#tvRecommendations),
          returnValue: <_i2.TV>[]) as List<_i2.TV>);
  @override
  _i2.RequestState get recommendationState =>
      (super.noSuchMethod(Invocation.getter(#recommendationState),
          returnValue: _i2.RequestState.empty) as _i2.RequestState);
  @override
  String get message =>
      (super.noSuchMethod(Invocation.getter(#message), returnValue: '')
          as String);
  @override
  bool get isAddedToWatchlist =>
      (super.noSuchMethod(Invocation.getter(#isAddedToWatchlist),
          returnValue: false) as bool);
  @override
  String get watchlistMessage =>
      (super.noSuchMethod(Invocation.getter(#watchlistMessage), returnValue: '')
          as String);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  _i3.Future<void> fetchTVDetail(int? id) => (super.noSuchMethod(
      Invocation.method(#fetchTVDetail, [id]),
      returnValue: _i3.Future<void>.value(),
      returnValueForMissingStub: _i3.Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> addWatchlist(_i2.TVDetail? tv) => (super.noSuchMethod(
      Invocation.method(#addWatchlist, [tv]),
      returnValue: _i3.Future<void>.value(),
      returnValueForMissingStub: _i3.Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> removeFromWatchlist(_i2.TVDetail? tv) => (super.noSuchMethod(
      Invocation.method(#removeFromWatchlist, [tv]),
      returnValue: _i3.Future<void>.value(),
      returnValueForMissingStub: _i3.Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> loadWatchlistStatus(int? id) => (super.noSuchMethod(
      Invocation.method(#loadWatchlistStatus, [id]),
      returnValue: _i3.Future<void>.value(),
      returnValueForMissingStub: _i3.Future<void>.value()) as _i3.Future<void>);
  @override
  void addListener(_i4.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i4.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
}
