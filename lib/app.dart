import 'package:prodata/export.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DependencyInjection.getIt<MapBloc>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Map',
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        routerConfig: DependencyInjection.getIt<AppRouter>().goRouter,
      ),
    );
  }
}
