import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Bloc/screll_bloc.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var mwidth = MediaQuery.of(context).size.width;
    var mheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Users",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: mheight * 0.02,
          ),
          Center(
            child: Container(
              height: mheight * 0.05,
              width: mwidth * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: mwidth * 0.03,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        icon: Icon(Icons.search),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BlocBuilder<ScrellBloc, ScrellState>(
  builder: (context, state) {if(state is ScrellBlocLoading){
    return Center(
      child: CircularProgressIndicator(),
    );
  }if (state is giSrellBlocLoaded)
    return Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                
                return Column(
                  children: [
                    SizedBox(height: mheight*0.02,),
                    Container(
                      height: mheight * 0.1,
                      width: mwidth * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: Padding(
                        padding:  EdgeInsets.only(left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("dnn"),
                            Text("dkck"),
                            Text("jbnx")
                          ],
                        ),
                      ),

                    ),
                  ],
                );
              },
            ),
          );
  },
),
        ],
      ),
    );
  }
}
