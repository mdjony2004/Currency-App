import 'package:material_ui/material_ui.dart';

class Custom_TextFromField extends StatelessWidget {
  const new({
    super.key,required this.textEditingController,
  });
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(),
      decoration: InputDecoration(
        labelText: "Enter Your Ammount ",
        labelStyle: TextStyle(color: Colors.black, fontSize: 20),
        prefixIcon: Icon(Icons.lock),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.black ,width:1 )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.blue ,width:1 )
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.red ,width:1 )
        ),
      ),
      validator: (value) {
        if(value == null || value.trim().isEmpty){
          return "Please Enter ammount";
        }
        if(double.tryParse(value)== null){
          return "Its not a valid number";
        }
        return null;
      },
    );
  }
}