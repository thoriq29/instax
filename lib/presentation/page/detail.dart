import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instax/common/models/instax_camera.dart';
import 'package:instax/presentation/widgets/description.dart';

class Detail extends StatelessWidget {
  final InstaxCamera cameraData;
  const Detail(this.cameraData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(
            width: 0.7,
            color: Colors.grey,
          ),
        ),
        leading: Container(
          margin: const EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Color(cameraData.color),
              width: 1,
            ),
          ),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color(cameraData.color),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        title: Image.asset(
          'assets/img/fujifilm-banner.png',
           height: 20,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(6.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.0),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                cameraData.image,
                width: MediaQuery.of(context).size.width / 1.7,
              ),
            ),
            const SizedBox(height: 42.0),
            RichText(
              text: TextSpan(
                text: "Instax ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
                children: [
                  TextSpan(
                    text: cameraData.title,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Color(
                        cameraData.color,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Be real and fun with the INSTAX MINI 7+ Cool design, colorful and compact, this instant camera is fun and esay to use. Point and shoot and girve your day some fun',
              style: TextStyle(),
            ),
            const SizedBox(height: 8.0),
            Description(title: "Point & Shoot", desc: 'Pop it in your wallet, stick it to your wall-the INSTAX Mini film brings you instant 2 x 3 sized photos you can show and tell.\n\nUsing professional hight-quality film technology (as you\'d expect from m Fujifilm), your festival frolicking, sun worshipping, crowd surfing memories that you print will transport you right back into that moment.'),
            Description(title: "Mini But With Full-Size Memories", desc: 'Pop it in your wallet, stick it to your wall-the INSTAX Mini film brings you instant 2 x 3 sized photos you can show and tell.\n\nUsing professional hight-quality film technology (as you\'d expect from m Fujifilm), your festival frolicking, sun worshipping, crowd surfing memories that you print will transport you right back into that moment.'),
            Description(title: "Mini Film", desc: "Mini moments with maximum impact. What’s your next mini moment?"),
            Description(title: "Plenty of Great Color Choices", desc: "Available in five awesome colors: Lavender, Seafoam Green, Coral, Light Pink & Light Blue"),
            Description(title: "The Mini 7+ Has Your Back", desc: "Depending upon the weather conditions, you can easily control brightness to obtain a great picture"),
            Description(title: "Fun All The Time", desc: "Live in the moment and enjoy your Mini 7+, and give your day some instant fun"),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        height: 90,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  WidgetSpan(
                    child: Container(
                      height: 27,
                      child: Icon(
                        FontAwesomeIcons.dollarSign,
                      ),
                    )
                  ),
                  TextSpan(
                  text: cameraData.price.toStringAsFixed(2),
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 28,
                    ),
                  ),
                ]
              )
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(cameraData.color),
                padding: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 0,
              ),
              onPressed: () {},
              child: const Text(
                'Buy Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}