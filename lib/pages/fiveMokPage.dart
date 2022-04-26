import 'package:flutter/material.dart';
import 'package:mole_game/constants/customAppBar.dart';
import 'package:mole_game/constants/spacings.dart';
import 'package:zoom_widget/zoom_widget.dart';

class FiveMokPage extends StatefulWidget {
  const FiveMokPage({Key? key}) : super(key: key);

  @override
  State<FiveMokPage> createState() => _FiveMokPageState();
}

class _FiveMokPageState extends State<FiveMokPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomAppBar.create(title: '오목'),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: height * 0.8,
            child: Zoom(
              maxZoomWidth: width * 2,
              maxZoomHeight: height * 2,
              initZoom: 0,
              child: Container(
                color: Color.fromARGB(255, 250, 227, 192),
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 1,
                  crossAxisCount: 10,
                  children: [
                    ...List.generate(
                      150,
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
