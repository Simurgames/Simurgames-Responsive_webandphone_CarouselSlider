import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/core/constants/color_constants.dart';
import 'package:web/core/extension/context_extension.dart';
import '../../../core/components/Card/ListCard.dart';
import '../../../core/components/Card/carouselSlider.dart';
import '../../../core/constants/border_constants.dart';
import '../../../core/constants/gradient_constants.dart';
import '../../../core/constants/padding_constants.dart';

class phone extends StatelessWidget {
  const phone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      gradientBack(),
      waveBack(context),
      profMainPage(context),
      bottomContainer(context)
    ]);
  }

  Padding bottomContainer(BuildContext context) {
    return Padding(
        padding: PaddingConstants.instance.LowMediumPad,
        child: bottomColumn(context));
  }

  Column bottomColumn(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [decorAndTexts(context), bottomDecorAndTexts(context)]);
  }

  Padding bottomDecorAndTexts(BuildContext context) {
    return Padding(
        padding: PaddingConstants.instance.HardLowPad,
        child: bottomdecorAlign(context));
  }

  Align bottomdecorAlign(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight, child: bottomdecorWrap(context));
  }

  Wrap bottomdecorWrap(BuildContext context) {
    return Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.end,
        spacing: 5,
        children: [bottomwraptext1(context), bottomdecortext2(context)]);
  }

  Text bottomdecortext2(BuildContext context) {
    return Text("Live in İstanbul",
        style: Theme.of(context).textTheme.subtitle2?.copyWith(
            color: ColorConstants.instance.White, fontWeight: FontWeight.w500));
  }

  Text bottomwraptext1(BuildContext context) {
    return Text("Born in 2001",
        style: Theme.of(context).textTheme.subtitle2?.copyWith(
            color: ColorConstants.instance.White, fontWeight: FontWeight.w300));
  }

  Container decorAndTexts(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: ColorGradientConstants.instance.BlueGradient,
            borderRadius: BorderConstants.instance.VeryLowBorder,
            border: Border.all(color: ColorConstants.instance.DodgerBlue)),
        child: padText(context));
  }

  Padding padText(BuildContext context) {
    return Padding(
        padding: PaddingConstants.instance.HardLowPad, child: wrapPer(context));
  }

  Wrap wrapPer(BuildContext context) {
    return Wrap(
        runSpacing: 8, children: [titleText(context), headText(context)]);
  }

  Text titleText(BuildContext context) {
    return Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam",
        style: Theme.of(context).textTheme.subtitle2?.copyWith(
            color: ColorConstants.instance.White, fontWeight: FontWeight.w300));
  }

  Text headText(BuildContext context) {
    return Text("Bir Hikayenin Doğuşu",
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: ColorConstants.instance.White, fontWeight: FontWeight.w500));
  }

  Padding profMainPage(BuildContext context) {
    return Padding(
        padding: PaddingConstants.instance.LowPad, child: columnProf(context));
  }

  Column columnProf(BuildContext context) {
    return Column(children: [
      Expanded(
          flex: 2,
          child: GostergeCard(
              Deg1: "Adnan Şevki Kaşıkçı",
              Deg2: "Mobil ve Web Geliştirici & UI/UX Tasarımcı")),
      Expanded(flex: 7, child: buildCarouselSlider(context)),
      Expanded(flex: 3, child: Container())
    ]);
  }

  Container waveBack(BuildContext context) {
    return Container(
        width: context.dynwidth(1),
        child: Image.asset("assets/home/general_items/wave.png",
            fit: BoxFit.fill));
  }

  Container gradientBack() {
    return Container(
        decoration: BoxDecoration(
            gradient: ColorGradientConstants.instance.PurpleGradient));
  }
}
