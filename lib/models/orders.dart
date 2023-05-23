class Order {
  final bool pricePending;
  final String startPoint;
  final String startdate;
  final String dropPoint;
  final String dropDate;
  final String loadDeatils;
  final String orderNumber;

  const Order({
    required this.pricePending,
    required this.startPoint,
    required this.dropPoint,
    required this.dropDate,
    required this.startdate,
    required this.loadDeatils,
    required this.orderNumber,
  });
}
