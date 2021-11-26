import "package:instax/common/models/instax_camera.dart";

List<InstaxCamera> get instaxCameraList => [
  InstaxCamera( 
    id: 1,
    title: "Mini Mint 7+",
    image: "assets/img/InstaxMini7plus_Mint_R.png",
    price: 49.90,
    color: 0xff70b1a1, 
    isLimited: true,
  ),
  InstaxCamera(
    id: 2,
    isLimited: true,
    title: "Mini Blue 7+",
    image: "assets/img/InstaxMini7plus_Blue_R.png",
    price: 50.90,
    color: 0xff77a0c6,
  ),
  InstaxCamera(
    id: 3,
    isLimited: true,
    title: "Mini Choral 7+",
    image: "assets/img/InstaxMini7plus_Choral_R.png",
    price: 51.90,
    color: 0xffb0463c,
  ),
  InstaxCamera(
    id: 4,
    isLimited: true,
    title: "Mini Pink 7+",
    image: "assets/img/InstaxMini7plus_Pink_R.png",
    price: 52.90,
    color: 0xfffcf9496,
  ),
  InstaxCamera(
    id: 5,
    isLimited: true,
    title: "Mini Lavender 7+",
    image: "assets/img/InstaxMini7plus_Lavender_R.png",
    price: 53.90,
    color: 0xff855f8c,
  ),
];