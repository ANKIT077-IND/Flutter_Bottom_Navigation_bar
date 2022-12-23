import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      body:  Column(
        children: [
          // this is snackbar//
          Center(
            child: SizedBox(
              width: size.width* 0.40,
              child: ElevatedButton(
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Internet connected..",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                      backgroundColor: Colors.green,



                    ),


                  );
                },
                child: const Text("SnackBar"),

              ),
            ),
          ),
          //this is alert dialog
          Center(
            child: SizedBox(
              width: size.width* 0.40,
              child: ElevatedButton(
                onPressed: (){
                  showDialog(context: context, builder: (context){
                    return  AlertDialog(
                      content: Text('Are you sure want to exit?'),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("no".toUpperCase())),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("yes".toUpperCase())),

                      ],
                    );

                  });
                },
                child: const Text("Alert dialog"),

              ),
            ),
          ),

        ],

      ),
    );
  }
}
