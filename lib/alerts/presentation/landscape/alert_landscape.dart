import 'package:flutter/material.dart' hide Alert;
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_app/alerts/domain/alert_model.dart';
import '../../../core/presentation/utils/colors.dart';
import '../../../gen/assets.gen.dart';
import '../widgets.dart';
import 'dart:math' as math;


class AlertLandscape extends HookWidget {

  const AlertLandscape({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {


    final initialValueTime = useState<int>(10);
    final initialValueLevel = useState<int>(10);
    final initialValueSite = useState<String>("Site 10");
    final initialValueZone = useState<String>("Zone 10");
    final initialValueRoom = useState<String>("Room 10");
    final initialValueEquipment = useState<String>("Equipment 10");
    final colorFlagSite = useState<Color>(Colors.grey);
    final colorFlagZone = useState<Color>(Colors.grey);
    final isRoom = useState<bool>(true);
    final isInside = useState<bool>(true);
    final isDropDown = useState<bool>(true);



    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Color(0xffE3E3E3)));

    return SafeArea(
        child: Scaffold(
          backgroundColor: ColorsManager.kBackgroundColor,
          body: SingleChildScrollView(
            child: Column(
              children: [

                Container(
                  color: Color(0xffE3E3E3),
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children:
                      [
                        Text("Manual alert", style: TextStyle(fontWeight:FontWeight.bold , fontSize: 16),),
                        Spacer(),
                        GestureDetector(
                            onTap: ()=>Navigator.pop(context),
                            child: SvgPicture.asset(Assets.icons.back.path)),
                      ],
                    ),
                  ),
                ),
                Divider(height: 1,color: Colors.grey,),

                const SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children:
                      [

                        DropDownButtonOrTextField(
                            type: 'Site',
                            initialValue: initialValueSite.value,
                            values: ['Site 10', 'Site 20', 'Site 30', 'Site 40', 'Site 50'],
                            onChanged: (String? value)=>initialValueSite.value = value ?? initialValueSite.value,
                            colorFlag: colorFlagSite.value,
                            onPressedFlag: ()=> colorFlagSite.value = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1)
                        ),

                        const SizedBox(height: 15,),

                        DropDownButtonOrTextField(
                            type: 'Zone',
                            initialValue: initialValueZone.value,
                            values: ['Zone 10', 'Zone 20', 'Zone 30', 'Zone 40', 'Zone 50'],
                            onChanged: (String? value)=>initialValueZone.value = value ?? initialValueZone.value,
                            colorFlag: colorFlagZone.value,
                            onPressedFlag: ()=> colorFlagZone.value = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1)
                        ),

                        const SizedBox(height: 15,),

                        SizedBox(
                            height: 65,
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                Text("Level", style: TextStyle(fontWeight:FontWeight.bold),),
                                const SizedBox(height: 5,),
                                Expanded(child: NumberSelector(selectedIndex: initialValueLevel,)),
                              ],
                            )),


                        const SizedBox(height: 15,),

                        SwitchButton(
                          type: "Location",
                          firstValue: "Room",
                          secondValue: "Equipment",
                          value: isRoom,
                        ),

                        const SizedBox(height: 15,),

                        DropDownButtonOrTextField(
                            isAdd: true,
                            isDropDown: isDropDown.value,
                            type: !isRoom.value ?  'Room' : 'Equipment',
                            initialValue:  !isRoom.value?  initialValueRoom.value : initialValueEquipment.value,
                            values: !isRoom.value ? ['Room 10', 'Room 20', 'Room 30', 'Room 40', 'Room 50'] : ['Equipment 10', 'Equipment 20', 'Equipment 30', 'Equipment 40', 'Equipment 50'],
                            onChanged: (String? value)=> !isRoom.value ? initialValueRoom.value = value ?? initialValueRoom.value : initialValueEquipment.value = value ?? initialValueEquipment.value,
                            colorFlag: colorFlagZone.value,
                            onTap: (){

                              isDropDown.value =! isDropDown.value;
                            },
                            onPressedFlag: ()=> colorFlagZone.value = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1)
                        ),



                        const SizedBox(height: 15,),

                        SwitchButton(
                          type: "Position",
                          firstValue: "inside",
                          secondValue: "outside",
                          value: isInside,
                        ),


                        const SizedBox(height: 15,),

                        DropDownTime(initialValueTime: initialValueTime,),

                        const SizedBox(height: 15,),

                        ElevatedButton(onPressed: ()
                        {

                          Alert alert = Alert(
                            site: initialValueSite.value,
                            zone: initialValueZone.value,
                            level: initialValueLevel.value.toString(),
                            time: initialValueTime.value.toString(),
                            isRoom: isRoom.value,
                            isInside: isInside.value, location: !isRoom.value ? 'Room' : 'Equipment',
                            position: !isInside.value ? 'Inside' : 'Outside',
                          );

                          dialogAlert(context, alert);

                        }, child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(Assets.icons.send.path),
                            const SizedBox(width: 10,),
                            Text("Send alert"),
                          ],
                        ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff25A5DC),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 15),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}


dialogAlert(BuildContext context, Alert alert) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Alert"),
          content: Text(
              "Site: ${alert.site} \n Zone: ${alert.zone} \n Level: ${alert
                  .level} \n Time: ${alert.time} Min  \n Location: ${alert
                  .location} \n Position: ${alert.position}"),
          actions: [
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      });
}
