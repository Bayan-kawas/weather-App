import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdsManager with ChangeNotifier {
  // constructor
  AdsManager() {
    getInterstitialAd();
    getBannerAd();
  }

// is test ads
  bool _testMode = false;

  // Configuration BannerAd
  BannerAd bannerAd;
  bool isLoadedBanner = false;

  // Configuration InterstitialAd
  bool isLoadedInterstitialAd = false;
  InterstitialAd interstitialAd;

// get appId
  String get appId {
    if (Platform.isAndroid) {
      return "ca-app-pub-9514757535295024~9921340715";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

// get bannerAdUnitId
  String get bannerAdUnitId {
    if (_testMode == true) {
      return "ca-app-pub-3940256099942544/6300978111"; //test bannerAdUnitId
    } else if (Platform.isAndroid) {
      return 'ca-app-pub-9514757535295024/7760530471';
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

// get InterstitialAdUnitId
  String get interstitialAdUnitId {
    if (_testMode == true) {
      return "a-app-pub-3940256099942544/1033173712"; //test interstitialAdUnitId
    } else if (Platform.isAndroid) {
      return 'ca-app-pub-9514757535295024/4836284973';
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

// get BannerAd
  void getBannerAd() {
    bannerAd = BannerAd(
      adUnitId: bannerAdUnitId,
      size: AdSize.largeBanner,
      request: AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          isLoadedBanner = true;
          print('banner Ad loaded to load: $isLoadedBanner !!!!!!');
          notifyListeners();
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          //ad.dispose();
          print('Ad failed to load: $error');
        },
      ),
    )..load();
  }

// get InterstitialAd
  void getInterstitialAd() {
    InterstitialAd.load(
        adUnitId: interstitialAdUnitId,
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {
            interstitialAd = ad;
            isLoadedInterstitialAd = true;
            interstitialAd.show();
            print(
                'Interstitial Ad loaded to load: $isLoadedInterstitialAd !!!!!!');
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('InterstitialAd failed to load: $error');

            isLoadedInterstitialAd = false;
          },
        ));
  }

// get widget banner ad
  Widget showBannerAd() {
    return isLoadedBanner
        ? Container(
            alignment: Alignment.center,
            height: bannerAd.size.height.toDouble(),
            width: bannerAd.size.width.toDouble(),
            child: AdWidget(ad: bannerAd),
          )
        : SizedBox.shrink();
  }

  @override
  void dispose() {
    super.dispose();
    interstitialAd.dispose();
    bannerAd.dispose();
  }
}
