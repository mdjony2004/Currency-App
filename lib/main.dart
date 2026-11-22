import 'package:code_apk/CurrencyConverterscreen.dart';
import 'package:material_ui/material_ui.dart';


void main(){
  runApp(const MyCurrencyConverterApp());
}

class MyCurrencyConverterApp extends StatelessWidget {
  const MyCurrencyConverterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ("Currency Converter App"),
      home: Currencyconverterscreen(),
    );
  }
}
