import 'package:flutter/material.dart';
import 'package:health_app_ui/core/constants/app_strings.dart';

class HealthyFoodView extends StatefulWidget {
  const HealthyFoodView({super.key});

  @override
  State<HealthyFoodView> createState() => _HealthyFoodViewState();
}

class _HealthyFoodViewState extends State<HealthyFoodView> {
  List<String> categories = ["Breakfast", "Lunch", "Dinner", "Snack"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          buildRowButtons(),
          buildCard(context),
          buildText(context),
          buildCategories()
        ],
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  SizedBox buildCategories() {
    return SizedBox(
      height: 100,
      child: buildListViewCategories(),
    );
  }

  ListView buildListViewCategories() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) => SizedBox(
        width: 100,
        child: Column(
          children: [
            CircleAvatar(
              child: Icon(Icons.abc_outlined),
            ),
            Text(categories[index]),
          ],
        ),
      ),
    );
  }

  Text buildText(BuildContext context) {
    return Text(
      "Categories",
      style: Theme.of(context).textTheme.headline4,
    );
  }

  SizedBox buildCard(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: buildCardListView(),
    );
  }

  ListView buildCardListView() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) => Card(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: Placeholder(),
              ),
              Expanded(
                flex: 2,
                child: ListTile(
                  title: Text("Random Food"),
                  subtitle: Text("Description"),
                  trailing: CircleAvatar(
                    child: Text("AAAA"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildRowButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
          ),
          onPressed: () {},
          child: Text("Hello"),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
          ),
          onPressed: () {},
          child: Text("Hello"),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
          ),
          onPressed: () {},
          child: Text("Hello"),
        ),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        AppStrings().hello,
        style: Theme.of(context).textTheme.headline5,
      ),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: (() {}),
          icon: Icon(
            Icons.search,
          ),
        ),
      ],
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.accessibility),
          label: "data",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.accessibility),
          label: "data",
        ),
      ],
    );
  }
}
