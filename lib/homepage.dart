import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              children: [
                Text("Notes",style: TextStyle(fontSize: 30,color: Colors.white),),
                Expanded(child: SizedBox()),
                Container(
                  height: 40,
                  width: 40,
                 decoration: BoxDecoration(
                   color: Colors.white.withOpacity(.2),
                   borderRadius:BorderRadius.circular(10)
                 ),
                  child: Icon(Icons.search_rounded,color: Colors.white,),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Expanded(
              child: MasonryGridView.count(
                mainAxisSpacing: 11,
                  crossAxisSpacing: 11,
                  crossAxisCount: 2, itemBuilder: (context,index){
                    return Container(
                      color: Colors.amber,
                      height: 200,
                      width: index~/2==1 ? 200: double.infinity,
                    );
              }),
            ),
          ],
        ),
      ),
    );
  }
}