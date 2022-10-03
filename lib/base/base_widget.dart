import 'package:flutter/material.dart';
import 'package:get/get.dart';

bottomSheet(){
  return Get.bottomSheet(
      isScrollControlled: true,
      Container(
        // height: 630,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                    child: Divider(
                      indent: 155,
                      endIndent: 155,
                      height: 50,
                      color: Colors.black26,
                      thickness: 3,
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Check in", style: TextStyle(color: Colors.black38),),
                        SizedBox(height: 5,),
                        Text("14.30", style: TextStyle(color: Colors.black87),),
                        SizedBox(height: 5,),
                        Text("Aug 31, 2020", style: TextStyle(color: Colors.black54),),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.shield_moon_outlined),
                        SizedBox(height: 2,),
                        Text("3 Nights",style: TextStyle(color: Colors.blueAccent),)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Check out", style: TextStyle(color: Colors.black38),),
                        SizedBox(height: 5,),
                        Text("10.30", style: TextStyle(color: Colors.black87),),
                        SizedBox(height: 5,),
                        Text("Sep 31, 2020", style: TextStyle(color: Colors.black54),),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Booking ID", style: TextStyle(color: Colors.black38),),
                        SizedBox(height: 5,),
                        Text("HMSFJ8K8KJF", style: TextStyle(color: Colors.black87),),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Booking status", style: TextStyle(color: Colors.black38),),
                        SizedBox(height: 5,),
                        Text("Cancelled", style: TextStyle(color: Colors.black87),),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Number of Guest", style: TextStyle(color: Colors.black38),),
                        SizedBox(height: 5,),
                        Text("2", style: TextStyle(color: Colors.black87),),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Booking value", style: TextStyle(color: Colors.black38),),
                        SizedBox(height: 5,),
                        Text("\$ 32.01", style: TextStyle(color: Colors.black87),),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Phone number", style: TextStyle(color: Colors.black38),),
                        SizedBox(height: 5,),
                        Text("082123892893", style: TextStyle(color: Colors.black87),),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("", style: TextStyle(color: Colors.black38),),
                        SizedBox(height: 5,),
                        Text("", style: TextStyle(color: Colors.black87),),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 40,),
                const Text("Hosting Details", style: TextStyle(color: Colors.black87),),

                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Host", style: TextStyle(color: Colors.black38),),
                        SizedBox(height: 5,),
                        Text("Rafik Bukit Vista", style: TextStyle(color: Colors.black87),),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("", style: TextStyle(color: Colors.black38),),
                        SizedBox(height: 5,),
                        Text("", style: TextStyle(color: Colors.black87),),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Profile Name", style: TextStyle(color: Colors.black38),),
                        SizedBox(height: 5,),
                        Text("Bayu & Wayan", style: TextStyle(color: Colors.black87),),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("", style: TextStyle(color: Colors.black38),),
                        SizedBox(height: 5,),
                        Text("", style: TextStyle(color: Colors.black87),),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Property Unit", style: TextStyle(color: Colors.black38),),
                        SizedBox(height: 5,),
                        Text("ME Villa - B (1BR)", style: TextStyle(color: Colors.black87),),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("", style: TextStyle(color: Colors.black38),),
                        SizedBox(height: 5,),
                        Text("", style: TextStyle(color: Colors.black87),),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Listing Name", style: TextStyle(color: Colors.black38),),
                        SizedBox(height: 5,),
                        Text("4BR Homey Villa In Uluwatu | Kitchen + Wifi + Pool", style: TextStyle(color: Colors.orange),),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("", style: TextStyle(color: Colors.black38),),
                        SizedBox(height: 5,),
                        Text("", style: TextStyle(color: Colors.black87),),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      )
  );
}