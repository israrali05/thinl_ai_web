import 'package:flutter/foundation.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class CheckboxController extends ChangeNotifier {
  bool _goodChecked = false;
  bool _veryGoodChecked = false;
  bool _excellentChecked = false;

  bool get goodChecked => _goodChecked;
  bool get veryGoodChecked => _veryGoodChecked;
  bool get excellentChecked => _excellentChecked;

  void setGoodChecked(bool value) {
    _goodChecked = value;
    if (value) {
      _veryGoodChecked = false;
      _excellentChecked = false;
    }
    notifyListeners();
  }

  void setVeryGoodChecked(bool value) {
    _veryGoodChecked = value;
    if (value) {
      _goodChecked = false;
      _excellentChecked = false;
    }
    notifyListeners();
  }

  void setExcellentChecked(bool value) {
    _excellentChecked = value;
    if (value) {
      _goodChecked = false;
      _veryGoodChecked = false;
    }
    notifyListeners();
  }
}

class CheckboxController2 extends ChangeNotifier {
  bool _goodChecked = false;
  bool _veryGoodChecked = false;
  bool _excellentChecked = false;

  bool get goodChecked => _goodChecked;
  bool get veryGoodChecked => _veryGoodChecked;
  bool get excellentChecked => _excellentChecked;

  void setGoodChecked(bool value) {
    _goodChecked = value;
    if (value) {
      _veryGoodChecked = false;
      _excellentChecked = false;
    }
    notifyListeners();
  }

  void setVeryGoodChecked(bool value) {
    _veryGoodChecked = value;
    if (value) {
      _goodChecked = false;
      _excellentChecked = false;
    }
    notifyListeners();
  }

  void setExcellentChecked(bool value) {
    _excellentChecked = value;
    if (value) {
      _goodChecked = false;
      _veryGoodChecked = false;
    }
    notifyListeners();
  }
}

// Speed to spe
class SpeechProvider extends ChangeNotifier {
  stt.SpeechToText _speech = stt.SpeechToText();
  bool _isListening = false;
  String _text = '';

  bool get isListening => _isListening;
  String get recognizedText => _text;

  void initializeSpeech() async {
    bool available = await _speech.initialize(
      onStatus: (status) {
        print('Speech recognition status: $status');
      },
      onError: (errorNotification) {
        print('Error: $errorNotification');
      },
    );
    if (available) {
      notifyListeners();
    } else {
      print('The user has denied the use of speech recognition.');
    }
  }

  void startListening() {
    if (!_isListening) {
      _speech.listen(
        onResult: (result) {
          _text = result.recognizedWords;
          notifyListeners();
        },
      );
      _isListening = true;
    } else {
      _speech.stop();
      _isListening = false;
    }
    notifyListeners();
  }

  void stopListening() {
    // Your implementation to stop listening
    _isListening = false;
    // Code to stop speech recognition
    // For example: Stop the speech-to-text engine
    notifyListeners();
  }
}
