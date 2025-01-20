import 'package:flutter/material.dart';
import 'dart:async';

import 'package:darttonconnect/crypto/session_crypto.dart';
import 'package:darttonconnect/exceptions.dart';
import 'package:darttonconnect/logger.dart';
import 'package:darttonconnect/models/wallet_app.dart';
import 'package:darttonconnect/parsers/connect_event.dart';
import 'package:darttonconnect/parsers/rpc_parser.dart';
import 'package:darttonconnect/parsers/send_transaction.dart';
import 'package:darttonconnect/provider/bridge_gateway.dart';
import 'package:darttonconnect/provider/bridge_provider.dart';
import 'package:darttonconnect/provider/bridge_session.dart';
import 'package:darttonconnect/provider/provider.dart';
import 'package:darttonconnect/storage/default_storage.dart';
import 'package:darttonconnect/storage/interface.dart';
import 'package:darttonconnect/ton_connect.dart';
import 'package:darttonconnect/wallets_list_manager.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PresalePage(),
    );
  }
}

class PresalePage extends StatefulWidget {
  @override
  _PresalePageState createState() => _PresalePageState();
}

class _PresalePageState extends State<PresalePage> {


  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(


        child:   Container(
          height: 1080,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bgimage.png'), // Yerel resim
              fit: BoxFit.cover, // Resmi ekrana tam sığdırmak için
            ),
          ),
          child:  Column(
            children: [

              SizedBox(height: 100,),

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // Kenarları yuvarlatmak için
            child: Image.asset(
              'assets/icon.png', // Resim dosyası
              width: 100, // Resmin genişliği
              height: 100, // Resmin yüksekliği
              fit: BoxFit.cover, // Resmi kutuya sığdırma
            ),
          ),
          decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(112, 71, 1, 1),// Siyah kenarlık rengi
                width: 2, // Kenarlık kalınlığı
              ),              
              borderRadius: BorderRadius.circular(20), // Kenarları yuvarlatmak için
              ),
        ),
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

SizedBox(height: 30,),


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        Text("PRESALE ENDING IN",style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.w900,
        shadows: [
                Shadow(
                  color: Colors.black.withOpacity(1), // Gölgenin rengi
                  offset: Offset(0, 0), // Gölgenin kayması
                  blurRadius: 20,  // Gölgenin bulanıklık oranı
                ),
                
              ],)),
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


              SizedBox(height: 50,),

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(192, 53, 242, 0.699),
                  
                ),

                height: 160,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [

                Container( 
                  margin: EdgeInsetsDirectional.only(top: 5),
                   width: MediaQuery.of(context).size.width,
                   height: 75,
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                 
                  color: Color.fromARGB(255, 113, 0, 147),),
                  child: Text("Raised",style: TextStyle( fontSize: 25,color: Colors.white, fontWeight: FontWeight.w900,
        shadows: [
                Shadow(
                  color: Colors.black.withOpacity(1), // Gölgenin rengi
                  offset: Offset(0, 0), // Gölgenin kayması
                  blurRadius: 20,  // Gölgenin bulanıklık oranı
                ),
                
              ],)),),

              SizedBox(height: 5),


                    Text("\$77.199,001",style: TextStyle(fontFamily: "Courier New", fontSize: 45, fontWeight: FontWeight.w900,
        foreground: Paint()
        ..style = PaintingStyle.stroke
        ..color = Colors.white
        ..strokeWidth = 2,))

                  ],
                ),
              ),
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7
            
            SizedBox(height: 50,),

            Container(
              height: 550,
              width: MediaQuery.of(context).size.width-20,
              decoration: BoxDecoration(color: Color.fromRGBO(225,197,157,1), borderRadius: BorderRadius.circular(15),
),
              child: Column(children: [
SizedBox(height: 10,),
                Container(
                  color: Color.fromRGBO(225,197,157,1),
          child: ClipRRect(
            borderRadius: BorderRadius.only( topRight: Radius.circular(15.0),
      topLeft: Radius.circular(15.0),), // Kenarları yuvarlatmak için
            child: Image.asset(
              'assets/bordersale.png', // Resim dosyası
              width: MediaQuery.of(context).size.width-40, // Resmin genişliği
              height: 45, // Resmin yüksekliği
              fit: BoxFit.cover, // Resmi kutuya sığdırma
            ),
          ),
         
        ),

        Container(
          height: 485,
          width: MediaQuery.of(context).size.width-40,
          decoration: BoxDecoration(color: Color.fromRGBO(249,232,204,1),borderRadius: BorderRadius.circular(15)),
          child: null,
        ),

              ],),
            ),
            
            ],
          )
        ),
        

        ),
    );
  }
}
