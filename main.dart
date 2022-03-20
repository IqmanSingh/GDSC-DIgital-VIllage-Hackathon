import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
void main() {
  runApp(MaterialApp(
    title:"Smart App for Precision Agriculture",
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  var name = "Username";
  var email = "Email Address";
  @override
  void initState()
  {super.initState();}
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.black38.withOpacity(0.7),
            gradient: LinearGradient(
                colors: [Colors.lightGreenAccent.shade100,Colors.yellowAccent.shade100,Colors.lightGreenAccent.shade100]
            )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.lightGreen.shade800,
            title: Text("Agro Shine",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 28,
              ),
            ),
          ),
          body: SingleChildScrollView(
          child: Card(
            color: Colors.transparent,
          margin: const EdgeInsets.all(0),
          child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children : <Widget>[
                SizedBox(height: 15),
                Text("INPUT DETAILS",style: TextStyle( fontFamily: "assets/FiraSans-Bold.ttf",fontSize: 23,fontWeight: FontWeight.w800,color: Colors.white70)),
                SizedBox(height: 15),
                Text(name,style: TextStyle( fontSize: 21,fontWeight: FontWeight.w800,color: Colors.white70)),
                Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        hintText: "eg Bhavleen Kaur",
                        labelText: "Enter Name",
                        border: OutlineInputBorder(),
                        fillColor: Colors.white70,
                        contentPadding: EdgeInsets.all(10)
                      ),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Enter Email",
                        hintText: "Enter email",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10)
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("Enter Field Area",style: TextStyle( fontSize: 21,fontWeight: FontWeight.w800,color: Colors.white70)),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(

                        hintText: "Enter Area (hectare)",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10)
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("Input Date",style: TextStyle( fontSize: 21,fontWeight: FontWeight.w800,color: Colors.white70)),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        hintText: "Enter Date in DD/MM/YYY",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10)
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("Input Crop Type",style: TextStyle( fontSize: 21,fontWeight: FontWeight.w800,color: Colors.white70)),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "eg Paddy",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10)
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(

                  child: Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                    ),
                    child:
                    Card(
                      color: Colors.transparent,
                      margin: const EdgeInsets.all(0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Image.asset("assets/grass-removebg-preview.png")
                        ],
                      ),
                    ),
                    //
                  ),
                ),
              ]
          ),
        ),
        ),
          floatingActionButton: FloatingActionButton(
            onPressed: ()
            {name = _nameController.text;
              email = _emailController.text;
            setState(() {});
            },
            child: Icon(Icons.pin_drop),
            backgroundColor: Colors.lightGreen.shade600,
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[

                UserAccountsDrawerHeader(
                  accountName: Text(name),
                  accountEmail: Text(email),
                  currentAccountPicture: Icon(Icons.person,color: Colors.white70),
                  decoration: BoxDecoration(
                    color: Colors.lightGreen.shade800,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.grass),
                  title: Text("Previous Sensor Data"),
                  subtitle: Text("Review and Examine Sensor Data"),
                  trailing: Icon(Icons.receipt_long),
                ),
                ListTile(
                  leading: Icon(Icons.grass),
                  title: Text("Future Modelling"),
                  subtitle: Text("on the basis of old Sensor Data"),
                  trailing: Icon(Icons.receipt_long),
                ),
                ListTile(
                  leading: Icon(Icons.refresh),
                  title: Text("Refresh "),
                  onTap: ()
                  {name = _nameController.text;
                  email = _emailController.text;
                  setState(() {});
                  },
                ),
                SizedBox(height: 200),
                ListTile(
                  leading: Icon(Icons.group),
                  title: Text("Developed by"),
                  subtitle: Text("Credits"),
                  onTap: () {} ,
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email "),
                  subtitle: Text("For any Query/Feedback"),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
