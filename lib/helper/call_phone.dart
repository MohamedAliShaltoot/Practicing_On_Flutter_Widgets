import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

callUser(String phone) async {
  try {
    Uri uri = Uri.parse('tel:+$phone');
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    }
  } catch (e) {
    log(e.toString());
  }
}
