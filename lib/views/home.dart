
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jobfind_flutter/data/data.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfffF6F7FA),
        title: Row(
          children: [
            Image.asset('assets/logo.png',height: 35,fit: BoxFit.cover,),
            SizedBox(width: 6,),
            Text('Jobfind', style: TextStyle(color: Colors.black87, fontSize: 19,fontWeight: FontWeight.w500),)
          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
             child: Icon(Icons.notifications_none,color: Colors.grey,size: 30,)
          )

        ],
        
      ),
      backgroundColor: Color(0xfffF6F7FA),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25,),
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white
            ),
            child: TextField(
              style: TextStyle(fontSize: 32),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(0),
                border: InputBorder.none,
                prefixIcon: Icon(
                    Icons.search,
                color: Colors.black,
                  size: 35,
                ),
                hintText: 'Search',hintStyle: TextStyle(fontSize: 20,color: Colors.grey),
                suffixIcon: Icon(Icons.format_list_bulleted,
                color: Colors.grey,)
              ),
            ),

          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Stack(
              children: [
                Image.asset('assets/banner.png'),
                Positioned(
                  top: 110,
                  left: 25,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      )),
                      backgroundColor: MaterialStateProperty.all(Colors.white)
                    ),
                      onPressed: (){},
                      child: Text('Read More',style: TextStyle(color: Color(0xfff1D63E3),fontSize: 15),)
                  ),
                )

              ],
            ),
          ),
          SizedBox(height: 25,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Featured Jobs',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                TextButton(
                    onPressed: (){},
                    child: Text('View All',style: TextStyle(color: Colors.grey,fontSize: 15),)
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: joblist.length,
                itemBuilder: (context, index){
                  return Container(
                    height: 180,
                    margin: EdgeInsets.only(left: 25),
                    width: 280,
                    child: Card(
                      color: Color(0xfffFAFAFA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Row(
                              children: [
                                Container(

                                  padding: EdgeInsets.only(right: 10),
                                  height: 100,
                                  width: 60,
                                  //color: Colors.blue,
                                  child: Image.asset(joblist[index].imgUrl,fit: BoxFit.scaleDown,),
                                ),
                                Column(
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      padding: EdgeInsets.only(right: 16,),
                                      height: 50,
                                      width: 140.5,
                                      //color: Colors.yellow,
                                      child: Text(joblist[index].jobTitle,style: TextStyle(fontSize: 18),),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 50),
                                      height: 50,
                                      child: Text(joblist[index].salary,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),),
                                    )
                                  ],
                                ),
                                Container(
                                    padding: EdgeInsets.only(bottom: 15),
                                  height: 100,
                                  width: 60.5,
                                  //color: Colors.purple,
                                  child: Icon(Icons.bookmark_border,color: Colors.grey,)
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 10, left: 25),
                                  height: 70,
                                  width: 150,
                                  //color: Colors.yellow,
                                  child: Column(
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(joblist[index].compName,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                      SizedBox(height: 5,),
                                      Row(
                                        //mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Icon(Icons.location_on,color: Colors.grey,size: 14,),
                                          ),

                                          Text(joblist[index].country,style: TextStyle(color: Colors.grey,fontSize: 12),)
                                        ],
                                      )

                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left:40),
                                  child: Text('Fulltime',style: TextStyle(background: Paint()
                                    ..strokeWidth = 12
                                    ..strokeJoin = StrokeJoin.round
                                    ..strokeCap = StrokeCap.round
                                    ..color = Colors.white
                                    ..style = PaintingStyle.stroke
                                    ,color: Colors.grey,),),
                                  //color: Colors.red,
                                )
                              ],
                            )
                            //   alignment: Alignment.topLeft,
                            // margin: EdgeInsets.only(top: 20, left: 10),
                            // child: Image.asset('assets/g.png',height: 50,),
                          // Container(
                          //   height: 200,
                          //   color: Colors.blue,
                          //   child: Text('BBBB'),
                          // )

                        ],
                      ),
                    ),
                  );

                }
            )
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                alignment: Alignment.centerLeft,
                child: Text('Recommend For You',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: TextButton(
                    onPressed: (){},
                    child: Text('View All',style: TextStyle(color: Colors.grey),)),
              )
            ],
          )
        ],
      ),

      bottomNavigationBar: DefaultTabController(
        length: 4,
        child: Container(
          child: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home_filled,color: Colors.blue,size: 25,),
              ),
              Tab(
                icon: Icon(Icons.bookmark_border_rounded,color: Colors.grey,size: 25,),
              ),
              Tab(
                icon: Icon(Icons.message,color: Colors.grey,size: 23,),
              ),
              Tab(
                icon: Icon(Icons.person_outline,color: Colors.grey,size: 25,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
