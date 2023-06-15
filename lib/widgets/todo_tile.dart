import 'package:flutter/material.dart';

class TodoTIle extends StatelessWidget {
  final String title;
  final String description;
  
  const TodoTIle({
    Key? key,
    required this.title,
    required this.description,
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      width: double.infinity,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadiusDirectional.circular(8),
      ),
      child: Column(
        children: [
          Text(title, 
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 5,),
          Text(description, 
          style: TextStyle(
            color: Color.fromARGB(255, 52, 93, 113),
            fontSize: 25,
            fontWeight: FontWeight.normal
          ),)
          ], 
      ),
    );
  }
}