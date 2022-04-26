import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mole_game/constants/customAppBar.dart';

class OneToFiftyGame extends StatefulWidget {
  const OneToFiftyGame({Key? key}) : super(key: key);

  @override
  State<OneToFiftyGame> createState() => _OneToFiftyGameState();
}

class _OneToFiftyGameState extends State<OneToFiftyGame> {
  List<int> firstList = [];

  load() {
    for (int i = 1; i <= 25; i++) {
      firstList.add(i);
    }
    firstList.shuffle();
  }

  int _count = 1;

  bool _hide = false;

  Timer? _timer;
  int _timeCount = 0;
  bool _isRunning = false;

  @override
  void initState() {
    load();
    setState(() {});
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int secondCount = _timeCount ~/ 100;
    String hundredthCount = '${_timeCount % 100}'.padLeft(2, '0');

    return Scaffold(
      appBar: CustomAppBar.create(title: '1 to 50'),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                '$secondCount.',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.orange,
                ),
              ),
              Text(
                '$hundredthCount',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.orange,
                ),
              ),
              Text(
                ' 초',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          Container(
            child: GridView.count(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 1,
              crossAxisCount: 5,
              children: [
                ...List.generate(
                  firstList.length,
                  (index) => GestureDetector(
                      onTap: () {
                        if (!_isRunning) {
                          return;
                        }
                        if (_count == firstList[index] && _count <= 25) {
                          setState(() {
                            firstList[index] = firstList[index] + 25;
                            _count++;
                          });
                        } else if (_count == firstList[index] && _count > 25) {
                          setState(() {
                            _hide = true;
                            firstList[index] = -1;
                            _count++;
                          });
                        }
                        if (_count == 51) {
                          _pause();
                        }
                      },
                      child: AnimatedSwitcher(
                        duration: Duration(milliseconds: 500),
                        child: _hide == true && firstList[index] == -1
                            ? Container()
                            : AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                margin: EdgeInsets.all(10),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: firstList[index] > 25
                                        ? Colors.blue
                                        : Colors.yellow,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    )),
                                child: Text(
                                  '${firstList[index]}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                      )),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      firstList.clear();
                      load();
                      _timeCount = 0;
                      _count = 1;
                      _isRunning = false;
                      _pause();
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Retry',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (!_isRunning) {
                        _clickPlayButton();
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Start',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _start() {
    _timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      setState(() {
        _timeCount++;
      });
    });
  }

  void _pause() {
    _timer?.cancel();
  }

  void _clickPlayButton() {
    _isRunning = !_isRunning;
    _start();
  }
}
