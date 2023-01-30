import 'package:calculator/utils/colors.dart';
import 'package:calculator/model/recent_history.dart';
import 'package:calculator/widgets/appbar.dart';
import 'package:calculator/widgets/toast.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  History({Key? key}) : super(key: key);
  final List<RecentHistory> result = recentHistory.reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(
        context,
        'Recent History',
        Icons.auto_delete_outlined,
        () {
          Navigator.pop(context);
          recentHistory.clear();
          showToast(context, 'History cleared successfully');
        },
      ),
      body: result.isEmpty
          ? Center(
              child: Text(
                'Empty!',
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(fontSize: 12.0),
              ),
            )
          : ListView.separated(
              padding: const EdgeInsets.all(10.0),
              itemCount: result.length,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 10),
              itemBuilder: (BuildContext context, int i) {
                return ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  tileColor: buttonsBackgroundColor,
                  title: Text(
                    result[i].title!,
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(fontSize: 26.0),
                  ),
                  subtitle: Text(result[i].subtitle!),
                );
              },
            ),
    );
  }
}
