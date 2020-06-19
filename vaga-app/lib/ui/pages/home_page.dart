import 'package:flutter/material.dart';
import 'package:new_bus_app/core/controllers/mapa_controller.dart';
import 'package:new_bus_app/ui/components/mapa_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<MapaController>(
          create: (_) => MapaController(),
        )
      ],
      child: Scaffold(
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.home),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text("Home"),
                  )
                ],
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        )),
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              left: 0,
              child: MapaWidget(),
            ),
            Positioned(
                top: 38,
                right: 8,
                left: 8,
                child: Material(
                    color: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(color: Colors.black26, width: 1.0)),
                    child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              splashColor: Colors.grey,
                              icon: Icon(Icons.arrow_back),
                              onPressed: (){},
                            ),
                            Expanded(child: Container()),
                            Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: IconButton(
                                  icon: Icon(Icons.close),
                                  onPressed: (){},
                                )),
                          ],
                        )))),
          ],
        )),
    );
  }
}
