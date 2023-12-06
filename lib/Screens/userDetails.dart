import 'package:apitask/Modelss.dart';
import 'package:apitask/myprovders.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key,
  required this.user});
  final Models user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Details"),

      ),
      backgroundColor: Colors.brown,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
          child:Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                    'Personal Details',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  )), Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Text('Name : ${user.name}')
              ),  Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('Username : ${user.username}')
              ),  Padding(
                  padding: const EdgeInsets.only(left: 10, ),
                  child: Text('email : ${user.email}')
              ),  Padding(
                  padding: const EdgeInsets.only(left: 10, ),
                  child: Text('Phone : ${user.phone}')
              ),  Padding(
                  padding: const EdgeInsets.only(left: 10, ),
                  child: Text('Web site : ${user.website}')
              ),
              SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10),
            child: Text(
              'Adress :',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            )),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('${user.address?.street}'),
              ), Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('${user.address?.suite}'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('${user.address?.city}'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('${user.address?.zipcode}'),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: Text(
                  'Company :',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('${user.company?.name}'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('${user.company?.catchPhrase}'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('${user.company?.bs}'),
              ),
              SizedBox(
                height: 10,
              )


            ],
          )

      ),
    );
  }
}
