import 'package:flutter/material.dart';
import 'package:journey_case/storage/journey_storage.dart';
import '../model/journey_model.dart';
import '../utils/color_util.dart';
import '../utils/text_util.dart';
import '../widgets/custom_bottomsheet.dart';

class JourneyView extends StatefulWidget {
  const JourneyView({super.key});

  @override
  State<JourneyView> createState() => _JourneyViewState();
}

class _JourneyViewState extends State<JourneyView> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController countController = TextEditingController();
  bool isChecked = false;
  List<JourneyModel> journeys = [];

  @override
  void initState() {
    super.initState();
    _loadJourneys();
  }

  Future<void> _loadJourneys() async {
    final data = await JourneyStorage.load();
    setState(() {
      journeys = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        title: const Text(TextUtil.appTitle),
        leading: const Icon(Icons.location_city),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_comment_rounded),
            onPressed: () async {
              final result = await showModalBottomSheet<JourneyModel>(
                context: context,
                isScrollControlled: true,
                backgroundColor: ColorUtil.bottomSheetColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                builder: (context) {
                  return CustomBottomsheet(
                    titleController: titleController,
                    countController: countController,
                  );
                },
              );
              if (result != null) {
                setState(() {
                  journeys.add(result);
                });

                await JourneyStorage.saveList(journeys);

                titleController.clear();
                countController.clear();
                isChecked = false;
              }
            },
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: journeys.isEmpty
          ? const Center(child: Text(TextUtil.emptyList))
          : ListView.builder(
              itemCount: journeys.length,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          journeys[index].title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "${TextUtil.placeNumberLabel} : ${journeys[index].count}",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(width: 6),
                        journeys[index].isGo
                            ? Text(
                                "${TextUtil.didWeGoLabel} : Visited ",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14,
                                ),
                              )
                            : Text(
                                "${TextUtil.didWeGoLabel} : No Visited ",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14,
                                ),
                              ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
