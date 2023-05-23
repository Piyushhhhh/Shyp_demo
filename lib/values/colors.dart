import 'package:flutter/material.dart';

class AppColors {
  static bool isLightMode = false;

  static Color primary() => const Color(0xFF21CE99);
  static Color accent() => const Color(0xFFF5AC6E);
  static Color positive() => const Color(0xFF00C287);
  static Color negative() => const Color(0xFFEA394E);

  static Color text({bool? lightMode}) =>
      lightMode ?? AppColors.isLightMode ? Colors.black : Colors.white;
  static Color fadeText({bool? lightMode}) => lightMode ?? AppColors.isLightMode
      ? const Color(0xFF49494D)
      : const Color(0xFFA8A8A8);
  static Color elementText({bool? lightMode}) =>
      lightMode ?? AppColors.isLightMode
          ? const Color(0xFFA8A8A8)
          : const Color(0xFFD8D8D8);
  static Color background({bool? lightMode}) =>
      lightMode ?? AppColors.isLightMode
          ? Color(0xFFF2F2F2)
          : Color(0xFF1C1E29);
  static Color containerBackground({bool? lightMode}) =>
      lightMode ?? AppColors.isLightMode ? Colors.white : Color(0xFF262C3A);
  static Color elementBackground({bool? lightMode}) =>
      lightMode ?? AppColors.isLightMode
          ? Color(0xFFF2F2F2)
          : Color(0xFF49494D);
  static Color elementBackground2({bool? lightMode}) =>
      lightMode ?? AppColors.isLightMode
          ? Color(0xFFF2F2F2)
          : Color(0xFF1A1A1B);
  static Color activeElementBackground({bool? lightMode}) =>
      lightMode ?? AppColors.isLightMode
          ? Color(0xFFD8D8D8)
          : Color(0xFF49494D);
  static Color whiteBlack({bool? lightMode}) =>
      lightMode ?? AppColors.isLightMode ? Colors.white : Colors.black;

  static Color portfolioEquity() => Color(0xFF21CE99);
  static Color portfolioDerivative() => Color(0xFFFFDC5D);
  static Color portfolioEtf() => Color(0xFF95A1C0);
  static Color portfolioMutualFund() => Color(0xFFF9A671);
  static Color portfolioCurrency() => Color(0xFFF3705A);
  static Color portfolioNft() => Color(0xFFBFC4CC);
  static Color portfolioCryptoToken() => Color(0xFF60B7FF);
  static Color portfolioCryptoProtocol() => Color(0xFF5B3F7B);
  static Color portfolioMetals() => Colors.teal;
  static Color portfolioPrivateEquity() => Colors.amber;
  static Color portfolioCollectible() => Colors.green;
  static Color portfolioRealEstate() => Colors.blueAccent;
  static Color portfolioOther() => Colors.grey;

  static Color boosted() => Color(0xFF7B61FF);
  static Color allocation() => Color(0xFF60B7FF);
  static Color secondContainerColor() =>
      AppColors.isLightMode ? Color(0xFFF2F2F2) : Color(0xFFF3B3E56);

  static Color textSnackBar() => Colors.white;
  static Color negativeSnackbar() => Color(0xFFE8444D);

  static Color bottomNavSelected() => Color(0xFF62C696);
  static Color bottomNavUnselected() => Color(0xFF95A1C0);

  static Color appBarIcon() => accent();

  static Color link() => Color(0xFF55ACEE);

  static Color inputIcon() => Color(0xFF999999);

  static Color custom(Color lightModeColor, Color darkModeColor) {
    return isLightMode ? lightModeColor : darkModeColor;
  }

  static ButtonColors get buttonDefault =>
      ButtonColors(buttonColor: primary(), textColor: Colors.white);
  static ButtonColors get buttonRed => ButtonColors(
      buttonColor: negative(),
      borderColor: negative(),
      textColor: Colors.white);
  static Color disabledButton() =>
      isLightMode ? Color(0xff49494D).withOpacity(.1) : Color(0xff49494D);

  static Color border() => Color(0xFFD8D8D8);
  static Color divider({bool? lightMode}) => lightMode ?? AppColors.isLightMode
      ? Color(0xFFD8D8D8)
      : Color(0xff49494D);
  static Color editTextLine() => Color(0xFFDFDFDF);
  static List<Color> percentageChartColorList() => [
        primary(),
        accent(),
        portfolioCurrency(),
        portfolioCryptoToken(),
        Color(0xff9B63DB),
      ];
}

class ButtonColors {
  final Color buttonColor;
  final Color? borderColor;
  final Color textColor;

  ButtonColors(
      {required this.buttonColor, this.borderColor, required this.textColor});
}
