import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _radiusAnimation;

  @override
  void initState() {
    // init controller
    // control rotation animation
    // control radius animation

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();

    _rotationAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _radiusAnimation = Tween(
      begin: 450.0,
      end: 10.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    // add listener to update state
    _controller.addListener(() {
      setState(() {});
    });

    // add status listener to reverse animation
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 119, 82, 182),

      body: Center(
        child: Transform.rotate(
          angle: _rotationAnimation.value,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 255,
                height: 255,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(_radiusAnimation.value),
                  color: const Color(0xff592688),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
              ),
              Transform.rotate(
                angle: _rotationAnimation.value + 0.2,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 255,
                      height: 255,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          _radiusAnimation.value,
                        ),
                        color: const Color(0xff6b1fa7), // Adjusted shade
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                    ),
                    Transform.rotate(
                      angle: _rotationAnimation.value + 0.2,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 220,
                            height: 220,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                _radiusAnimation.value,
                              ),
                              color: const Color(0xff8b1e9e), // Adjusted shade
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 10,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                          ),
                          Transform.rotate(
                            angle: _rotationAnimation.value + 0.4,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 175,
                                  height: 175,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      _radiusAnimation.value,
                                    ),
                                    color: const Color(0xffad4fd4), // Adjusted shade
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        blurRadius: 10,
                                        offset: const Offset(0, 5),
                                      ),
                                    ],
                                  ),
                                ),

                                Transform.rotate(
                                  angle: _rotationAnimation.value,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        width: 155,
                                        height: 155,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            _radiusAnimation.value,
                                          ),
                                          color: const Color(
                                            0xffaf54f0,
                                          ), // Adjusted shade
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(
                                                0.2,
                                              ),
                                              blurRadius: 10,
                                              offset: const Offset(0, 5),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Transform.rotate(
                                  angle: _rotationAnimation.value,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        width: 135,
                                        height: 135,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            _radiusAnimation.value,
                                          ),
                                          color: const Color(
                                            0xffcc81f9,
                                          ), // Adjusted shade
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(
                                                0.2,
                                              ),
                                              blurRadius: 10,
                                              offset: const Offset(0, 5),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Transform.rotate(
                                        angle: _rotationAnimation.value,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Container(
                                              width: 115,
                                              height: 115,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                      _radiusAnimation.value,
                                                    ),
                                                color: const Color(
                                                  0xffb370d9,
                                                ), // Adjusted shade
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                    blurRadius: 10,
                                                    offset: const Offset(0, 5),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Transform.rotate(
                                        angle: _rotationAnimation.value,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Container(
                                              width: 95,
                                              height: 95,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                      _radiusAnimation.value,
                                                    ),
                                                color: const Color.fromARGB(255, 194, 124, 235), // Adjusted shade
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                    blurRadius: 10,
                                                    offset: const Offset(0, 5),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Transform.rotate(
                                        angle: _rotationAnimation.value,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Container(
                                              width: 65,
                                              height: 65,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                      _radiusAnimation.value,
                                                    ),
                                                color: const Color.fromARGB(255, 215, 153, 251), // Adjusted shade
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                    blurRadius: 10,
                                                    offset: const Offset(0, 5),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Transform.rotate(
                                        angle: _rotationAnimation.value,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Container(
                                              width: 36,
                                              height: 45,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                      _radiusAnimation.value,
                                                    ),
                                                color: const Color(
                                                  0xffffffff,
                                                ), // Adjusted shade
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                    blurRadius: 10,
                                                    offset: const Offset(0, 5),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
