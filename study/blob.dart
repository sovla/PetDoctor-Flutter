import 'dart:html';

void main() {
  var blob = Blob(['abc']);
  var r = FileReader();
  r.readAsArrayBuffer(blob);
  r.onLoadEnd.listen((e) {
    var data = r.result;
    print(blob);
  });

  Url.createObjectUrlFromBlob(blob);
}
