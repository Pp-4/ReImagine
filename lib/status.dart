import 'point.dart';

class Status {
  //wrapper object for various settings
  bool zoomLock;
  // ignore: prefer_final_fields
  Punkt C, _defaultC, focus = Punkt(0, 0);
  Punkt screenSize;
  int maximumDepth = 100;
  double initialScale = 1.0, scaleFactor = 1.0, currentScale = 1.0;
  double resolution = 1; //doesnt work right now , dont change
  Status(this.zoomLock, this.C, this.screenSize) : _defaultC = C;
  String addInfo = ""; 
      //variable that can be used by external function, to display some info
  @override
  String toString() {
    String outputMessage = "";
    outputMessage += "Zmiana C ${zoomLock ? "nieaktywna" : "aktywna"} \n";
    outputMessage += "Współrzedne C ${C.X} Re , ${C.Y} Im \n";
    outputMessage += "Pozycja ${focus.X} Re , ${focus.Y} Im \n";
    outputMessage += "Przybliżenie ${scaleFactor}x \n";
    outputMessage += "Liczba iteracji: $maximumDepth\n";
    outputMessage += "Szerokość: ${screenSize.X}px, Wysokość: ${screenSize.Y}px\n";
    outputMessage += addInfo;
    return outputMessage;
  }

  reset() {
    C = _defaultC;
    initialScale = 1.0;
    scaleFactor = 1.0;
    currentScale = 1.0;
  }

  cTooltipButton() {
    return zoomLock ? "Włącz zmianę C" : "Wyłącz zmianę C";
  }
}
