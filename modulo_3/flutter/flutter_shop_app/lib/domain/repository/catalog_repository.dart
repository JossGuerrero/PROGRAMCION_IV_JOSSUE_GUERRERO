import '../model/product.dart';

abstract class CatalogRepository {
  Future<List<Product>> getProducts();
  Future<Product> getProduct(int id);
}
