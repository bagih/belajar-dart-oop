enum OrderState { pending, processed, success }

class OrderStatus {
  void printStatus(OrderState orderState) {
    switch (orderState) {
      case OrderState.pending:
        print('pesanan sedang di pending');
        break;
      case OrderState.processed:
        print('pesanan sedang di proses');
        break;
      case OrderState.success:
        print('pesanan telah sukses di proses');
        break;
    }
  }
}

void main() {
  OrderStatus orderStatus = OrderStatus();
  orderStatus.printStatus(OrderState.processed);
}
