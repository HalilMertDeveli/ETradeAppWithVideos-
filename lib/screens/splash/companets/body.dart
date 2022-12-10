import 'package:e_trade_app_with_flutter_way/constraints.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.05,
          ),
          Text(
            'TOKOTO',
            style: TextStyle(color: kTextColor, fontSize: 40),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Text(
            'Welcome the TOKOTO shop ,lets shop',
            style: TextStyle(fontSize: 17),
          ),
          Image.asset(
            'assets/images/splash_1.png',
            width: size.width * 0.7,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(49),
            child: Container(
              width: size.width * 0.7,
              child: MaterialButton(
                color: Colors.orange,
                onPressed: () {},
                child: Text('Continue'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
