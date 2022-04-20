import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Data {
  static Data instance = Data._init();

  final Iconstill = <IconData>[
    Icons.houseboat,
    Icons.whatshot,
    Icons.code,
    Icons.model_training,
    Icons.api,
    Icons.leaderboard
  ];

  final List ImagesStill = [
    "Karakteristlik Still",
    "Sosyal Medya Hesapları",
    "Web Mobil Programlama",
    "Grafik Tasarımda Eserler",
    "3 Boyutlu Modelleme",
    "Ortaya Konmuş Projeler"
  ];
  final List identificationCardHeadline = [
    "Kendimi Tanıtıyorum",
    "Sosyal Medyada ",
    "Programlamada ve Kodlama",
    "Tasarımlar",
    "Modellemeler",
    "Projeler"
  ];
  final List subtitle = [
    "Hobiler, Eğlenceli Görseller, Hedeflerim ve Planlarım ve Karakterimle ilgili detaylara yer veriyorum.",
    "Instagram, Youtube, Github, Behance, Opensea, Playstoredeki çalışmalarıma yer veriyorum.",
    "Tasarladığım projeleri üretime geçirmek için yazdığım kodlamalar ve programlama dilleri.",
    "Tasarımlara daha detaylı bakabileceğiniz bir bölüm hangi programlarla nasıl tasarladım?",
    "3 Boyutlu Modellerimin olduğu bölüm burada bu konulardaki yetkinliklerimi anlatıyorum.",
    "Projlerle Hareket ederek iş bitirici sonuca ulaştırıcı olduğum projeler var",
  ];
  final List identificationCardHeadline2 = [
    "Kişisel Düşünce",
    "Sanal Hesaplar",
    "Yazılım Dünyası",
    "Yaratıcı Fikir",
    "Boyutlandırmalarla",
    "Projeler Hakkında"
  ];
  final List subtitle2 = [
    "Yaşantılarımdan karelere yer verdiğim bölüm",
    "Takip edip paylaşımlardan haberdar olabilirsin!",
    "Hangi programlama dillerini biliyorum.",
    "Tasarlamak üretmenin heyecanı!",
    "Nesnelere üçüncü boyuttan bakmamızın önemi.",
    "Tecrübeleri bir oluşuma dönüştürdüğüm bölüm."
  ];

  Data._init();
}
