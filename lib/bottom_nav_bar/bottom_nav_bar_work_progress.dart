import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';

// ignore: must_be_immutable
class SuperBottomNavigationBar extends StatefulWidget {
  SuperBottomNavigationBar({
    Key? key,
    required this.items,
    this.currentIndex = 0,
    this.height = 70.0,
    this.backgroundColor = const Color(0xFF191919),
    this.padding = EdgeInsets.zero,
    this.curve = Curves.linear,
    this.duration = const Duration(milliseconds: 400),
    this.elevation = 8,
    this.onSelected,
  })  : assert(items.isNotEmpty),
        assert(items.length <= 10),
        assert(currentIndex < items.length),
        assert(currentIndex >= 0),
        assert(height >= 25),
        assert(elevation >= 0.0),
        super(key: key);
  final List<SuperBottomNavigationBarItem> items;
  final int currentIndex;
  final double height;
  final Color backgroundColor;
  final Curve curve;
  final Duration duration;
  final EdgeInsets padding;
  final double elevation;
  ValueChanged<int>? onSelected = (int index) {};
  @override
  State<StatefulWidget> createState() => _SuperBottomNavigationBarState();
}
class _SuperBottomNavigationBarState extends State<SuperBottomNavigationBar> {
  int selected = 0;
  @override
  SuperBottomNavigationBar get widget => super.widget;
  @override
  void initState() {
    super.initState();
    selected = widget.currentIndex;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.transparent),
      padding: widget.padding,
      child: InkWell(
        child: Row(
          children: List.generate(
              widget.items.length,
              (index) => Expanded(
                    child: Container(
                      child: SuperNavItem(
                        index: index,
                        item: widget.items[index],
                        selected: selected == index,
                        height: widget.height,
                        curve: widget.curve,
                        duration: widget.duration,
                        changeIndex: () {
                          setState(() {});
                          selected = index;
                          widget.onSelected!(index);
                        },
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}

class SuperNavItem extends StatelessWidget {
  SuperNavItem(
      {required this.index,
      required this.item,
      required this.selected,
      required this.height,
      required this.curve,
      required this.duration,
      required this.changeIndex});
  final SuperBottomNavigationBarItem item;
  final bool selected;
  final int index;
  final double height;
  final Duration duration;
  final Curve curve;
  final GestureTapCallback changeIndex;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      hoverColor:  Colors.transparent,
      focusColor:  Colors.transparent,
      highlightColor:  Colors.transparent,
      onTap: changeIndex,
      child: Padding(
        padding:  EdgeInsets.only(top: 0,left: index == 0  ? 15 : 0, bottom: 20 ,right: index == 2  ? 15 : 0, ),
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          height: 80,
          child: Center(
            child: Material(
              shadowColor: black,
              elevation: 10,
        
              child: Container(
              //  margin: EdgeInsets.only(left: index == 1 ?0 : 10, right: index ==1 ? 0 : 10 ),
                height: 80,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: const BoxDecoration(
                    ),
                child: Container(
                  width: 50.0,
                  height: 50,
                  decoration: BoxDecoration(
                    color: selected ? primary : white,
                  ),
                  child:  Center(
                    child:   Text.rich(
              TextSpan(
                text:  index == 0 ? item.selectedIcon : index == 1 ? item.selectedIcon1 : item.selectedIcon2,
                style: TextStyle(
                    fontFamily: "JosefinSans",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: selected ? white : black),
                children: [
                  TextSpan(
                    text: item.text,
                    style: TextStyle(
                        fontFamily: "JosefinSans",
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color:  selected ? white : black),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
                    // Text(
                    //   index == 1 ? item.selectedIcon : index == 2 ? item.selectedIcon1 : item.selectedIcon2,
                    //   style: TextStyle(color: selected ? white : black),
                    // ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class SuperBottomNavigationBarItem {
  SuperBottomNavigationBarItem( {
    this.text = "star",
    this.selectedIcon = "Star",
    this.selectedIcon1 = "Star",
    this.selectedIcon2 = "Star"
  });
  final String text;
  final String selectedIcon;
  final String selectedIcon1;
  final String selectedIcon2;
}
