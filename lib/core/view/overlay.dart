import 'package:flutter/material.dart';
import 'package:prodata/core/base/extension.dart';

abstract final class OverlayController {
  static OverlayEntry? entry;

  static OverlayEntry createOverlay(BuildContext context) {
    return OverlayEntry(
      builder: (context) => Container(
        color: Colors.black.withAlpha(125),
        alignment: Alignment.center,
        child: CircularProgressIndicator(
          color: context.black,
        ),
      ),
    );
  }

  static showOverlay(BuildContext context) {
    if (entry == null) {
      entry = createOverlay(context);
      Overlay.of(context).insert(entry!);
    }
  }

  static void hideOverlay() {
    if (entry != null) {
      entry!.remove();
      entry = null;
    }
  }
}
