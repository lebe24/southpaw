# Southpaw - Mobile 

<img width="429" alt="Screenshot 2024-07-09 at 9 23 44 PM" src="https://github.com/lebe24/southpaw/assets/20610708/a556f89a-4700-4a1d-8ea6-bc385a501009">

# Sharing Firebase Authentication State Between Flutter and WebView

How to share Firebase authentication state between a Flutter app and a web application running in a WebView.

## Steps

### 1. Authenticate in Flutter and Get ID Token

```
import 'package:firebase_auth/firebase_auth.dart';

Future<String?> getIdToken() async {
  User? user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    return await user.getIdToken();
  }
  return null;
}
```

### 2. Create a WebView and Pass the Token
```
import 'package:webview_flutter/webview_flutter.dart';

class AuthenticatedWebView extends StatelessWidget {
  final String url;
  final String? idToken;

  AuthenticatedWebView({required this.url, required this.idToken});

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (WebViewController webViewController) {
        if (idToken != null) {
          webViewController.runJavascript(
            'localStorage.setItem("firebase_id_token", "$idToken");'
          );
        }
      },
    );
  }
}
```

### 3. Use the WebView in Your Flutter App
```
FutureBuilder<String?>(
  future: getIdToken(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.done) {
      return AuthenticatedWebView(
        url: 'https://main.d8ptmtpx5g0am.amplifyapp.com/',
        idToken: snapshot.data,
      );
    }
    return CircularProgressIndicator();
  },
)

```


A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

