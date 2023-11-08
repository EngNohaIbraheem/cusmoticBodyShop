
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../contants.dart';

class VisaScreen extends StatefulWidget {
  static const String routeName = "visaScreen";

  @override
  State<VisaScreen> createState() => _VisaScreenState();
}

class _VisaScreenState extends State<VisaScreen> {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl:



"    https://accept.paymob.com/api/acceptance/iframes/730892?payment_token=ZXlKaGJHY2lPaUpJVXpVeE1pSXNJblI1Y0NJNklrcFhWQ0o5LmV5SjFjMlZ5WDJsa0lqb3hNVGd3TXpVMkxDSmhiVzkxYm5SZlkyVnVkSE1pT2pFd01EQXdMQ0pqZFhKeVpXNWplU0k2SWtWSFVDSXNJbWx1ZEdWbmNtRjBhVzl1WDJsa0lqb3pNemcwT1RFeExDSnZjbVJsY2w5cFpDSTZNVFU0TVRNeE1ERTFMQ0ppYVd4c2FXNW5YMlJoZEdFaU9uc2labWx5YzNSZmJtRnRaU0k2SWtOc2FXWm1iM0prSWl3aWJHRnpkRjl1WVcxbElqb2lUbWxqYjJ4aGN5SXNJbk4wY21WbGRDSTZJa1YwYUdGdUlFeGhibVFpTENKaWRXbHNaR2x1WnlJNklqZ3dNamdpTENKbWJHOXZjaUk2SWpReUlpd2lZWEJoY25SdFpXNTBJam9pT0RBeklpd2lZMmwwZVNJNklrcGhjMnR2YkhOcmFXSjFjbWRvSWl3aWMzUmhkR1VpT2lKVmRHRm9JaXdpWTI5MWJuUnllU0k2SWtOU0lpd2laVzFoYVd3aU9pSmpiR0YxWkdWMGRHVXdPVUJsZUdFdVkyOXRJaXdpY0dodmJtVmZiblZ0WW1WeUlqb2lLemcyS0RncE9URXpOVEl4TURRNE55SXNJbkJ2YzNSaGJGOWpiMlJsSWpvaU1ERTRPVGdpTENKbGVIUnlZVjlrWlhOamNtbHdkR2x2YmlJNklrNUJJbjBzSW14dlkydGZiM0prWlhKZmQyaGxibDl3WVdsa0lqcG1ZV3h6WlN3aVpYaDBjbUVpT250OUxDSnphVzVuYkdWZmNHRjViV1Z1ZEY5aGRIUmxiWEIwSWpwbVlXeHpaU3dpWlhod0lqb3hOamszTmpVNU9EZzJMQ0p3Yld0ZmFYQWlPaUkxTkM0NE5pNDFNQzR4TXpraWZRLmI0R1djX195Q0F4LTJlc0EwdFEzVUxLMnRkVnpqLUw4RDRiQjdTSTA4bVo4UGwyVGNCYnEtOU9zS0VhM1FUN2dTOHNvbXpPU05yajk5aVJ6NGZUUllB         ",
        // "https://accept.paymob.com/api/acceptance/iframes/730892?payment_token=ZXlKaGJHY2lPaUpJVXpVeE1pSXNJblI1Y0NJNklrcFhWQ0o5LmV5SjFjMlZ5WDJsa0lqb3hNVGd3TXpVMkxDSmhiVzkxYm5SZlkyVnVkSE1pT2pFd01EQXdMQ0pqZFhKeVpXNWplU0k2SWtWSFVDSXNJbWx1ZEdWbmNtRjBhVzl1WDJsa0lqb3pNemcwT1RFeExDSnZjbVJsY2w5cFpDSTZNVFUzT1RZMk1UTTVMQ0ppYVd4c2FXNW5YMlJoZEdFaU9uc2labWx5YzNSZmJtRnRaU0k2SWtOc2FXWm1iM0prSWl3aWJHRnpkRjl1WVcxbElqb2lUbWxqYjJ4aGN5SXNJbk4wY21WbGRDSTZJa1YwYUdGdUlFeGhibVFpTENKaWRXbHNaR2x1WnlJNklqZ3dNamdpTENKbWJHOXZjaUk2SWpReUlpd2lZWEJoY25SdFpXNTBJam9pT0RBeklpd2lZMmwwZVNJNklrcGhjMnR2YkhOcmFXSjFjbWRvSWl3aWMzUmhkR1VpT2lKVmRHRm9JaXdpWTI5MWJuUnllU0k2SWtOU0lpd2laVzFoYVd3aU9pSmpiR0YxWkdWMGRHVXdPVUJsZUdFdVkyOXRJaXdpY0dodmJtVmZiblZ0WW1WeUlqb2lLemcyS0RncE9URXpOVEl4TURRNE55SXNJbkJ2YzNSaGJGOWpiMlJsSWpvaU1ERTRPVGdpTENKbGVIUnlZVjlrWlhOamNtbHdkR2x2YmlJNklrNUJJbjBzSW14dlkydGZiM0prWlhKZmQyaGxibDl3WVdsa0lqcG1ZV3h6WlN3aVpYaDBjbUVpT250OUxDSnphVzVuYkdWZmNHRjViV1Z1ZEY5aGRIUmxiWEIwSWpwbVlXeHpaU3dpWlhod0lqb3hOamszTlRreE1qSXpMQ0p3Yld0ZmFYQWlPaUkxTkM0NE5pNDFNQzR4TXpraWZRLjBFM0RzQWFuWU5CMVdoYzBRLU03dVZhc0dqQUI5NGg3VkNBSW1tYzFHYVFiMVpiS05CYmJtR1gwWTJsa2l0elBXRUFaUzJ5cmF6MS1MTHk2SFRmLWV3",
        // "https://accept.paymobsolutions.com/api/acceptance/iframes/374929?payment_token=$REQUEST_TOKEN_CARD",
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
        navigationDelegate: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            print('blocking navigation to $request}');
            return NavigationDecision.prevent;
          }
          print('allowing navigation to $request');
          return NavigationDecision.navigate;
        },
        onProgress: (int progress) {
          print('WebView is loading (progress : $progress%)');
        },
        javascriptChannels: <JavascriptChannel>{
          _toasterJavascriptChannel(context),
        },
        onPageStarted: (String url) {
          print('Page started loading: $url');
        },
        onPageFinished: (String url) {
          print('Page finished loading: $url');
        },
        backgroundColor: const Color(0x00000000),
      ),
    );
  }

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }
}
