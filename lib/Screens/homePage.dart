import 'package:apitask/Screens/userDetails.dart';
import 'package:apitask/myprovders.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String apiUrl="https://jsonplaceholder.typicode.com/users";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('User Data'),
        ),
      body:FutureBuilder(
        future: Provider.of<MyProviders>(context).showData(),
        builder: (context, snapshot) {
          return    ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context,intex) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(snapshot.data![intex].name!),
                  subtitle: Text(snapshot.data![intex].email!),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return UserDetails(user: snapshot.data![intex],);
                    },));
                  },
                ),

              );
            }
          );

        },

      )
      ,
    );
  }
}
