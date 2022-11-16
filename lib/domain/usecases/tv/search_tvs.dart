import 'package:dartz/dartz.dart';
import '../../../../core/lib/common/failure.dart';
import 'package:ditonton/domain/entities/tv/tv.dart';
import 'package:ditonton/domain/repositories/tv_repository.dart';

class SearchTvs {
  final TvRepository repository;

  SearchTvs(this.repository);

  Future<Either<Failure, List<TV>>> execute(String query) {
    return repository.searchTvs(query);
  }
}
