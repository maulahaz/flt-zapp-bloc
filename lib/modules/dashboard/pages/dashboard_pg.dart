import 'package:flutter/material.dart';
import 'package:flutter_app/configs/x_configs.dart';
import 'package:flutter_app/modules/dashboard/x_dashboards.dart';
import 'package:flutter_app/widgets/x_widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final GroceryBloc groceryBloc = GroceryBloc();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Zapp with BLoC'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: kAppPrimary[200],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text('Welcome User'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: size.width * 0.8,
            child: MyButtons.primaryOutlined(context, 'Click Me', () {
              // context.read<GroceryBloc>().
              groceryBloc.add(GroceryInitialEvent());
            }),
          ),
        ],
      ),
    );
  }
}
