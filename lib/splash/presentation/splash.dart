import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../core/presentation/routes/approutes.gr.dart';
import '../../core/shared/providers.dart';
import '../../gen/assets.gen.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref)
  {
    final appRouter = ref.watch(appRouterProvider);

    WidgetsBinding.instance.addPostFrameCallback((_)
    {
      Future.delayed(Duration(seconds: 2), ()
      {
        appRouter.pushAndPopUntil(DashboardScreen(), predicate: (_) => false,);
      });
    });


    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff2E166A).withOpacity(0.9),
          body: Center(

            child: Stack(
              alignment: Alignment.center,
              children:
              [
                Image.asset(Assets.images.img.path),

                Align(
                  alignment: Alignment.center,
                  child: logo(),
                ),

                Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircularProgressIndicator(color: Colors.white,),
                        const SizedBox(height: 10,)

                      ],
                    )
                ),

              ],
            ),

          )
      ),
    );
  }
}

Widget logo() => Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children:
  [
    Text("LOGO" ,style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
    Text("App Name" ,style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal),),
  ],
);




