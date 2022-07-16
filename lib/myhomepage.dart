import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title , Key? key}) : super(key: key);

  final String title ;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0 ;
  void _incrementCounter(){
    setState(() {
      _counter ++ ;
    });
  }
  void _decrementCounter(){
    setState(() {
      _counter -- ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: const [
          Icon(Icons.search,size: 32,)
        ],
      ),

      body: myStack(),
      drawer: myDrawer(),
      floatingActionButton: myFloatingActionButton(),
      bottomNavigationBar: myBottomNavigationBar(),
    );
  }

  Widget myStack(){
    return Center(
      child: Container(
        // height: 500,
        // width: 500,
        color: Colors.purple,
        child: Stack(
          // alignment: Alignment.topLeft, // By default it is top left
          alignment: Alignment.bottomCenter,
          // alignment: Alignment.center,
          // alignment: Alignment.topCenter,
          // fit: StackFit.expand,
          // fit: StackFit.loose,
          children: [
            const SizedBox(
              height: 400,
              width: 400,
              // color: Colors.black,
              child: Image(
                image: AssetImage(
                    'assets/images/mani.jpg'
                ),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.red,
            ),
            const SizedBox(
              height: 100,
              width: 100,
              child: Image(
                image: AssetImage(
                    'assets/images/mani.jpg'
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myFloatingActionButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add,size: 24,
          ),
        ),
        FloatingActionButton(
          onPressed: _decrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.remove,size: 24,
          ),
        ),
      ],
    );
  }

  Widget myBottomNavigationBar(){
    return SizedBox(
      height: 70,
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>
        [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home Page'),
          BottomNavigationBarItem(icon: Icon(Icons.work_sharp),label: 'Work Sharp'),
          BottomNavigationBarItem(icon: Icon(Icons.messenger),label: 'Message'),
        ],
      ),
    );
  }

  Widget myDrawer(){
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.pink,
            child: const DrawerHeader(
              child: Center(
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: ListTile(
              leading: Icon(Icons.account_balance,size: 32,),
              title: Text('My Account',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(Icons.delete,size: 32,),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: Text(
              'LOG_IN',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: Text(
              'SIGN_UP',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: ListTile(
              leading: Icon(Icons.message,size: 32,),
              title: Text('Message',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(Icons.delete,size: 32,),
            ),
          ),
        ],
      ),
    );
  }

}
