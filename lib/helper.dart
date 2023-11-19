import 'package:flutter_sound/flutter_sound.dart';

class WalkieServices {
  Future<void> recordAndPlayInChat(String path) async {
    final player = FlutterSoundPlayer();
    final recorder = FlutterSoundRecorder();
    try {
      // Record audio
      await recorder.openRecorder();
      await recorder.startRecorder();
      while (await recorder.isRecording) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
      await recorder.stopRecorder();
      await recorder.closeRecorder();

      // Play recorded audio
      await player.openPlayer();
      await player.startPlayer();
      while (await player.isPlaying) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
      await player.closePlayer();
    } catch (e) {
      print('Record and play error: $e');
      await recorder.closeRecorder();
      await player.closePlayer();
    }
  }
}
