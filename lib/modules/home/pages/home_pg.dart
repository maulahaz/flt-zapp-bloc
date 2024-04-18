import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/x_widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final txtLocation = TextEditingController();

  @override
  void dispose() {
    txtLocation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: kTransparent,
        title: Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SizedBox(
                width: size.width * 0.5,
                child: MyButtons.primary(
                    context, 'Primary with SizedBox', () => print('Primary'))),
            SizedBox(height: 5),
            MyButtons.primary(context, 'Primary', () => print('Primary')),
            SizedBox(height: 5),
            MyButtons.warning(context, 'Warning', () => print('Warning')),
            SizedBox(height: 5),
            MyButtons.danger(context, 'Danger', () => print('Danger')),
            SizedBox(height: 5),
            MyButtons.primaryOutlined(
                context, 'Primary Outlined', () => print('Primary Outlined')),
            SizedBox(height: 5),
            MyButtons.dangerOutlined(
                context, 'Danger Outlined', () => print('Danger Outlined')),
            SizedBox(height: 5),
            MyButtons.primaryGradiented(context, 'Primary Gradiented',
                () => print('Primary Gradiented')),
            //--Dropdown:
            MyTextField.roundWidget('Work Type',
                controller: txtLocation,
                iconWidget: IconButton(
                  icon: Icon(Icons.refresh),
                  onPressed: () {
                    print('Work Type');
                  },
                )),
          ],
        ),
      ),
    );
  }
}
