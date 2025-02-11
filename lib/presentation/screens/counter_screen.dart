import 'package:bloc_demo/logic/counter/counter_bloc.dart';
import 'package:bloc_demo/presentation/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    //   create:(context)=>CounterBloc(),
    //   //imp so is not associated with parent context
    //   //builder helps create a new BuildContext with access to provider
    //   child: BlocConsumer<CounterBloc,CounterState>(
    //     listener:(context,state){},
    //     builder:(context,state){
          return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text("Counter Screen",
            style: TextStyle(
              color:Colors.white
            ),),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
  //               BlocBuilder<CounterBloc,CounterState>(
  //                 builder:(context,state){
  //                 return Text("${state.count}",
  //                 overflow: TextOverflow.ellipsis,
  //                 style: TextStyle(fontSize: 200),);
  // }),
                SizedBox(width:MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(onPressed: (){
                      //context.read<CounterBloc>().add(AddOne());
                    },
                    icon: Icon(Icons.add),
                    iconSize:60,
                    style:ButtonStyle(
                      shape:WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(80),
                        side:BorderSide(color:Colors.black87,width:1)
                      ))
                    ),),
                    IconButton(onPressed: (){
                     // context.read<CounterBloc>().add(RemoveOne());
                    },
                    icon: Icon(Icons.remove),
                    iconSize: 60,
                    style:ButtonStyle(
                      shape:WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(80),
                        side:BorderSide(color:Colors.black87,width:1)
                      ))
                    )),
                ],)
              ],
            ),
          ),
          bottomNavigationBar: Navbar(selectedIndex: 0),
           ); 
        }
    //   ),
    // );

  // }
}