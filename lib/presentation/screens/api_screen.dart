import 'package:bloc_demo/logic/api/api_bloc.dart';
import 'package:bloc_demo/presentation/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApiScreen extends StatelessWidget{
  const ApiScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text("API Screen",
            style: TextStyle(
              color:Colors.white
            ),),
            centerTitle: true,
          ),
      body:Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height/6,
              width: MediaQuery.of(context).size.width,
              child:Center(
                // child: BlocBuilder<ApiBloc,ApiState>(builder:(context,state){
                //   switch(state.runtimeType){
                //     case FactFetched:
                //       final factState=state as FactFetched;
                //       return Container(
                //         margin:EdgeInsets.symmetric(horizontal:10),
                //         child: Center(
                //           child: Text(factState.fact?.text??"Try fetching a fact",
                //           style: TextStyle(fontSize: 25),),
                //         ),);
                //     case FactError:
                //       return Text("Sorry, we are facing some issues, Please try again",
                //       style: TextStyle(color: Colors.red,
                //       fontSize:25));
                //     case FactLoading:
                //       return CircularProgressIndicator();
                //   }
                //   return Text("");
                
                // }),
              ),
            ),
            TextButton(
              style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Theme.of(context).primaryColor)),
              onPressed:(){
              print("hello");
              //context.read<ApiBloc>().add(Fetch());
            }, child: Text("Get Fact",
            style:TextStyle(
              fontSize: 30,
              color: Colors.white,
            ))),
          ],
        )
      ),
      bottomNavigationBar:Navbar(selectedIndex: 1)
    );
  }
}