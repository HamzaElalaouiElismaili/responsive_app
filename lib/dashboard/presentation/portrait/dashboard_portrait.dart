import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../core/presentation/routes/approutes.gr.dart';
import '../../../core/presentation/utils/colors.dart';
import '../../../core/presentation/utils/strings.dart';
import '../../../core/shared/providers.dart';
import '../../shared/constants.dart';
import '../charts/chart.dart';
import '../widget.dart';



class DashboardPortrait extends HookConsumerWidget {
const DashboardPortrait({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {


    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.white));
    final appRouter = ref.watch(appRouterProvider);
    final index = useState<int>(1);

   return SafeArea(
       child: Scaffold(
         backgroundColor: ColorsManager.kBackgroundColor,
         bottomNavigationBar: BottomNavigation(context,index),
         floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
         floatingActionButton: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               decoration: BoxDecoration(
                   color: Color(0xff25A5DC),
                   borderRadius: BorderRadius.circular(50)),
               width: 60,
               height: 60,
               child: RawMaterialButton(
                 shape: const CircleBorder(),
                 elevation: 0,
                 child: const Icon(Icons.add_rounded, size: 35, color: Colors.white,),
                 onPressed: () => appRouter.push(AlertScreen()),
               ),
             )),
         body: Column(
          children: [

            MyAppBar(),

            Divider(height: 1,color: Colors.grey,),


            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children:
                  [

                    const SizedBox(height: 20,),

                    ContainerItem(
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cards.length,
                        itemBuilder: (BuildContext context, int index)
                        {
                          return CardReusable(card: cards[index]);
                        },),
                    ),


                    ContainerItem(
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: filters.length,
                        itemBuilder: (BuildContext context, int index)
                        {
                          return ChipReusable(filter: filters[index], onPressed: (){},);
                        },),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 220,
                          child: DashboardChart(
                            title: StringsManager.observationsTitle,
                            subtitle: StringsManager.observationsSubTitle,
                            isPieChart: false,
                            onPressed: ()=> dialogMore(context),
                          )),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 220,
                          child: DashboardChart(
                            title: StringsManager.progressTitle,
                            subtitle: StringsManager.progressSubTitle,
                            isPieChart: true,
                            onPressed: () {},)),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
    ));
  }
}




