import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/get_management.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.routeName,
      routes: {
        Home.routeName :(context)=> Home()
      },
    );
  }
}
class Home extends StatelessWidget {
  static const String routeName ='home';
  Home({super.key});
  final GetControl controller = Get.put(GetControl());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Row(
              mainAxisAlignment:  MainAxisAlignment.center,
              children: [
                Text('counter'),
                SizedBox(width: 20,),
                Text('constant'),
                SizedBox(width: 20,),
                Text("===>"),
                SizedBox(width: 20,),
                Text('sum')
              ],
            ),
            GetBuilder<GetControl>(
              init: GetControl(),
              builder: (control){
                return  Row(
                  mainAxisAlignment:  MainAxisAlignment.center,
                  children: [
                    Text('${control.counter}'),
                    const SizedBox(width: 20,),
                    Text('${control.constant}'),
                    const SizedBox(width: 20,),
                    const Text("===>"),
                    const SizedBox(width: 20,),
                    Text('${control.sum}')
                  ],
                );
              },

            ),
            ElevatedButton(onPressed: (){
              controller.increment();
            }, child: const Text("counter increase")),
            ElevatedButton(onPressed: (){
              controller.decrement();
            }, child: const Text("counter decrease")),
          ],
        ),
      ),
    );
  }
}

