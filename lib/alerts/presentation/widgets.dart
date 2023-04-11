import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_app/core/presentation/utils/strings.dart';




class DropDownButtonOrTextField extends StatelessWidget {
  final String type;
  final bool isDropDown;
  final bool isAdd;
  final String initialValue;
  final List<String> values;
  final Function(String?) onChanged;
  final Function()? onTap;
  final Function()? onPressedFlag;
  final Color colorFlag;

   DropDownButtonOrTextField({ required this.type, this.isDropDown = true,  this.isAdd = false , required this.initialValue, required this.values, required this.onChanged, this.onTap, this.onPressedFlag, required this.colorFlag}) ;

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: Row(
            children:
            [
              Text(type,style: TextStyle(fontWeight: FontWeight.bold),),
              Spacer(),
              if(isAdd) GestureDetector(onTap: onTap, child: const Text("+ add",style: TextStyle(color: Color(0xff568DDF)),)) else const
              Icon(Icons.info,color: Color(0xffE3E3E3),)
            ],
          ),
        ),
        const SizedBox(height: 5,),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 45,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: const Color(0xffE3E3E3), width: 2),
          ),

          child: isDropDown ? DropdownButtonHideUnderline(
            child: DropdownButton<String>(

              borderRadius: BorderRadius.circular(10),
              elevation: 0,
              dropdownColor: const Color(0xffE3E3E3),
              isDense: true,
              value: initialValue,
              icon: Row(
                children:
                [
                  if(isAdd) SizedBox() else IconButton(onPressed: onPressedFlag,icon: Icon(Icons.flag, color: colorFlag,),),
                  const SizedBox(width: 5,),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
              style: const TextStyle(color: Colors.black),
              onChanged: onChanged,
              items: values.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:
                    [
                      Text(value),
                    ],
                  ),

                );
              }).toList(),
            ),

          ): TextField(
            autofocus: true,
            decoration: InputDecoration(

              border: InputBorder.none,
              hintText: "Enter $type",
            ),
          ),
        ),

      ],
    );
  }
}




class SwitchButton extends StatelessWidget {
  final String type;
  final String firstValue;
  final String secondValue;
  final ValueNotifier<bool> value;

   SwitchButton({Key? key,required  this.type ,required ValueNotifier<bool> this.value ,required  this.firstValue ,required  this.secondValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(type,style: TextStyle(fontWeight:FontWeight.bold),),
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: ()
                {
                  value.value = false;
                },
                child: Container(
                  height: 50,
                  decoration:  BoxDecoration(
                    color: !value.value ? const Color(0xff422B8F): const Color(0xffE3E1F2),
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5)),
                  ),
                  child:  Center(child: Text(firstValue,style: TextStyle(color: !value.value ? Colors.white: Colors.black,fontSize: 15),)),
                ),

              ),
            ),

            Expanded(
              child: GestureDetector(
                onTap: ()
                {
                  value.value = true;
                },
                child: Container(
                  height: 50,
                  decoration:  BoxDecoration(
                    color: value.value ? const Color(0xff422B8F): const Color(0xffE3E1F2),
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                  ),
                  child:  Center(child: Text(secondValue,style: TextStyle(color: value.value ? Colors.white: Colors.black,fontSize: 15),)),
                ),

              ),
            ),


          ],
        ),
      ],
    );
  }
}










class NumberSelector extends HookWidget {

  ValueNotifier<int>  selectedIndex ;
  NumberSelector({Key? key,required this.selectedIndex}) : super(key: key);

  List<int> _numbers = [-2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  final ScrollController _scrollController = ScrollController();


  void _jumpToLeftOrRight(bool jumpToLeft)
  {
    _scrollController.jumpTo(jumpToLeft ? _scrollController.offset - 90 : _scrollController.offset + 90);
  }



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          InkWell(
            child: Icon(Icons.arrow_back_ios_rounded, color: Color(0xffE3E3E3),),
            onTap: ()=> _jumpToLeftOrRight(true),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _numbers.length,
              controller: _scrollController,
              reverse: true,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  width: 50,

                  margin: const EdgeInsets.only(right: 3),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(45, 45),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      primary: selectedIndex.value == _numbers[index]
                          ? Color(0xff422B8F)
                          : Colors.white,
                      elevation: .5,
                    ),
                    onPressed: ()=>selectedIndex.value = _numbers[index],
                    child: Center(
                      child: Text(
                        _numbers[index].toString(),
                        style: TextStyle(
                          fontSize: 15,
                          color: selectedIndex.value == _numbers[index] ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          InkWell(
            child: Icon(Icons.arrow_forward_ios_rounded, color: Color(0xffE3E3E3),),
            onTap: ()=> _jumpToLeftOrRight(false),

          ),
        ],
      ),
    );
  }
}




class DropDownTime extends StatelessWidget {

  final ValueNotifier<int> initialValueTime;
  const DropDownTime({Key? key,required this.initialValueTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(StringsManager.expectedTime, style: TextStyle(fontWeight:FontWeight.bold),),
        const SizedBox(height: 5,),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 45,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: const Color(0xffE3E3E3), width: 2),
            //  color: const Color(0xffF3F5F7),
          ),

          child: DropdownButtonHideUnderline(
            child: DropdownButton<int>(

              borderRadius: BorderRadius.circular(10),
              elevation: 0,
              dropdownColor: const Color(0xffE3E3E3),
              isDense: true,
              value: initialValueTime.value,
              icon: Row(
                children:
                [
                  Icon(Icons.arrow_drop_down),
                ],
              ),
              style: const TextStyle(color: Colors.black),
              onChanged: (int? newValue)
              {
                initialValueTime.value = newValue ?? initialValueTime.value;
              },
              items: [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55,  60].map<DropdownMenuItem<int>>((int value) {
                return DropdownMenuItem(
                  value: value,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:
                    [
                      Text(value.toString() +" Minutes"),
                    ],
                  ),

                );
              }).toList(),
            ),

          ),
        ),
      ],
    );
  }
}
