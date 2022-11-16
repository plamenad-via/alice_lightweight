import 'dart:typed_data';

import 'package:alice_lightweight/helper/alice_save_helper.dart';
import 'package:alice_lightweight/model/alice_http_call.dart';
import 'package:share_plus/share_plus.dart';

Future<XFile> saveLogs(List<AliceHttpCall> logs) async {
  final callStrings = await Future.wait(
      logs.map((log) async => await AliceSaveHelper.buildCallLog(log)));

  final String logsString = callStrings.fold('', (value, log) {
    if (value.isEmpty) {
      return log;
    }
    return "$value\n\n\n$log";
  });

  final bytes = Uint8List.fromList(logsString.codeUnits);
  final file = XFile.fromData(bytes);

  return file;
}

void shareFile(XFile file) {
  Share.shareXFiles([file], subject: "Alice logs");
}
