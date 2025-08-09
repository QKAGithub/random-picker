
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';

class ShareService {
  static Future<void> shareText(String text) async {
    await Share.share(text);
  }

  static Future<void> shareWidget(GlobalKey key) async {
    final boundary = key.currentContext?.findRenderObject() as RenderRepaintBoundary?;
    if (boundary == null) return;
  }

  static Future<void> shareScreenshot(ScreenshotController controller, {String fileName = 'result.png'}) async {
    final bytes = await controller.capture();
    if (bytes == null) return;
    final dir = await getTemporaryDirectory();
    final path = '${dir.path}/$fileName';
    final file = File(path);
    await file.writeAsBytes(bytes);
    await Share.shareXFiles([XFile(path)], text: 'Random Picker');
  }
}
