import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instax/common/models/instax_camera.dart';
import 'package:instax/presentation/page/detail.dart';

class InstaxCard extends StatelessWidget {

  final InstaxCamera cameraData;
  InstaxCard({required this.cameraData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(
              color: Color(cameraData.color),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cameraData.isLimited ? "Limited Edition" : "New",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 10.0),
                RichText(
                  text: TextSpan(
                    text: "Instax ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: cameraData.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        )
                      )
                    ]
                  )
                ),
                const SizedBox(height: 10.0),
                Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Container(
                          height: 27,
                          child: Icon(
                            FontAwesomeIcons.dollarSign,
                            color: Colors.white,
                          ),
                        )
                      ),
                      TextSpan(
                      text: cameraData.price.toStringAsFixed(2),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 28,
                        ),
                      ),
                    ]
                  ),
                ),
                const SizedBox(height: 10.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 10.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {
                      Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (_) {
                          return Detail(cameraData);
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Buy',
                    style: TextStyle(
                      color: Color(cameraData.color),
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            top: 20.0,
            bottom: 20.0,
            child: Image.asset(
              cameraData.image,
              height: 150.0,
            ),
          ),
        ],
      ),
    );
  }
}