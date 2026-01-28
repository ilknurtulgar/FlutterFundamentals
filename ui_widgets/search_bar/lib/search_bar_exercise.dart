import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBarExercise extends StatefulWidget {
  const SearchBarExercise({super.key});

  @override
  State<SearchBarExercise> createState() => _SearchBarExerciseState();
}

class _SearchBarExerciseState extends State<SearchBarExercise> {
  int selectedIndex = 0;
  String searchQuery = "";
  final List<Map<String, String>> members = [
  {"name": "Mini", "surname": "Mouse"},
  {"name": "Mickey", "surname": "Mouse"},
  {"name": "Donald", "surname": "Duck"},
  {"name": "Daisy", "surname": "Duck"},
  {"name": "Goofy", "surname": "Dog"},
  {"name": "Pluto", "surname": "Pup"},
  {"name": "Scrooge", "surname": "McDuck"},
  {"name": "Huey", "surname": "Duck"},
  {"name": "Dewey", "surname": "Duck"},
  {"name": "Louie", "surname": "Duck"},
  {"name": "Clarabelle", "surname": "Cow"},
  {"name": "Horace", "surname": "Horsecollar"},
  {"name": "Pete", "surname": "Peg-Leg"},
  {"name": "Chip", "surname": "Munk"},
  {"name": "Dale", "surname": "Munk"},
];
  final SearchController _searchController = SearchController();
  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filteredMembers = members.where((member) {
      String fieldToSearch = selectedIndex == 0
          ? (member["name"] ?? "")
          : member["surname"] ?? "";
      return fieldToSearch.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();


    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .1),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CupertinoSegmentedControl<int>(
                borderColor: Colors.pink,
                selectedColor: Colors.pink,
                unselectedColor: Colors.white,
                children: {
                  0: Padding(
                    padding: EdgeInsetsGeometry.symmetric(
                      horizontal: 20,
                      vertical: 7,
                    ),
                    child: Text("Name"),
                  ),
                  1: Padding(
                    padding: EdgeInsetsGeometry.symmetric(
                      horizontal: 20,
                      vertical: 7,
                    ),
                    child: Text("Surname"),
                  ),
                },
                groupValue: selectedIndex,
                onValueChanged: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
              ),
            ),

            SizedBox(height: 30),

            SearchBar(
              controller: _searchController,
              keyboardType: TextInputType.name,
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              leading: Icon(Icons.search, color: Colors.pink),
              trailing: [
                IconButton(
                  icon: Icon(Icons.close),
                  color: Colors.black,
                  onPressed: () {
                    setState(() {
                      searchQuery = "";
                      _searchController.clear();
                    });
                  },
                ),
              ],
            ),
            filteredMembers.isEmpty ? Padding(padding: EdgeInsetsGeometry.all(10) ,child: Text("Not found!")) : 
            Expanded(
              child: SingleChildScrollView(child: DataTable(columns: const [
                DataColumn(label: Text("Name",style: TextStyle(fontWeight: FontWeight.bold),)),
                DataColumn(label: Text("Surname",style: TextStyle(fontWeight: FontWeight.bold),))
              ], rows: filteredMembers.map((member){
                return DataRow(cells: [
                  DataCell(Text(member["name"] ?? "")),
                  DataCell(Text(member["surname"] ?? "")),
                ]);
              
              }).toList()),),
            )
          ],
        ),
      ),
    );
  }
}
