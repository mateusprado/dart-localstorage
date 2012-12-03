import "dart:html";

void main() {
  InputElement username = query("#username");
  InputElement submit = query("#save");
  Element output = query("#username-output");
  Storage localStorage = window.localStorage;

  String savedUsername = localStorage['username'];
  
  if (savedUsername != null) {
    output.text = savedUsername;
  }
  submit.on.click.add((Event e) {
    output.text = username.value;
    localStorage['username'] = username.value;
  });
} 

