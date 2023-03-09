extension TextColorChecker on String {
  String get check {
    String newText = this;
    var red = RegExp(r'(/([a-z A-Z 0-9 ! @ #  % ^ & * ( ) \.]*)(\.red))');
    var yellow = RegExp(r'(/([a-z A-Z 0-9 ! @ #  % ^ & * ( ) \.]*)(\.yellow))');

    newText = newText.replaceAllMapped(red,(match) =>"\x1B[31m${match.group(2).toString()}\x1B[0m");
    newText = newText.replaceAllMapped(yellow,(match) =>"\x1B[33m${ match.group(2).toString()}\x1B[0m");
    return newText;
  }
}

void main() {
  cpIo.formatPrint('(salom,) < man formatlangan > {string} < man >  [nj]');
}

ColoredPrintI cpIo = ColoredPrintI();

abstract class ColoredPrint {
  String whiteBlueText(String text) => '\x1B[38;2;0;255;255m$text\x1B[0m';

  String greenText(String text) => '\x1B[38;2;0;255;0m$text\x1B[0m';

  String redText(String text) => '\x1B[38;2;255;0;0m$text\x1B[0m';

  String redWithGreenBg(String text) => '\x1B[48;2;0;0;0m\x1B[38;2;255;255;255m$text\x1B[0m';
}

mixin ColoredFormatter {
  String _scopeFormat(String text, String Function(String text) color, {String? openScope, String? closeScope}) {
    if (openScope != null && closeScope != null) {
      while (text.contains(openScope) && text.contains(closeScope)) {
        int indexWhereOpen = text.indexOf(openScope);
        int indexWhereClose = text.indexOf(closeScope);

        String subText = text.substring(indexWhereOpen + 1, indexWhereClose); // ex: (a)sd => a
        String subScope = text.substring(indexWhereOpen, indexWhereClose + 1); // ex: (a)sd => (a)

        text = text.replaceFirst(subScope, color(subText));
      }

      return text;
    } else {
      return color(text);
    }
  }
}

class ColoredPrintI extends ColoredPrint with ColoredFormatter {
  void formatPrint(String text) {
    /// ! '[' and ']' this scops are doesn't supports
    /// ! because colors depend  -> '['
    // text = _scopeFormat(text, greenText, openScope: '[', closeScope: ']');

    text = _scopeFormat(text, redText, openScope: '(', closeScope: ')');
    text = _scopeFormat(text, greenText, openScope: '{', closeScope: '}');
    text = _scopeFormat(text, redWithGreenBg, openScope: '<', closeScope: '>');

    print(text);
  }
}