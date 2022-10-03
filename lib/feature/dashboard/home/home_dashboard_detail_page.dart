import 'package:bukit_vista/base/base_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeDashboardDetailPage extends StatefulWidget {
  String name;
  String city;
  String imgUrl;
  String email;
  String guestRegistered;
  dynamic phoneNumber;
  HomeDashboardDetailPage({
    Key? key,
    required this.name,
    required this.city,
    required this.imgUrl,
    required this.email,
    required this.phoneNumber,
    required this.guestRegistered,
  }) : super(key: key);

  @override
  State<HomeDashboardDetailPage> createState() => _HomeDashboardDetailPageState();
}

class _HomeDashboardDetailPageState extends State<HomeDashboardDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guest Details"),
        leading: Container(
          margin: EdgeInsets.only(left: 30),
          child: IconButton(
            onPressed: (){
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios)
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(left: 25, right: 25, top: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 2,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "${widget.imgUrl}"
                          ),
                          radius: 30,
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('${widget.name}',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),overflow: TextOverflow.ellipsis),
                              SizedBox(height: 5,),
                              Text('Guest since ${widget.guestRegistered.toString().split('-')[0]}',style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13,),overflow: TextOverflow.ellipsis,)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        unselectedLabelColor: Colors.black54,
                        indicatorColor: Colors.blue,
                        labelColor: Colors.blue,
                        padding: const EdgeInsets.only(bottom: 5),
                        tabs: [
                          Tab(
                            text: "Overview",
                          ),
                          Tab(
                            text: "Bookings",
                          ),
                          Tab(
                            text: "Personas",
                          ),
                        ]),
                    Container(
                      //Add this to give height
                      height: Get.height,
                      width: Get.width,
                      // constraints: BoxConstraints.expand(),
                      child: TabBarView(children: [
                        Container(
                          margin: EdgeInsets.only(left: 40, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Email",style: TextStyle(color: Colors.black38),),
                              SizedBox(height: 5,),
                              Text("${widget.email}",style: TextStyle(color: Colors.black87),),

                              SizedBox(height:25,),

                              Text("Phone Number",style: TextStyle(color: Colors.black38),),
                              SizedBox(height: 5,),
                              Text("${widget.phoneNumber.toString().replaceAll('-', '')}",style: TextStyle(color: Colors.black87),),

                              SizedBox(height:25,),

                              Text("Guest Origin",style: TextStyle(color: Colors.black38),),
                              SizedBox(height: 5,),
                              Text("${widget.city}",style: TextStyle(color: Colors.black87),),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 40, top: 20, right: 40),
                          child: ListView.builder(
                              itemCount: 2,
                              itemBuilder: (context, index){
                                return InkWell(
                                  onTap: (){
                                    bottomSheet();
                                  },
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Colors.amberAccent,
                                            child: Icon(Icons.house_outlined,color: Colors.orange,),
                                          ),
                                          SizedBox(width: 10,),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 8,),
                                                Text("HMASJKSSCL", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),overflow: TextOverflow.ellipsis),
                                                SizedBox(height: 20,),
                                                Text(index==0?"Pondok Lulik #20":"Atra Bamboology", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),overflow: TextOverflow.ellipsis),
                                                SizedBox(height: 8,),
                                                Text("14 Dec 2021 - 14 Jan 2022", style: TextStyle(fontWeight: FontWeight.w200, fontSize: 14),overflow: TextOverflow.ellipsis),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: index==0?Colors.lightGreenAccent:Colors.pinkAccent,
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(10),
                                                    bottomLeft: Radius.circular(10)
                                                )
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 25,top: 5,bottom: 5,right: 8),
                                              child: Text(
                                                index==0?"Confirmed":"Canceled",
                                                style: TextStyle(
                                                  color: index==0?Colors.green:Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 40, top: 20, right: 40),
                          child: ListView.builder(
                              itemCount: 2,
                              itemBuilder: (context, index){
                                return InkWell(
                                  onTap: (){
                                    bottomSheet();
                                  },
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Colors.amberAccent,
                                            child: Icon(Icons.house_outlined,color: Colors.orange,),
                                          ),
                                          SizedBox(width: 10,),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 8,),
                                                Text("HMASJKSSCL", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),overflow: TextOverflow.ellipsis),
                                                SizedBox(height: 20,),
                                                Text(index==0?"Pondok Lulik #20":"Atra Bamboology", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),overflow: TextOverflow.ellipsis),
                                                SizedBox(height: 8,),
                                                Text("14 Dec 2021 - 14 Jan 2022", style: TextStyle(fontWeight: FontWeight.w200, fontSize: 14),overflow: TextOverflow.ellipsis),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: index==0?Colors.lightGreenAccent:Colors.pinkAccent,
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(10),
                                                    bottomLeft: Radius.circular(10)
                                                )
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 25,top: 5,bottom: 5,right: 8),
                                              child: Text(
                                                index==0?"Confirmed":"Canceled",
                                                style: TextStyle(
                                                    color: index==0?Colors.green:Colors.white,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }
                          ),
                        ),
                      ]),
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
