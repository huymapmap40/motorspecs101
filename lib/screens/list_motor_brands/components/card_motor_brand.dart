import 'package:flutter/material.dart';


class CardMotorBrand extends StatelessWidget {

  final String avatarLocation, brandName;
  final GestureTapCallback press;

  const CardMotorBrand({
    Key key,
    @required this.avatarLocation,
    @required this.brandName,
    @required this.press,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: <Widget>[
              Image.network(avatarLocation),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF343434).withOpacity(0.4),
                      Color(0xFF343434).withOpacity(0.15)
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: brandName,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ] 
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
