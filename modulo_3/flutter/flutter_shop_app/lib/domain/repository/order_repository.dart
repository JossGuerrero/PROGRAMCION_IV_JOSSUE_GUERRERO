import '../model/order.dart';

abstract class OrderRepository {
  Future<List<Order>> getOrders();
  Future<Order> getOrder(int id);
}
