import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          color: Colors.black12,
          child: HtmlWidget(
            '''
            <iframe width="${size.width}" height="315"
            src="https://www.youtube.com/embed/tgbNymZ7vqY?autoplay=1&mute=1">
            </iframe>
            ''',
            onLoadingBuilder: (_, __, ___) => const CircularProgressIndicator(),
            onErrorBuilder: (_, v, e) => Text('$v error: $e'),
          ),
        ),
      ),
    );
  }
}
