import 'package:flutter/material.dart';
import 'package:services/newpage.dart';

class LoginUser extends StatelessWidget {
  const LoginUser({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color maincolor = Color(0xff004559);
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: size.height*.5,
                width: size.width*.7,
                decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/adress.png')),
                            // borderRadius: BorderRadius.circular(30.0),
                            // color: Colors.white,
                          ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Center(
                  child: Text('Send and receive money with your wallet',textAlign: TextAlign.center,style: TextStyle(
                    fontSize:25,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Center(
                  child: Text('Bringing Quality health care to your doorstep is our priority',textAlign: TextAlign.center,style: TextStyle(
                    fontSize:17
                  ),),
                ),
              ),
               SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.minimize,color: Colors.orangeAccent,),
                    Icon(Icons.minimize,color: Colors.orangeAccent,),
                    Icon(Icons.minimize,color: Colors.grey,),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const NewScreen()));             },
                child: Container(
                  height: 50,
                  width: size.width,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: maincolor,
                  ),
                  child: Center(
                    child: Text('Login',style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20
                    ),),
                  ),
                ),
              ),
              SizedBox(height: 16,),
              Container(
                height: 50,
                width: size.width,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: maincolor,
                    width: 2
                  ),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text('Sign Up',style: TextStyle(
                    color: maincolor,fontWeight: FontWeight.bold,fontSize: 20
                  ),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}