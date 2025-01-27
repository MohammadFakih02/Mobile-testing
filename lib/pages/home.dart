import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          mainSearchBar(),
          SizedBox(height: 40,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:20),
                child: Text('Category',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),

              SizedBox(height: 40,),

              Container(
                height: 150,
                color: Colors.green,
                child: ListView.builder(
                  itemBuilder: (context,index) {
                    return Container();
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container mainSearchBar() {
    return Container(
          margin:EdgeInsets.only(top: 40,left: 20,right: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff1D1617).withOpacity(0.11),
                blurRadius: 40,
                spreadRadius: 0.0
              )
            ]
          ),
          child:TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: 'Search',
            hintStyle: TextStyle(
              color: Color(0xffDDDADA),
              fontSize: 14,
              fontFamily: 'Lato'
            ),
            contentPadding: EdgeInsets.all(15),

            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset('assets/icons/Search.svg'),
            ),
            
            suffixIcon: SizedBox(
              width:100,
              child: IntrinsicHeight(   
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VerticalDivider(
                      color: Colors.black,
                      indent: 10,
                      endIndent: 10,
                      thickness: 0.2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset('assets/icons/Filter.svg'),
                    ),
                  ],
                ),
              ),
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none
            )
          ),
        ) ,
        );
  }

  AppBar appBar() {
    return AppBar(
      title: Text('BreakFast',
          style: TextStyle(
            fontFamily: 'Exo',
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          )),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.0,

      leading:
      GestureDetector(
        onTap: () => {},
        child: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10)),
        child: SvgPicture.asset(
          'assets/icons/Arrow - Left 2.svg',
          height: 20,
          width: 20,
        ),
      ),
      ),
       

      actions: [
        GestureDetector(
          onTap: ()=>{},
          child:Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        width: 37,
        decoration: BoxDecoration(
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10)),
        child: SvgPicture.asset(
          'assets/icons/dots.svg',
          height: 5,
          width: 5,
        ),
      ),
        )
        ],
    );
  }
}
