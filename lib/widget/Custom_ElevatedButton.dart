import 'package:material_ui/material_ui.dart';

class Custom_ElevatedButton extends StatelessWidget {
  const new({
    super.key, required this.buttonText, this.onPressed,

  });
  final String buttonText;
  final Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (
        ){}, child: Text( buttonText, style: TextStyle(fontSize: 15, fontWeight: .w700,color: Colors.black),),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 130,
            vertical: 15,
          ),
          elevation: 5,
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(12)
          ),

      ),

    );
  }
}



