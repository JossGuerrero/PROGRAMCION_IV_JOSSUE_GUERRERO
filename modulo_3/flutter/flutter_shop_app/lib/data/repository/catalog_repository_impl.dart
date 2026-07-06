import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/model/product.dart';
import '../../domain/repository/catalog_repository.dart';
import '../remote/api/product_remote_datasource.dart';

class CatalogRepositoryImpl implements CatalogRepository {
  final ProductRemoteDatasource _datasource;

  CatalogRepositoryImpl(this._datasource);

  @override
  Future<List<Product>> getProducts() async {
    final response = await _datasource.getProducts();
    return response.results.cast<Product>();
  }

  @override
  Future<Product> getProduct(int id) => _datasource.getProduct(id);
}

final catalogRepositoryProvider = Provider<CatalogRepository>((ref) {
  return CatalogRepositoryImpl(ref.watch(productDatasourceProvider));
});
