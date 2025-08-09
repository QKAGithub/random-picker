
import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:applovin_max/applovin_max.dart' as max;

class AdsService {
  static const _isTest = true;

  static String get bannerId => Platform.isAndroid
      ? ( _isTest ? 'ca-app-pub-3940256099942544/6300978111' : 'YOUR-ADMOB-BANNER-ID-ANDROID')
      : ( _isTest ? 'ca-app-pub-3940256099942544/2934735716' : 'YOUR-ADMOB-BANNER-ID-IOS');

  static String get interstitialId => Platform.isAndroid
      ? ( _isTest ? 'ca-app-pub-3940256099942544/1033173712' : 'YOUR-ADMOB-INTERSTITIAL-ID-ANDROID')
      : ( _isTest ? 'ca-app-pub-3940256099942544/4411468910' : 'YOUR-ADMOB-INTERSTITIAL-ID-IOS');

  static Future<void> init() async {
    await MobileAds.instance.initialize();
    await max.AppLovinMAX.initialize('YOUR-APPLOVIN-SDK-KEY');
  }
}
