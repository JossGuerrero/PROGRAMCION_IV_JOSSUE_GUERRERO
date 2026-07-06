import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/model/order.dart';
import '../../domain/repository/order_repository.dart';
import '../remote/api/order_remote_datasource.dart';

class OrderRepositoryImpl implements OrderRepository {
  final OrderRemoteDatasource _datasource;

  OrderRepositoryImpl(this._datasource);

  @override
  Future<List<Order>> getOrders() async {
    final response = await _datasource.getOrders();
    return response.results.cast<Order>();
  }

  @override
  Future<Order> getOrder(int id) => _datasource.getOrder(id);
}

final orderRepositoryProvider = Provider<OrderRepository>((ref) {
  return OrderRepositoryImpl(ref.watch(orderDatasourceProvider));
});
