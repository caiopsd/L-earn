import 'package:flutter/material.dart';
import '../../widgets/global/learnAppBar.dart';
import 'package:learn/widgets/activitiesWidgets/yoursActivities.dart';

class MonitorigPage extends StatelessWidget {
  final ValueNotifier<double> pagePosition;

  MonitorigPage({
    required this.pagePosition
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LearnAppBar(
        pageIndex: 2,
        pagePosition: pagePosition.value,
        children: const [
          Text('Monitoramento', style: TextStyle(color: Colors.white)),
        ] 
      ),
      body: Center(
        child: YoursActivities(),
      ),
    );
  }
}
