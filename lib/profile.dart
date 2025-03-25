import 'package:flutter/material.dart';
import 'package:custom_text/custom_text.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.transparent,
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                child: Image.asset('assets/icons/bbpng.jpg'),
                width: 250,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                  Center(

                    child:  Row(
                      children: [

                        Container(
                          width: 150,
                          height: 50,
                          color: Colors.white,
                          child: Text("Age : 22y"),
                        ),
                        Container(
                          width: 150,
                          height: 50,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}
