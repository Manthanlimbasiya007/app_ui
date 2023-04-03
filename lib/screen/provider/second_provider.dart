
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SecondProvider extends ChangeNotifier
{
  List onlinelinkList = [
    "https://www.hotstar.com/in/home?ref=%2Fin",
    "https://www.netflix.com/in/",
    "https://www.primevideo.com/",
    "https://www.sonyliv.com/",

  ];

  WebViewController? webViewController;

  void initURLmethod(int i)
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${onlinelinkList[i]}"));
  }
}