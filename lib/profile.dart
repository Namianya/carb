import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Color gradientStart = Colors.red; //Change start gradient color here
  Color gradientEnd = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
        // background image and bottom contents
          Column(
          children: <Widget>[
          Container(
            height: 150,
            decoration: BoxDecoration(
              gradient: new LinearGradient(
                colors: [gradientStart, gradientEnd],
              ),
              borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20))
            ),
            child: Center(
              child: Text('My Profile',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
                fontStyle: FontStyle.normal)),
          )),
          SizedBox(height: 20),
          Expanded(
            child:Container(
              margin:EdgeInsets.only(top:50),
              child:Column(children: <Widget>[
                
                Center(child: Card(
                  elevation: 20,
                  child: Column(
                    children: <Widget>[
                      new Center(
                       child:Text('Paul Wekesa',style:TextStyle(fontSize:25, fontWeight: FontWeight.bold)),
                      ),
                      Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[ 
                        Icon(Icons.mail,color:Colors.blueAccent),
                        SizedBox(width: 10,),
                        Text('wekesa350@gmail.com',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                      ]),
                      Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[ 
                        Icon(Icons.phone, color:Colors.blueAccent),
                        SizedBox(width: 10,),
                        Text('0746366069',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                      ]),
                    ],
                  ),
                ),
                  ),
                SizedBox(height: 20),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Card(
                    elevation:20,
                    
                    child: Container(
                      padding:EdgeInsets.all(20),
                      height: 80,
                      width:100,
                      child: Column(
                        children: <Widget>[
                           Center(child: Text('Bookings',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
                            Center(child: Text('10',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent))),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation:20,
                    child: Container(
                      padding:EdgeInsets.all(20),
                      height: 80,
                      width:100,
                      child: Column(
                        children: <Widget>[
                           Center(child: Text('Trips',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
                            Center(child: Text('9',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent))),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation:20,
                    child: Container(
                      padding:EdgeInsets.all(20),
                      height: 80,
                      width:100,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Center(child: Text('Offers',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
                            Center(child: Text('0',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent))),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
                  // Divider(height:1,color:Colors.grey),
                  Center(
                    child: Container(
                    height:100,
                    width: 350,
                    margin:EdgeInsets.only(top: 10),
                    child:Center(
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      Card(
                        elevation:20,
                        child:Container(
                          padding:EdgeInsets.all(20),
                          width:100,
                          child:Column(children: <Widget>[
                            Icon(Icons.edit,color:Colors.blueAccent),
                            Center(child: Text('Edit',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
                            Center(child: Text('Profile',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)))
                          ],)
                        )
                      ),
                      
                      Card(
                        elevation:20,
                        child:Container(
                          padding:EdgeInsets.all(20),
                          width:100,
                          child:Column(children: <Widget>[
                            Icon(Icons.lock,color:Colors.blueAccent),
                            Center(child: Text('Change',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
                            Center(child: Text('Password',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)))
                          ],)
                        )
                      ),
                      
                      Card(
                        elevation:20,
                        child:Container(
                          padding:EdgeInsets.all(20),
                          width:100,
                          child:Column(children: <Widget>[
                            Icon(Icons.language,color:Colors.blueAccent),
                            Center(child: Text('Change',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
                            Center(child: Text('Language',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)))
                          ],)
                        )
                      ),
                      
                      ],
                      ),
                    )
                ),
                  ),
                
              ]),
              ),
            )
          ],
          ),
          Positioned(
          top:100,
          child:Center(
            child: Container(
              height:100,
              width: 100,
              child:CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
          ))
        ],
        ),
      ),
    );
  }
}