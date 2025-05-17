import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/screens/home_screen/widgets/actions_item_tile.dart';
import 'package:online_app/widgets/clocking_in_widget.dart';

class ActionsBuilder extends StatefulWidget {
  const ActionsBuilder({super.key});

  @override
  State<ActionsBuilder> createState() => _ActionsBuilderState();
}

class _ActionsBuilderState extends State<ActionsBuilder> {
  void onStartLearningPressed() {
    context.push('/course');
  }

  void onCheckStatsPressed() {
    ClockingInWidget.showUserStatDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
      ),
      child: SizedBox(
        height: 154.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ActionsItemTile(
              actionsTitle: "What do you want to learn today ?",
              actionsImage: Assets.icons.startLearning,
              actionsButtonTitle: "Get Started",
              onActionTap: onStartLearningPressed,
            ),
            ActionsItemTile(
              actionsTitle: "Check your stats",
              actionsImage: Assets.icons.checkStats,
              actionsButtonTitle: "Check Stats",
              onActionTap: onCheckStatsPressed,
            ),
          ],
        ),
      ),
    );
  }
}
