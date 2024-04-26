import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
   
   //Pinceles
   final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke; 
    final rect = Rect.fromLTWH(size.width/2-25, size.height/2 - 150, 50, 50);

    final paint2 = Paint()
    ..color = Colors.red
    ..strokeWidth = 5.0
    ..style = PaintingStyle.stroke;

    final paint3 = Paint()
      ..color = Colors.yellow
      ..strokeWidth = 3.0
      ..style = PaintingStyle.fill;

    final paint4 = Paint()
      ..color = Colors.orange
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke;

    final paint5 = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5.0
      ..style = PaintingStyle.fill;
      final rect2 = Rect.fromLTWH(size.width/2-25, size.height/2 + 125, 50, 50);
    
    final paint6 = Paint()
      ..color = Color.fromARGB(255, 255, 251, 255)
      ..strokeWidth = 5.0
      ..style = PaintingStyle.fill;


    final textPainter = TextPainter(
      text: const TextSpan(
        text: 'Rudy Oloroso',
        style: TextStyle(color: Colors.black, fontSize: 20),
      ),
       textDirection: TextDirection.ltr,
    );

    final rect3 = Rect.fromLTWH(size.width/2-100, size.height/2 + 50, 200, 150);
    final rect4 = Rect.fromLTWH(size.width/2-150, size.height/2 - 25, 300, 150);
    
    //Dibujos
    canvas.drawOval(rect3, paint2);
    canvas.drawRect(rect4, paint6);

    canvas.drawRect(rect, paint);

    canvas.drawLine(
        Offset((size.width - size.width) + 10, size.height / 2 - 60),
        Offset(size.width - 10, size.height / 2 - 60),
        paint2);

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 30, paint3);

    canvas.drawCircle(Offset(size.width / 2, size.height / 2 + 75), 30, paint4);

    canvas.drawRect(rect2, paint5);

    textPainter.layout();
    textPainter.paint(canvas, Offset(size.width / 2 - 60, size.height / 2 + 135));

    } 

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; 
  }
}
