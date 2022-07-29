import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _tabIndexSelected=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          buildBottomNavigationBar(Icons.home,0),
          buildBottomNavigationBar(Icons.card_giftcard,1),
          buildBottomNavigationBar(Icons.camera,2),
          buildBottomNavigationBar(Icons.pie_chart,3),
          buildBottomNavigationBar(Icons.person,4),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0XFF00B686), Color(0XFF00838F)],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          Text(
                            'Available balance',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.notifications,
                            color: Colors.white,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  blurRadius: 6,
                                  spreadRadius: 3,
                                 ),
                              ],
                              color: Color(0XFFB686),
                              border: Border.all(
                                width: 1.6,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/zainphoto.jpg'),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'zain khan',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.camera_front,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        text: '\$564',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: '.50',
                                              style: TextStyle(
                                                color: Colors.white38,
                                              ))
                                        ]),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                color: Colors.grey.shade100,
                child: ListView(
                  padding: EdgeInsets.only(top: 60),
                  children: [
                    Text(
                      'Activity',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                       ActivityMethod(
                          Icons.card_membership,
                          'My Card',
                          Colors.blue.withOpacity(0.2),
                           Color(0XFF015798)
                        ), ActivityMethod(
                          Icons.transfer_within_a_station,
                          'My Card',
                          Colors.blue.withOpacity(0.2),
                           Color(0XFF0097A7)
                        ), ActivityMethod(
                          Icons.account_tree_sharp,
                          'My Card',
                          Colors.blue.withOpacity(0.3),
                           Color(0XFF9499B7)
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Text(
                      'Categories',
                      style:TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20,),
                    buildCategories(Icons.fastfood,'food',120,20),
                    buildCategories(Icons.flash_on,'Utilities',340,50),
                    buildCategories(Icons.fastfood,'food',120,20),
                    buildCategories(Icons.fastfood,'food',120,20),
                  ],
                ),
              ))
            ],
          ),
          Positioned(
            top: 185,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              width: MediaQuery.of(context).size.width * 0.85,
              height: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.4),
                    blurRadius: 8,
                    spreadRadius: 3,
                    offset: Offset(0, 10),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Income',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_upward,
                                color: Color(0XFF00838F),
                              ),
                            ],
                          ),
                          Text(
                            '\$2 170.90',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Container(
                        width: 1,
                        height: 50,
                        color: Colors.grey,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Profit',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_downward,
                                color: Color(0XFF00838F),
                              ),
                            ],
                          ),
                          Text(
                            '\$2 330.00',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'You spent \$1,354 this month',
                    style: TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'You spent \$1,354 this month',
                    style: TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 1,
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Tell me more',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildBottomNavigationBar(IconData icon,int index) {
    return GestureDetector(
      onTap: (){
        setState((){
          _tabIndexSelected=index;
        });
      },
      child: Container(
            width: MediaQuery.of(context).size.width/5,
            height: 60,
            decoration:index==_tabIndexSelected? BoxDecoration(


                border:Border(bottom:BorderSide(width:4,color: Colors.green),),
     gradient: LinearGradient(
       colors: [
         Colors.green.withOpacity(0.3),
         Colors.green.withOpacity(0.016)
       ],
       begin: Alignment.bottomCenter,end: Alignment.topCenter,
     )

            ):BoxDecoration(),

            child: Icon(
              icon,
              color: index==_tabIndexSelected?Colors.green:Colors.grey,
            )
          ),
    );
  }

  Container buildCategories(IconData icon,String title ,int amount,int persentage) {
    return Container(

                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,

                    ),
                    height: 75,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                              Icon(
                                icon,color: Color(0xFF00B686),
                              ),
                                SizedBox(width: 10,),
                                Text(
                                 title,style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold
                                ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '\$amount',
                                  style: TextStyle(
                                    fontSize: 17,fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  '(\$persentage%)',
                                  style: TextStyle(
                                    fontSize: 17,fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 15,),
                        Stack(
                          children: [
                            Container(
                              height: 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              height: 5,width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.green
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
  }
  Expanded ActivityMethod(IconData icon,String title,Color backgroundColor,Color iconColor){
    return  Expanded(
      child: Container(

        margin: EdgeInsets.all(10),
        width: 90,
        height: 90,
        decoration: BoxDecoration(

          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
