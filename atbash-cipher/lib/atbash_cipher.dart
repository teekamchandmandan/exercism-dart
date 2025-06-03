class AtbashCipher {
  encode(String message) {
    final buffer = StringBuffer();
    for (int i = 0; i < message.length; i++) {
      String curr = message[i].toLowerCase();
      if (curr == ' ' || curr == ',' || curr == '.') {
        continue;
      }
      if ((buffer.length + 1) % 6 == 0) {
        buffer.write(' ');
      }
      int complement = 'z'.codeUnitAt(0) - curr.codeUnitAt(0);
      if (complement < 0 || complement > 26) {
        buffer.write(curr);
      } else {
        buffer.write(String.fromCharCode('a'.codeUnitAt(0) + complement));
      }
    }
    return buffer.toString();
  }

  decode(String code) {
    final buffer = StringBuffer();
    for (int i = 0; i < code.length; i++) {
      String curr = code[i].toLowerCase();
      if (curr == ' ' || curr == ',' || curr == '.') {
        continue;
      }
      int complement = 'z'.codeUnitAt(0) - curr.codeUnitAt(0);
      if (complement < 0 || complement > 26) {
        buffer.write(curr);
      } else {
        buffer.write(String.fromCharCode('a'.codeUnitAt(0) + complement));
      }
    }
    return buffer.toString();
  }
}
