import 'package:flutter/material.dart';
import 'package:mole_game/constants/customAppBar.dart';
import 'package:mole_game/constants/customColors.dart';
import 'package:zoom_widget/zoom_widget.dart';

class FiveMokPage extends StatefulWidget {
  const FiveMokPage({Key? key}) : super(key: key);

  @override
  State<FiveMokPage> createState() => _FiveMokPageState();
}

class _FiveMokPageState extends State<FiveMokPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.create(title: '오목'),
      body: Zoom(
        backgroundColor: CustomColors.primary,
        maxZoomWidth: 1800,
        maxZoomHeight: 1800,
        initZoom: 0,
        child: Column(
          children: [
            GridView.count(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 1,
              crossAxisCount: 20,
              children: [
                ...List.generate(
                  400,
                  (index) => GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: .5,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
