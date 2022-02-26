import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Text('Welcome to',style: TextStyle(fontSize: 25),),
          const Text('Assessment Task',style: TextStyle(fontSize: 25),),
          const SizedBox(height: 30,),
          ElevatedButton(
            onPressed: (){
              Get.offAllNamed('/home');
            },
            child: const Text('Take Me In'),
          ),
        ],
      ),
    ));
  }
}
