import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    /*theme of my app=>title(non recomanded)/action(recomanded)*/
    theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue
    ),
    home: MyApp(),
  ));

/*stful*/
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    /*squelette Parent widgets==scaffold*/
    return Scaffold(
      /*wigets navbar*/
    appBar: AppBar(
      title: Text('MyTodo List'),
    ),
        /*widgets container ==> contien one (child) of widgets or column contien (children) list of widgets ==contenu de notre page*/
      body: Column(
        children: [
          Container(
            child : Text('My todo for today' ,style: TextStyle(
                fontSize:35,
                fontWeight: FontWeight.bold
            ),),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),

          ),
          /*appel de notre classe et leur argument (constructeur) pour bien apparaitre dans le body*/
          TaskItem(label: 'task1',),
          TaskItem(label: 'task2',),
          TaskItem(label: 'task3',),
          TaskItem(label: 'task4',),
          TaskItem(label: 'task5',)

        ],


      ),



    );
  }
}

/*mettre new class   stateful puisque on besoin de widgets de type stateful comme checkbox*/
/*st*/
class TaskItem extends StatefulWidget {
  /*definir constructeur pour etre repet x fois*/
  String label;
  TaskItem({required this.label});


  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  /*IL ne faut pas que la valeur de checkbox null donc il faut declare variable bolean initialement false*/
  /*pour bien verifier que checkbox is checked or not on va mettre var bool*/
  bool checkBoxValue = false  ;
  @override
  Widget build(BuildContext context) {

    /*widgets row parent widgets */
    return Row(
      /*contiens les children widgets checkbox et les widgets text*/
      children: [
        Checkbox(value: checkBoxValue, onChanged: ( value){
          /*valeur de checkbox doit etre change au cours d'execution donc on  a besoin de faire une fonction setState*/
          setState(() {
            checkBoxValue = value!;
          });
        }),
        /*Text("task1")*/
    Text(widget.label),
        /*Checkbox(value: isChecked, onChanged: (value){}),
        Text("task2"),
        Checkbox(value: isChecked, onChanged: (value){}),
        Text("task3"),
        Checkbox(value: isChecked, onChanged: (value){}),
        Text("task4")*/
      ],

    );
  }
}







