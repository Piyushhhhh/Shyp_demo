import 'package:flutter/material.dart';

class _JumpingDot extends AnimatedWidget {
  final Color? color;
  final double? fontSize;

  const _JumpingDot(
      {Key? key,
      required Animation<double> animation,
      this.color,
      this.fontSize})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;
    return SizedBox(
      height: animation.value + fontSize!,
      child: Text(
        '.',
        style: TextStyle(color: color, fontSize: fontSize),
      ),
    );
  }
}

class JumpingDotsProgressIndicator extends StatefulWidget {
  final int numberOfDots;

  final double fontSize;

  /// Spacing between each dot, default 0.0.
  final double dotSpacing;

  /// Color of the dots, default black.
  final Color color;

  /// Time of one complete cycle of animation, default 250 milliseconds.
  final int milliseconds;

  /// Starting and ending values for animations.
  final double beginTweenValue = 0.0;
  final double endTweenValue = 8.0;

  /// Creates a jumping do progress indicator.
  const JumpingDotsProgressIndicator({
    super.key,
    this.numberOfDots = 3,
    this.fontSize = 10.0,
    this.color = Colors.black,
    this.dotSpacing = 0.0,
    this.milliseconds = 250,
  });

  @override
  // ignore: library_private_types_in_public_api
  _JumpingDotsProgressIndicatorState createState() =>
      // ignore: no_logic_in_create_state
      _JumpingDotsProgressIndicatorState(
        numberOfDots: numberOfDots,
        fontSize: fontSize,
        color: color,
        dotSpacing: dotSpacing,
        milliseconds: milliseconds,
      );
}

class _JumpingDotsProgressIndicatorState
    extends State<JumpingDotsProgressIndicator> with TickerProviderStateMixin {
  int? numberOfDots;
  int? milliseconds;
  double? fontSize;
  double? dotSpacing;
  Color? color;
  List<AnimationController> controllers = <AnimationController>[];
  List<Animation<double>> animations = <Animation<double>>[];
  final List<Widget> _widgets = <Widget>[];

  _JumpingDotsProgressIndicatorState({
    this.numberOfDots,
    this.fontSize,
    this.color,
    this.dotSpacing,
    this.milliseconds,
  });

  @override
  initState() {
    super.initState();
    for (int i = 0; i < numberOfDots!; i++) {
      _addAnimationControllers();
      _buildAnimations(i);
      _addListOfDots(i);
    }

    controllers[0].forward();
  }

  void _addAnimationControllers() {
    controllers.add(AnimationController(
        duration: Duration(milliseconds: milliseconds!), vsync: this));
  }

  void _addListOfDots(int index) {
    _widgets.add(
      Padding(
        padding: EdgeInsets.only(right: dotSpacing!),
        child: _JumpingDot(
          animation: animations[index],
          fontSize: fontSize,
          color: color,
        ),
      ),
    );
  }

  void _buildAnimations(int index) {
    animations.add(
      Tween(begin: widget.beginTweenValue, end: widget.endTweenValue)
          .animate(controllers[index])
        ..addStatusListener(
          (AnimationStatus status) {
            if (status == AnimationStatus.completed) {
              controllers[index].reverse();
            }
            if (index == numberOfDots! - 1 &&
                status == AnimationStatus.dismissed) {
              controllers[0].forward();
            }
            if (animations[index].value > widget.endTweenValue / 2 &&
                index < numberOfDots! - 1) {
              controllers[index + 1].forward();
            }
          },
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: fontSize! + (fontSize! * 0.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _widgets,
      ),
    );
  }

  @override
  dispose() {
    for (int i = 0; i < numberOfDots!; i++) {
      controllers[i].dispose();
    }
    super.dispose();
  }
}
