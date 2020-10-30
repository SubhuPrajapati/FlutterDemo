import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test_app/view/login.dart';
import 'package:flutter_test_app/viewmodels/login_view_model.dart';
import 'common/customDialogue.dart';
import 'model/login/login_model.dart';
import 'view/forgot.dart';

void main() {
  runApp(Container(
    child: NewLoginDemoApp(),
  ));
}



/*class _NewLoginDemoAppState extends State<NewLoginDemoApp> {
  loginButtonClick(String userId, String password) {}

  forgotButtonClick() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RecoverPassword()));
  }

  final userIdController = TextEditingController();
  final passwordController = TextEditingController();

  Future<LoginModel> _futureAlbum;
  FutureBuilder _futureBuilder;

  @override
  Widget build(BuildContext context) {
    Widget loadingView() => Center(
          child: CircularProgressIndicator(
            backgroundColor: color[100],
          ),
        );

    Widget topSection = Column(
      children: [
        SizedBox(height: 60),
        Image.asset(
          'assets/images/loginlogo.png',
          width: 200,
        ),
        SizedBox(height: 16),
        Text(
          "Welcome",
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(height: 8),
        Text(
          "Please sign in to your account",
          style: TextStyle(fontSize: 16),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Container(
            height: 0.5,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 16),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Text(
              "User Id",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        SizedBox(height: 8),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 50,
            margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: TextField(
              controller: userIdController,
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(5),
                  ),
                ),
                hintStyle: new TextStyle(
                  color: Colors.grey[800],
                  height: 2.0,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: color[100], width: 1.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                hintText: "User Id",
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Text(
              "Password",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        SizedBox(height: 8),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 50,
            margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(5),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: color[100], width: 1.0),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(5),
                  ),
                ),
                hintStyle: new TextStyle(
                  color: Colors.grey[800],
                  height: 2.0,
                ),
                hintText: "Password",
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: RaisedButton(
              textColor: Colors.white,
              color: color[100],
              child: Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                *//* loginButtonClick(
                    userIdController?.text, passwordController.text);*//*

                if (userIdController?.text?.toString()?.trim()?.length == 0) {
                  {
                    showAlertDialog(context, "Opps", "Please enter userId");
                    return;
                  }
                }
                if (passwordController?.text?.toString()?.trim()?.length == 0) {
                  {
                    showAlertDialog(context, "Opps", "Please enter password");
                    return;
                  }
                }

                _futureAlbum =
                    loginUser(userIdController?.text, passwordController.text);
                _futureBuilder = FutureBuilder(
                    future: _futureAlbum,
                    builder: (context, snapshot) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.waiting:
                          {
                            return loadingView();
                          }
                        case ConnectionState.waiting:
                          {
                            return loadingView();
                          }
                        case ConnectionState.active:
                          {
                            break;
                          }
                        case ConnectionState.done:
                          {

                          }
                      }
                    });

                *//*_futureAlbum =
                    loginUser(userIdController?.text, passwordController.text);

                _futureAlbum.then((value) => {print(value.accessToken)});*//*
              },
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: RaisedButton(
              textColor: Colors.white,
              color: color[50],
              child: Text(
                "Recover Password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                print("coming here");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RecoverPassword()));
              },
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
          ),
        ),
      ],
    );

    return MaterialApp(
      title: 'Login Demo',
      home: Scaffold(
          body: Column(
        children: [
          topSection,
        ],
      )),
    );
  }
}

*//*Future<Login> doLogin(
    String email,
    String password,
    ) async {
  var url = "url/login/validasi";

  Map<String, dynamic> body = {'email': email, 'password': password};

  print("Email " + email + " password " + password + " " + body.toString());

  final response = await http.post(url,
      //body: body,
      body: body,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/x-www-form-urlencoded"
      },
      encoding: Encoding.getByName("utf-8")
  );

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON
    print(response.body);
    return Login.fromJson(json.decode(response.body));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}*//*

Future<LoginModel> loginUser(String userId, String password) async {
  Map<String, dynamic> body = {
    'username': userId,
    'password': password,
    'grant_type': "password",
  };
  final http.Response response = await http.post(
    'https://staging-backend.jkadvantage.co.in/api/v1/auth/login',
    body: body,
    headers: <String, String>{
      "Content-Type": "application/x-www-form-urlencoded",
      "app": "advantage",
      'Authorization': 'Basic amt0eXJlOjEyMw==',
    },
  );
  *//*print(response.statusCode);
  print(response.body);*//*

  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.

    //   print("coming here");
    return LoginModel.fromJson(jsonDecode(response.body));
    // LoginModel loginModel = LoginModel.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.

    print(response.body);

    throw Exception('Failed to load album');
  }
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

class LoginDemoApp extends StatefulWidget {
  @override
  _LoginDemoAppState createState() => _LoginDemoAppState();
}

class _LoginDemoAppState extends State<LoginDemoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            padding: const EdgeInsets.fromLTRB(32, 60, 32, 32),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/loginlogo.png',
                            width: 200,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              "Welcome",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(5),
                            child: Text(
                              "Please sign in to your account",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "User Id",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                )
              ],
            )

            *//*child:Image.asset('assets/images/loginlogo.png')*//*

            *//*Image.asset('assets/images/loginlogo.png'),*//*
            ),
      ),
    );
  }
}

class ListDemo extends StatefulWidget {
  @override
  _ListDemoState createState() => _ListDemoState();
}

class _ListDemoState extends State<ListDemo> {
  void method() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List Demo",
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              width: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.purple,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album, size: 70),
                      title: Text('Heart Shaker',
                          style: TextStyle(color: Colors.white)),
                      subtitle:
                          Text('TWICE', style: TextStyle(color: Colors.white)),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('Edit',
                              style: TextStyle(color: Colors.white)),
                          onPressed: () {
                            method();
                          },
                        ),
                        FlatButton(
                          child: const Text('Delete',
                              style: TextStyle(color: Colors.white)),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.yellow,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album, size: 70),
                      title: Text('Heart Shaker',
                          style: TextStyle(color: Colors.white)),
                      subtitle:
                          Text('TWICE', style: TextStyle(color: Colors.white)),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('Edit',
                              style: TextStyle(color: Colors.white)),
                          onPressed: () {
                            method();
                          },
                        ),
                        FlatButton(
                          child: const Text('Delete',
                              style: TextStyle(color: Colors.white)),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.pink,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album, size: 70),
                      title: Text('Heart Shaker',
                          style: TextStyle(color: Colors.white)),
                      subtitle:
                          Text('TWICE', style: TextStyle(color: Colors.white)),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('Edit',
                              style: TextStyle(color: Colors.white)),
                          onPressed: () {
                            method();
                          },
                        ),
                        FlatButton(
                          child: const Text('Delete',
                              style: TextStyle(color: Colors.white)),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.blue,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album, size: 70),
                      title: Text('Heart Shaker',
                          style: TextStyle(color: Colors.white)),
                      subtitle:
                          Text('TWICE', style: TextStyle(color: Colors.white)),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('Edit',
                              style: TextStyle(color: Colors.white)),
                          onPressed: () {
                            method();
                          },
                        ),
                        FlatButton(
                          child: const Text('Delete',
                              style: TextStyle(color: Colors.white)),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RowAndColoumDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Row & Coloum",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row And Coloum"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("First Row"),
            Column(
              children: [Text("Coloum One"), Text("Coloum Two")],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Text("Third Row")
          ],
        ),
      ),
    );
  }
}

class containerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Text("This is One Container"),
          height: 300,
          width: 300,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.green,
          ),
          transform: Matrix4.rotationZ(0.5),
          foregroundDecoration: BoxDecoration(color: Colors.deepOrange),
        ),
      ),
    );
  }
}

class MyStateFulWidgetApp extends StatefulWidget {
  @override
  _MyStateFulWidgetAppState createState() => _MyStateFulWidgetAppState();
}

class _MyStateFulWidgetAppState extends State<MyStateFulWidgetApp> {
  String titleText;
  int increment = 0;

  void method1() {
    setState(() {
      increment++;
      titleText = " Clicked Button ${increment}";
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    titleText = "Click On This Button";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stateful Widget",
      home: Scaffold(
        body: Center(
          child: RaisedButton(
            onPressed: method1,
            child: Text(titleText),
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: *//*MyHomePage(title: 'Flutter Demo Home Page'),*//*
            Scaffold(
          body: Container(
            color: Colors.pink,
            child: Container(
              color: Colors.yellow,
              margin: EdgeInsets.all(30),
              child: Container(
                color: Colors.red,
                margin: EdgeInsets.all(30),
                child: Container(
                  color: Colors.blue,
                  margin: EdgeInsets.all(30),
                  child: Container(
                    color: Colors.amber,
                    margin: EdgeInsets.all(30),
                    child: Container(
                      color: Colors.purpleAccent,
                      margin: EdgeInsets.all(30),
                      child: Container(
                        color: Colors.green,
                        margin: EdgeInsets.all(30),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/
