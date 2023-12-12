import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
  final String mainText;
  final String subText;
  final String leftText; //The no at default
  final String rightText;//the yes at default
  final IconData leadingIcon;
  const CustomCard({
    super.key,
     this.mainText='Hello',
     this.subText='Have you used this app before?',
     this.leftText='No',
     this.rightText='Yes',
     this.leadingIcon=Icons.question_mark
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          title: const Text('My Card'),
          centerTitle: true,
          ),
      body: Center(child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
             ListTile(
              leading: Icon(leadingIcon),
              title: Text(mainText),
              subtitle: Text(subText),
             ),
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget> [
                TextButton(
                  onPressed: (){
                    AlertDialog alert = const AlertDialog(title: Text('Welcome'));
                    showDialog(context: context, builder: (context){return alert;});
                  },child: Text(leftText)
                  ),
                const SizedBox(width: 8),TextButton(
                  onPressed: (){
                    AlertDialog alert = const AlertDialog(title: Text('Welcome Back'));
                    showDialog(context: context, builder: (context){return alert;});

                  },child: Text(rightText)
                  ),
                const SizedBox(width: 8)
              ],
             ),
          ],
        )
      ))
    );
  }
}