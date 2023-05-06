import 'package:get/get_navigation/src/root/internacionalization.dart';

import 'ar.dart';
import 'en.dart';
import 'fr.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'ar': ar,
    'en': en,
    'fr': fr,
  };
}