import 'package:flutter/material.dart';
import 'package:pexel_tok/injector/injecter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: TextButton(
            child: const Text("Press"),
            onPressed: () async {
              // final data = await getIt<VideosRepository>().getPopularVideos();

              // data.fold(
              //     (l) => log(l.message),
              //     (r) => log(
              //         "Found ${r.media.medias.length} of type ${r.media.type}"));
            },
          ),
        ),
      ),
    );
  }
}
