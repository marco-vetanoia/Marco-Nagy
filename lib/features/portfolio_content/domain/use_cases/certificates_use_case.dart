import 'package:injectable/injectable.dart';

import '../../../../core/common/data_result.dart';
import '../entities/certificate.dart';
import '../repositories/portfolio_repo.dart';

@injectable
class CertificatesUseCase {
  const CertificatesUseCase(this._repo);

  final PortfolioRepo _repo;

  Future<DataResult<List<Certificate>>> getAll() => _repo.getCertificates();

  Future<DataResult<List<Certificate>>> upsert(Certificate certificate) =>
      _repo.upsertCertificate(certificate);

  Future<DataResult<List<Certificate>>> delete(String id) =>
      _repo.deleteCertificate(id);
}
