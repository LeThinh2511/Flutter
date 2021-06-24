import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Application extends StatefulWidget {
  const Application({Key? key, required this.title}): super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _ApplicationState();
  }
}

class _ApplicationState extends State<Application> {
  String _email = '';
  String _batteryLevel = 'Unknown battery level.';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.title,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: const <Widget> [
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text('Profile'),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          automaticallyImplyLeading: true,
          actions: <Widget> [
            IconButton(
                onPressed: () {
                },
                icon: const Icon(Icons.info)
            ),
            IconButton(
                onPressed: () {

                },
                icon: const Icon(Icons.search)
            )
          ],
          title: Text(
            widget.title,
            textDirection: TextDirection.ltr,
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                const Text(
                  'Enter your email',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontStyle: FontStyle.normal
                  ),
                  textDirection: TextDirection.ltr,
                ),
                TextField(
                  onChanged: (String text) {
                    setState(() {
                      _email = text;
                    });
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6)
                      )
                    )
                  ),
                ),
                Text(
                  'Email: $_email',
                  style: const TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontStyle: FontStyle.normal
                  ),
                  textDirection: TextDirection.ltr,
                ),
                TextButton(onPressed: () {
                  _getBatteryLevel();
                }, child:
                    const Text('Get battery level')
                ),
                Text(
                  'Battery: $_batteryLevel',
                  style: const TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontStyle: FontStyle.normal
                  ),
                  textDirection: TextDirection.ltr,
                ),
              ],
            ),
          )
        ),
      ),
    );
  }

  Future<void> _getBatteryLevel() async {
    String result = '';
    const MethodChannel channel = MethodChannel('com.thinhle.method-channel');
    try {
      final int batteryLevel = await channel.invokeMethod<int>('getBatteryLevel') ?? 0;
      result = 'Battery level at $batteryLevel% .';
    } catch (err) {
      result = "Failed to get battery level: '${err.toString()}'.";
    }
    setState(() {
      _batteryLevel = result;
    });
  }
}