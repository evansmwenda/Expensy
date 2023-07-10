import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 140,
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 20),
            color: Colors.red,
            child: Center(child: Text("Card main")),),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 5),
                    height: 100,
                    color: Colors.amber,
                    child: Text("Container A"),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 100,
                    color: Colors.amber,
                    child: Text("Container B"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Recent Transactions"),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 6),
                  color: Colors.blueGrey,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 35,
                        width: 35,
                        child: Image.asset("assets/images/avatar.jpeg",),
                      ),
                      SizedBox(width: 10,),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Shoes",style: TextStyle(fontSize: 26,color: Colors.deepOrange),),
                            Text("Puma sneaker",style: TextStyle(fontSize: 22,color: Colors.grey),),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40,child: Column(children: [
                        Text("\$ 30.00",style: TextStyle(color: Colors.red),),
                        Text("Oct, 23",),
                      ]),)
                    ],
                  ),
                ),
                
                
              ),
            )
          ],
        ),
      ),
    );
  }
}

