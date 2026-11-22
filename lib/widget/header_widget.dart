import 'package:flutter/cupertino.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key, required this.amount});
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      children: [
        Image.asset("asset/images/bd.png", height: 80,),
        Text(
         amount,
          style: TextStyle(
            fontWeight: .w500,
            fontSize: 100,
          ),
        )
      ],
    );
  }
}
