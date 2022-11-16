import 'package:dartz/dartz.dart';
import '../../../../core/lib/common/failure.dart';
import 'package:ditonton/domain/entities/tv/tv.dart';
import 'package:ditonton/domain/repositories/tv_repository.dart';

class GetOnTheAirTvs {
  final TvRepository repository;

  GetOnTheAirTvs(this.repository);

  Future<Either<Failure, List<TV>>> execute() {
    return repository.getOnTheAirTvs();
  }
}
