import 'package:bukit_vista/feature/dashboard/home/home_dashboard_detail_page.dart';
import 'package:bukit_vista/feature/dashboard/home/home_dashboard_presenter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeDashboardPage extends StatefulWidget {
  const HomeDashboardPage({Key? key}) : super(key: key);

  @override
  State<HomeDashboardPage> createState() => _HomeDashboardPageState();
}

class _HomeDashboardPageState extends State<HomeDashboardPage> {

  final dashboardPresenter = Get.put(HomeDashboardPresenter());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dashboardPresenter.getUserGuest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Guest List"),
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: Get.width,
                    height: 115,
                    color: Colors.blue,
                  ),
                  Center(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.only(left: 50, top: 30),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.search),
                                    hintText: "Search your guest name",
                                    hintStyle: TextStyle(
                                        fontSize: 13
                                    )

                                ),
                              )),
                        ),
                        Container(
                            width: 40,
                            height: 40,
                            margin: const EdgeInsets.only(left: 10, right: 20, top: 30),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orangeAccent,
                            ),
                            child: const Icon(Icons.filter_list,color: Colors.white,)
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 530,
                margin: const EdgeInsets.only(top: 20,left: 25, right: 25,),
                child: Obx(()=>ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: dashboardPresenter.userModel.value.results?.length??0,
                    itemBuilder: (context, index){
                      return InkWell(
                        onTap: (){
                          Get.to(
                            HomeDashboardDetailPage(
                              name: "${dashboardPresenter.userModel.value.results?[index].name?.title} ${dashboardPresenter.userModel.value.results?[index].name?.first} ${dashboardPresenter.userModel.value.results?[index].name?.last}",
                              city: "${dashboardPresenter.userModel.value.results?[index].location?.city}, ${dashboardPresenter.userModel.value.results?[index].location?.country}",
                              imgUrl: "${dashboardPresenter.userModel.value.results?[index].picture?.thumbnail}",
                              email: "${dashboardPresenter.userModel.value.results?[index].email}",
                              phoneNumber: "${dashboardPresenter.userModel.value.results?[index].phone}",
                              guestRegistered: "${dashboardPresenter.userModel.value.results?[index].registered?.date}",
                            ),
                          );
                        },
                        child: Card(
                          elevation: 2,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "${dashboardPresenter.userModel.value.results?[index].picture?.thumbnail}"
                                  ),
                                  radius: 30,
                                ),
                                const SizedBox(width: 10,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('${dashboardPresenter.userModel.value.results?[index].name?.title} ${dashboardPresenter.userModel.value.results?[index].name?.first} ${dashboardPresenter.userModel.value.results?[index].name?.last}',style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),overflow: TextOverflow.ellipsis),
                                      const SizedBox(height: 5,),
                                      Text('${dashboardPresenter.userModel.value.results?[index].location?.city}, ${dashboardPresenter.userModel.value.results?[index].location?.country}',style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 13,),overflow: TextOverflow.ellipsis,)
                                    ],
                                  ),
                                ),
                                const Icon(Icons.arrow_forward_ios,size: 20,color: Colors.blue),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                )),
              ),
            ],
          ),
        )
    );
  }
}

