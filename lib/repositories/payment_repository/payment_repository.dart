import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:liqpay/liqpay.dart';
import 'package:uuid/uuid.dart';

class PaymentRepository {
  Future<bool> buyCourse(
    String cardNum,
    String expMonth,
    String expYear,
    String cvv,
    String summ,
  ) async {
    try {
      final liqPay = LiqPay(
        dotenv.env['LIQPAY_PUBLIC_KEY']!,
        dotenv.env['LIQPAY_SECRET_KEY']!,
      );
      final card = LiqPayCard(cardNum, expMonth, expYear, cvv);
      final order = LiqPayOrder(
        const Uuid().v4(),
        1,
        'Test',
        card: card,
        action: LiqPayAction.pay,
      );
      final purchaseResult = await liqPay.purchase(order);
      if (purchaseResult.status == 'success') {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
