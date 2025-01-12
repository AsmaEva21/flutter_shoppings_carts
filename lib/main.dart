import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'CartPage.dart';

/*void main() {
  runApp(const MyApp());
}*/
/*void main() {

  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),
  );

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

*/


//..................DevicePreview.............

void main() {

  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => shoping_cart(),
    ),
  );

}
//shopping cart-1
/*
class shoping_cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping Cart with Payment Gateway',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // List of available items
  List<Map<String, dynamic>> items = [
    {"name": "Laptop", "price": 30.5},
    {"name": "Mouse", "price": 50.0},
    {"name": "Pendrive", "price": 20.5},
    {"name": "Key Board", "price": 15.0},
    {"name": "Monitor", "price": 100.0},
  ];

  // Cart items
  List<Map<String, dynamic>> cart = [];

  // Function to add an item to the cart
  void addToCart(Map<String, dynamic> item) {
    setState(() {
      cart.add(item);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("${item['name']} added to cart!"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shopping List'),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartPage(cart: cart),
                  ),
                );
              },
            ),
          ],
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return ListTile(
                title: Text(item["name"]),
                subtitle: Text("\$${item["price"].toStringAsFixed(2)}"),
                trailing: IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  onPressed: () {
                    addToCart(item);
                  },
                ),
              );
            },
           ),
       );
  }
}*/

//shopping cart-2

/*
class shoping_cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Map<String, dynamic>> items = [
    {"name": "Item 1", "price": 20.0},
    {"name": "Item 2", "price": 15.0},
    {"name": "Item 3", "price": 30.0},
    {"name": "Item 4", "price": 45.0},
    {"name": "Item 5", "price": 25.0},
  ];

  List<Map<String, dynamic>> cart = [];
  double discount = 0;

  // Function to add item to the cart
  void addToCart(Map<String, dynamic> item) {
    setState(() {
      cart.add(item);
    });
  }

  // Function to calculate total price
  double getTotalPrice() {
    return cart.fold(0.0, (sum, item) => sum + item['price']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Items'),
        actions: [
          IconButton(
            icon: Stack(
              children: [
                Icon(Icons.shopping_cart),
                if (cart.length > 0)
                  Positioned(
                    right: 0,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.red,
                      child: Text(
                        cart.length.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
              ],
            ),
            onPressed: () {
              // Navigate to Cart Page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(
                    cart: cart,
                    discount: discount,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(items[index]['name']),
              subtitle: Text('Price: \$${items[index]['price']}'),
              trailing: ElevatedButton(
                onPressed: () {
                  addToCart(items[index]);
                },
                child: Text("Add to Cart"),
              ),
            ),
          );
        },
      ),
    );
  }
}



//-----------------
class CartPage extends StatefulWidget {
  final List<Map<String, dynamic>> cart;
  final double discount;

  CartPage({required this.cart, required this.discount});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double promoDiscount = 0;
  TextEditingController promoController = TextEditingController();

  // Function to calculate total price after discount
  double calculateTotal() {
    double totalPrice = widget.cart.fold(0.0, (sum, item) => sum + item['price']);
    double finalPrice = totalPrice - (totalPrice * promoDiscount);
    return finalPrice;
  }

  // Function to apply promo code
  void applyPromo() {
    String promoCode = promoController.text;

    // Check if the promo code is valid (for example "DISCOUNT10")
    if (promoCode == "DISCOUNT10") {
      setState(() {
        promoDiscount = 0.1; // 10% discount
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Promo code applied: 10% discount')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid promo code')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cart.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(widget.cart[index]['name']),
                  subtitle: Text('Price: \$${widget.cart[index]['price']}'),


                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: promoController,
              decoration: InputDecoration(
                labelText: 'Promo Code',
                suffixIcon: IconButton(
                  icon: Icon(Icons.check),
                  onPressed: applyPromo,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total: \$${calculateTotal().toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to Checkout Page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckoutPage(total: calculateTotal()),
                ),
              );
            },
            child: Text("Proceed to Checkout"),
          ),
        ],
      ),
    );
  }
}

class CheckoutPage extends StatefulWidget {
  final double total;

  CheckoutPage({required this.total});

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  TextEditingController addressController = TextEditingController();

  // Simulate payment gateway process
  void completePayment() {
    if (addressController.text.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Payment Successful!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter your address')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Checkout'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Total to Pay: \$${widget.total.toStringAsFixed(2)}', style: TextStyle(fontSize: 20)),
                SizedBox(height: 16),
                TextField(
                  controller: addressController,
                  decoration: InputDecoration(
                    labelText: 'Enter your address',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: ElevatedButton(
                    onPressed: completePayment,
                    child: Text('Complete Payment'),
                  ),
                ),
              ],
            ),
          ),
       );
 }
}*/
//shopping cart-3
//-3---CARD PAYMENT





/*void main() {
  runApp(shoping_cart());
}*/



class shoping_cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Map<String, dynamic>> items = [
    {"name": "Item 1", "price": 20.0},
    {"name": "Item 2", "price": 15.0},
    {"name": "Item 3", "price": 30.0},
    {"name": "Item 4", "price": 45.0},
    {"name": "Item 5", "price": 25.0},
  ];

  List<Map<String, dynamic>> cart = [];
  double discount = 0;

  // Function to add item to the cart
  void addToCart(Map<String, dynamic> item) {
    setState(() {
      cart.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Items'),
        actions: [
          IconButton(
            icon: Stack(
              children: [
                Icon(Icons.shopping_cart),
                if (cart.length > 0)
                  Positioned(
                    right: 0,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.red,
                      child: Text(
                        cart.length.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
              ],
            ),
            onPressed: () {
              // Navigate to Cart Page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(cart: cart, discount: discount),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(items[index]['name']),
              subtitle: Text('Price: \$${items[index]['price']}'),
              trailing: ElevatedButton(
                onPressed: () {
                  addToCart(items[index]);
                },
                child: Text("Add to Cart"),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CartPage extends StatefulWidget {
  final List<Map<String, dynamic>> cart;
  final double discount;

  CartPage({required this.cart, required this.discount});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double promoDiscount = 0;
  TextEditingController promoController = TextEditingController();

  // Function to calculate total price after discount
  double calculateTotal() {
    double totalPrice = widget.cart.fold(0.0, (sum, item) => sum + item['price']);
    double finalPrice = totalPrice - (totalPrice * promoDiscount);
    return finalPrice;
  }

  // Function to apply promo code
  void applyPromo() {
    String promoCode = promoController.text;

    // Check if the promo code is valid (for example "DISCOUNT10")
    if (promoCode == "DISCOUNT10") {
      setState(() {
        promoDiscount = 0.1; // 10% discount
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Promo code applied: 10% discount')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid promo code')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cart.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(widget.cart[index]['name']),
                  subtitle: Text('Price: \$${widget.cart[index]['price']}'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: promoController,
              decoration: InputDecoration(
                labelText: 'Promo Code',
                suffixIcon: IconButton(
                  icon: Icon(Icons.check),
                  onPressed: applyPromo,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total: \$${calculateTotal().toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to Checkout Page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckoutPage(total: calculateTotal()),
                ),
              );
            },
            child: Text("Proceed to Checkout"),
          ),
        ],
      ),
    );
  }
}

class CheckoutPage extends StatefulWidget {
  final double total;

  CheckoutPage({required this.total});

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  TextEditingController addressController = TextEditingController();

  // Proceed to Card Payment
  void proceedToPayment() {
    if (addressController.text.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CardPaymentPage(total: widget.total),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter your address')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Total to Pay: \$${widget.total.toStringAsFixed(2)}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 16),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                labelText: 'Enter your address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: proceedToPayment,
                child: Text('Proceed to Card Payment'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardPaymentPage extends StatefulWidget {
  final double total;

  CardPaymentPage({required this.total});

  @override
  _CardPaymentPageState createState() => _CardPaymentPageState();
}

class _CardPaymentPageState extends State<CardPaymentPage> {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cardExpiryController = TextEditingController();
  TextEditingController cardCVVController = TextEditingController();

  // Simulate the payment process
  void completePayment() {
    if (cardNumberController.text.isNotEmpty &&
        cardExpiryController.text.isNotEmpty &&
        cardCVVController.text.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Payment Successful!')),
      );
      Navigator.popUntil(context, (route) => route.isFirst); // Return to the first page
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill all card details')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Payment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Total to Pay: \$${widget.total.toStringAsFixed(2)}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 16),
            TextField(
              controller: cardNumberController,
              decoration: InputDecoration(
                labelText: 'Card Number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            TextField(
              controller: cardExpiryController,
              decoration: InputDecoration(
                labelText: 'Expiry Date (MM/YY)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: cardCVVController,
              decoration: InputDecoration(
                labelText: 'CVV',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: completePayment,
              child: Text('Complete Payment'),
            ),
          ],
        ),
      ),
    );
  }
}



