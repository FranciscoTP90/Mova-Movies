class SizeConfig {
  // Get the proportionate height as per screen size
  static double getProportionateScreenHeight(
      {required double screenHeight, required double inputHeight}) {
    // double screenHeight = screenHeight;
    // 926 is the layout height that designer use
    return (inputHeight / 926.0) * screenHeight;
  }

// Get the proportionate height as per screen size
  static double getProportionateScreenWidth(
      {required double screenWidth, required double inputWidth}) {
    // double screenWidth = screenWidth;
    // 428 is the layout width that designer use
    return (inputWidth / 428.0) * screenWidth;
  }
}
