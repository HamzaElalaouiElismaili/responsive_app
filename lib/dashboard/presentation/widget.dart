import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_app/core/presentation/utils/strings.dart';
import '../../core/presentation/widgets/navBarItem.dart';
import '../../gen/assets.gen.dart';
import '../domain/card_model.dart';
import '../domain/filter_model.dart';




class CardReusable extends StatelessWidget {
  final CardModel card;

  const CardReusable({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
          width: 200,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey,width: 0.5),
          ),
          child: Row(
            children: [

              CircleAvatar(
                radius: 25,
                backgroundColor: card.color.withOpacity(0.6),
                child: SvgPicture.asset(card.image, color: card.color,),
              ),

              const SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text(card.subtitle, style: const TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.normal),),
                  Text(card.title, style: const TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.normal),),
                ],
              ),

            ],
          )
      ),
    );
  }
}



class ChipReusable extends StatelessWidget {
  final FilterModel filter;
  final Function() onPressed;
  const ChipReusable({Key? key,required this.onPressed,required this.filter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Chip(
        backgroundColor: Colors.white,
        label: Text(filter.title ,style: const TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.normal),),
        onDeleted: onPressed,
      ),
    );
  }
}


class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          const SizedBox(width: 20,),
          Text("Overview",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          const Spacer(),
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications,color: Colors.grey,)),
          Image.asset(Assets.images.img1.path, width: 50,height: 35,),
          const SizedBox(width: 10,),
        ],
      ),
    );
  }
}




 dialogMore(BuildContext context)
 {
   Widget _buildItem({required String title, required icon, required Function() onPressed})
   {
     return ListTile(
       leading: SvgPicture.asset(icon),
       title: Text(title,style: TextStyle(color: Colors.grey),),
       onTap: onPressed,
       trailing: Icon(Icons.arrow_forward_ios)
     );
   }

  return showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(10),),),
                    builder: (context) {
                      return SizedBox(
                        height: 400,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 3),
                              child: Row(
                                children:
                                [
                                  IconButton(onPressed: ()
                                  {
                                    Navigator.pop(context);
                                  }, icon: const Icon(Icons.clear,color: Colors.black,),),
                                  Spacer(),
                                  Text(StringsManager.filter,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                                  Spacer(),
                                  Text(StringsManager.clear,style: TextStyle(color: Color(0xff1488CC),fontSize: 15,fontWeight: FontWeight.bold),),
                                  SizedBox(width: 10,),
                                ],
                              ),
                            ),
                            Padding(padding:
                            const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children:
                                [
                                  _buildItem(title: StringsManager.date, icon: Assets.icons.date.path, onPressed: (){}),
                                  _buildItem(title: StringsManager.type, icon: Assets.icons.type.path, onPressed: (){}),
                                  _buildItem(title: StringsManager.status, icon: Assets.icons.status.path, onPressed: (){}),
                                  _buildItem(title: StringsManager.category, icon: Assets.icons.category.path, onPressed: (){}),
                                  _buildItem(title: StringsManager.subcategory, icon: Assets.icons.subcategory.path, onPressed: (){}),
                                  _buildItem(title: StringsManager.tags, icon: Assets.icons.tags.path, onPressed: (){}),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    });

}



Widget BottomNavigation(context, ValueNotifier<int> selectedIndex)
{

  void _selectPage(int index)
  {
    selectedIndex.value = index;
  }

  return  BottomAppBar(
    shape: const CircularNotchedRectangle(),
    notchMargin: 0.01,
    clipBehavior: Clip.antiAlias,
    color: Colors.white.withOpacity(0),
    child: BottomNavigationBar(
      backgroundColor: Colors.white.withOpacity(0),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: _selectPage,
      iconSize: 30.0,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Color(0xff25A5DC),
      currentIndex: 5,
      items:
      [
        const BottomNavigationBarItem(icon: Icon(null),label: ""),
        BottomNavigationBarItem(icon: NavBarItem(pressed: selectedIndex.value == 1, path: Assets.icons.dashboard.path),label: ""),
        const BottomNavigationBarItem(icon: Icon(null),label: ""),
        const BottomNavigationBarItem(icon: Icon(null),label: ""),
        BottomNavigationBarItem(icon: NavBarItem(pressed: selectedIndex.value == 4, path: Assets.icons.obser.path),label: ""),
        BottomNavigationBarItem(icon: NavBarItem(pressed: selectedIndex.value == 5, path: Assets.icons.report.path),label: ""),
      ],
    ),
  );

}


Widget ContainerItem(Widget child)
{
  return
    Container(
      height: 70,
      width: double.infinity,
      child: child,

  );
}