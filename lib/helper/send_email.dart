import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

sendEmail(String email) async {
  try {
    Uri uri = Uri.parse('mailto:+$email');
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    }
  } catch (e) {
    log(e.toString());
  }
}
