import 'package:belajar_flutter/main.dart';
import 'package:belajar_flutter/pages/main_page.dart';
import 'package:belajar_flutter/widgets/todo_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddNewTodoPage extends StatefulWidget {
  const AddNewTodoPage({super.key});

  @override
  State<AddNewTodoPage> createState() => _AddNewTodoPageState();
}

class _AddNewTodoPageState extends State<AddNewTodoPage> {
  late TextEditingController titleController;
  late TextEditingController descriptionController;
  
  @override
  void initState(){
    titleController = TextEditingController(text: '');
    descriptionController = TextEditingController(text: '');
    super.initState();
  }

@override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        backgroundColor: Color.fromARGB(255, 141, 96, 149),
        title: Text('Add New To Do'),
        centerTitle: true,
        leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        }, 
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
          )
        ),
      ),
      body: Center(
        child: Container(
          height: 350,
          width: 300,
          padding: EdgeInsetsDirectional.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 219, 186, 225),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // judul
              Text('Judul', 
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: titleController,
              ),
              SizedBox(
                height: 15,
              ),
              // description
              Text('Description',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ), 
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: descriptionController,
              ),
              const SizedBox(
                height: 24,
                ),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    TodoTIle newTile = TodoTIle(
                      title: titleController.text, 
                      description: descriptionController.text);
                    
                    todolist.add(newTile);

                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MainPage()
                    ), (route) => false,
                    );
                  }, 
                  child: Text('iyo itumi'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}