import 'package:dartz/dartz.dart';
import 'package:core/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'on_the_air_tv_notifier_test.mocks.dart';

@GenerateMocks([GetOnTheAirTvs])
void main() {
  late MockGetOnTheAirTvs mockGetOnTheAirTvs;
  late OnTheAirTvNotifier notifier;
  late int listenerCallCount;

  setUp(() {
    listenerCallCount = 0;
    mockGetOnTheAirTvs = MockGetOnTheAirTvs();
    notifier = OnTheAirTvNotifier(getOnTheAirTvs: mockGetOnTheAirTvs)
      ..addListener(() {
        listenerCallCount++;
      });
  });

  final tTv = TV(
    backdropPath: 'backdropPath',
    genreIds: [1, 2, 3],
    id: 1,
    originalName: 'originalName',
    originalLanguage: 'originalLanguage',
    overview: 'overview',
    popularity: 1,
    posterPath: 'posterPath',
    firstAirDate: 'firstAirDate',
    name: 'name',
    voteAverage: 1,
    voteCount: 1,
  );

  final tTvList = <TV>[tTv];

  test('should change state to loading when usecase is called', () async {
    // arrange
    when(mockGetOnTheAirTvs.execute()).thenAnswer((_) async => Right(tTvList));
    // act
    notifier.fetchOnTheAirTvs();
    // assert
    expect(notifier.state, RequestState.Loading);
    expect(listenerCallCount, 1);
  });

  test('should change tvs data when data is gotten successfully', () async {
    // arrange
    when(mockGetOnTheAirTvs.execute()).thenAnswer((_) async => Right(tTvList));
    // act
    await notifier.fetchOnTheAirTvs();
    // assert
    expect(notifier.state, RequestState.Loaded);
    expect(notifier.tvs, tTvList);
    expect(listenerCallCount, 2);
  });

  test('should return error when data is unsuccessful', () async {
    // arrange
    when(mockGetOnTheAirTvs.execute())
        .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
    // act
    await notifier.fetchOnTheAirTvs();
    // assert
    expect(notifier.state, RequestState.Error);
    expect(notifier.message, 'Server Failure');
    expect(listenerCallCount, 2);
  });
}
