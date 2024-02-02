import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expirationDateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: PaymentContainer(
          cardNumberController: cardNumberController,
          expirationDateController: expirationDateController,
          cvvController: cvvController,
          onPayPressed: () {

            print('Card Number: ${cardNumberController.text}');
            print('Expiration Date: ${expirationDateController.text}');
            print('CVV: ${cvvController.text}');
          },
        ),
      ),
    );
  }
}

class PaymentContainer extends StatelessWidget {
  final TextEditingController cardNumberController;
  final TextEditingController expirationDateController;
  final TextEditingController cvvController;
  final VoidCallback onPayPressed;

  PaymentContainer({
    required this.cardNumberController,
    required this.expirationDateController,
    required this.cvvController,
    required this.onPayPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextField(
          controller: cardNumberController,
          decoration: InputDecoration(labelText: 'Card Number'),
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 16.0),
        TextField(
          controller: expirationDateController,
          decoration: InputDecoration(labelText: 'Expiration Date'),
        ),
        SizedBox(height: 16.0),
        TextField(
          controller: cvvController,
          decoration: InputDecoration(labelText: 'CVV'),
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 32.0),
        ElevatedButton(
          onPressed: onPayPressed,
          child: Text('Pay'),
        ),
      ],
    );
  }
}
