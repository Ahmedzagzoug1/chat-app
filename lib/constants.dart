import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const kPrimaryColor = Color(0xff2B475E);
const kLogo = 'assets/images/scholar.png';
const kMessagesCollections = 'messages';
const kMessage = 'message';
const kCreatedAt = 'createdAt';
saveEmail({required String email}) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('email', email);
  log('$email');
}

getEmail() async {
  try {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
  String? email=await  prefs.getString('email');
    return email;
  } catch (e) {
    print(e);
    return null;
  }
}
