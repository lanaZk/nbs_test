
import 'package:flutter/material.dart';

import '../general_export.dart';

extension TitleText on TextStyle {
  TextStyle titleText() {
    return TextStyle(
      color: black,
      fontSize: Adaptive.px(16),
      fontWeight: FontWeight.bold,
    );
  }
}


extension DetailsText on TextStyle {
  TextStyle detailsText() {
    return TextStyle(
      color: grey,
      fontSize: Adaptive.px(12),
    );
  }
}
