import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({ Key? key }) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
    Size size = MediaQuery.of(context).size;
    Color maincolor = Color(0xff004559);
    return Scaffold(
      

     body: Container(
       width: size.width,
       height: size.height,
       child: Padding(
         padding:EdgeInsets.only(top: 40,left: 20),
         child: SingleChildScrollView(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                 ListTile(
            contentPadding: EdgeInsets.only(left: 4),
               leading: CircleAvatar(
            backgroundColor: Colors.black,
            // radius: 30,
            backgroundImage: AssetImage('assets/profileImage.png',),
            child: GestureDetector(onTap: () {}),
            ),
            title: Text('Hello sarah!',style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),),
            subtitle: Text('Monday, 12th Feb ,2021 ',style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w400),),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.notification_add_outlined),
            ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          // side: BorderSide(color: Colors.grey.shade500,width: 2),
                        ),
                        color: maincolor,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ListTile(
                          title: Text('Wallet balance',style: TextStyle(color: Colors.white,fontSize: 14),),
                          subtitle: Text('NGN,500,420.00',style: TextStyle(color: Colors.white,fontSize: 25),),
                          trailing: Container(
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color.fromARGB(255, 9, 89, 112),
                            ),
                            width: 50,
                            height: 50,
                            
                            child: Icon(Icons.add,color: Colors.white,),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 18,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text('Updates',style: TextStyle(color: maincolor,fontSize:20,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height:12),
              Container(
                width: size.width,
                height: 180,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (ctx,index){
                    return 
                    Padding(
                      padding: const EdgeInsets.only(right:10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white,
                        ),
                        
                        width: size.width*.8,
                        height: 180,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Tayo Badmus',style:TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),),
                                   Text(' and 5 others checked in',style:TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                     ),),
                                ],
                              ),
                           
                              Text(  ' at spicy',style:TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                     ),),
                                      SizedBox(
                                height: 10,
                              ),
                                     Text('Spice Cafe, 10 kilometers away',style:TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 16,
                                     ),),
                                     SizedBox(
                                       height: 25,
                                     ),
                                      Row(
                                children: [
                                  Container(
                                    width: 100,
                                    child: Stack(
                                      
                                      children: [
                                        Positioned(
                                          left: 60,
                                          child: CircleAvatar(
                                          backgroundColor: Colors.black,
                                          radius: 15,
                                          backgroundImage: AssetImage('assets/profileImage.png',),
                                          child: GestureDetector(onTap: () {}),
                                          ),
                                        ),
                                      Positioned(
                                        left: 30,
                                        child: CircleAvatar(
                                        backgroundColor: Colors.black,
                                        radius: 15,
                                        backgroundImage: AssetImage('assets/profileImage.png',),
                                        child: GestureDetector(onTap: () {}),
                                        ),
                                      ),
                                      CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 15,
                                      backgroundImage: AssetImage('assets/profileImage.png',),
                                      child: GestureDetector(onTap: () {}),
                                      ),
                                      ],
                                    ),
                                  ),
                                  
                                    SizedBox(width: 0,),
                                    Text('+3',style:TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                     ),),
                                     SizedBox(width: 20,),
                                     Container(
                                       height: 45,
                                       width: 160,
                                       decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.orange,
                        ),
                                       child: Center(child: Text('Get Direction',style:TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                     ),)))
                                ],
                              ),
                                      
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
             
             SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text('Spots Near You',style: TextStyle(color: maincolor,fontSize:20,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                              Container(
                width: size.width
                ,
                height: 180,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (ctx,index){
                    return 
                    Padding(
                      padding: const EdgeInsets.only(right:10),
                      child: Container(
                        
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/cafeteria.jpg')),
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white,
                        ),
                        
                        width: size.width*.7,
                        height: 180,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                   Icon(Icons.favorite,color: Colors.red,),
                                     Container(
                                       width: 80,
                                       height: 30,
                                       decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: Colors.grey,
                        ),
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                                         children: [
                                           Icon(Icons.star),
                                           
                                           Text('4.1',style: TextStyle(color: Colors.white),)
                                         ],
                                       ),
                                     )
                                  ],
                                ),
                              ),
                           
                              
                                      SizedBox(
                                height: 60,
                              ),
                                     Padding(
                                       padding: const EdgeInsets.only(left: 10),
                                       child: Text('Spice Cafe',style:TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                       ),),
                                     ),
                                     SizedBox(
                                       height: 10,
                                     ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Text('10 kilometers away',style:TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                     ),),
                                      ),
                        
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 15,),
                  Text('Recent Transaction',style: TextStyle(color: maincolor,fontSize:20,fontWeight: FontWeight.bold),),
             ],
           ),
         ),
       ),
     ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            // backgroundColor: Colors.white,
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Wallet',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Community',
            backgroundColor: Colors.white,
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person),
            
            label: 'Profile',
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: maincolor,
        unselectedItemColor: Colors.grey.shade600,
        onTap: _onItemTapped,
      ),
    floatingActionButton: Container(
      height: 60,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: maincolor,

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.qr_code_rounded,color: Colors.white,size: 30,),
          Text('Scan QR',style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
    ),
    );
  }
}