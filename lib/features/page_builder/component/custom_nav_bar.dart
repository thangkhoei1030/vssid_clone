// import 'package:get/get.dart';
// import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
// import 'package:vssid/core/src_core.dart';
// import 'package:flutter/material.dart';
// import 'package:vssid/features/src_feature.dart';

// class CustomNavBarWidget extends GetView<PageBuilderController> {
//   final List<PersistentBottomNavBarItem> items;
//   final ValueChanged<int> onItemSelected;

//   const CustomNavBarWidget({
//     super.key,
//     required this.items,
//     required this.onItemSelected,
//   });

//   Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected) {
//     return Container(
//       alignment: Alignment.center,
//       height: 60.0,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Flexible(
//             child: IconTheme(
//               data: IconThemeData(
//                   size: 26.0,
//                   color: isSelected
//                       ? (item.activeColorSecondary ?? item.activeColorPrimary)
//                       : item.inactiveColorPrimary ?? item.activeColorPrimary),
//               child: item.icon,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 5.0),
//             child: Material(
//               type: MaterialType.transparency,
//               child: FittedBox(
//                   child: Text(
//                 item.title ?? "s",
//                 style: TextStyle(
//                     color: isSelected
//                         ? (item.activeColorSecondary ?? item.activeColorPrimary)
//                         : item.inactiveColorPrimary,
//                     fontWeight: FontWeight.w400,
//                     fontSize: 12.0),
//               )),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: Container(
//         width: double.infinity,
//         height: 60.0,
//         child: Row(
//           mainAxisAlignment: navBarEssentials.navBarItemsAlignment,
//           children: items.map((item) {
//             int index = items.indexOf(item);
//             return Flexible(
//               child: GestureDetector(
//                 onTap: () {
//                   this.onItemSelected(index);
//                 },
//                 child: _buildItem(item, selectedIndex == index),
//               ),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
