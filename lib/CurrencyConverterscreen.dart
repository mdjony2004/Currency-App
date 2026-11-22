import 'package:code_apk/widget/Custom_ElevatedButton.dart';
import 'package:code_apk/widget/Custom_Text_FromField.dart';
import 'package:code_apk/widget/header_widget.dart';
import 'package:material_ui/material_ui.dart';

class Currencyconverterscreen extends StatefulWidget {
  const new ({super.key});

  @override
  State<Currencyconverterscreen> createState() => _CurrencyconverterscreenState();
}

class _CurrencyconverterscreenState extends State<Currencyconverterscreen> {
  late final TextEditingController controller;
  late final GlobalKey<FormState> key;
  double amount =0;

  @override
  void initState(){
    super.initState();
    controller= TextEditingController();
    key=GlobalKey<FormState>();
  }

  void submit(){
    if( key.currentState!.validate()){
      debugPrint("Nothig Wrong");
      amount = double.parse(controller.text.trim());

      amount*=122;
      setState(() {

            });
    }
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding:const EdgeInsetsGeometry.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: .center,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: HeaderWidget(amount: '$amount',),
              ),
              SizedBox(height: 20,),
              Form(
                key: key,
                child: Custom_TextFromField(textEditingController: controller),
              ),
              SizedBox(height: 20,),

              Custom_ElevatedButton(buttonText:'Convet', onPressed: submit, ),
            ],

          ),
          ),
      ),
    );
  }
}

