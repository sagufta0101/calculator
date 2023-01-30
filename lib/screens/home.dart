import 'package:calculator/utils/colors.dart';
import 'package:calculator/widgets/button.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: appbar(
        //   context,
        //   'Home',
        //   Icons.calculate,
        //   () {
        //     Navigator.pushNamed(context, '/calculator');
        //   },
        // ),
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Text(
            'HOME',
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(color: whiteColor),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Center(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(
                icon: Icons.history,
                ontap: () {
                  Navigator.pushNamed(context, '/history');
                },
              ),
              Button(
                icon: Icons.calculate,
                ontap: () {
                  Navigator.pushNamed(context, '/calculator');
                },
              ),
            ],
          )),
        ),
      ],
    ));
  }
}
