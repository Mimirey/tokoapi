import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:latihan_tokoapi/components/title_text.dart';
import 'package:latihan_tokoapi/controllers/inspect_controller.dart';

//inspect pagenya yang ini
class InspectPage extends StatelessWidget {
  const InspectPage({super.key});

  @override
  Widget build(BuildContext context) {
    final InspectController c = Get.put(InspectController());
    return Scaffold(
      appBar: AppBar(
        title: const TitleText(
          text: "Inspect Book",
          fontSize: 30,
          color: Color.fromARGB(255, 135, 193, 137),
        ),
      ),
      // body: Obx(() {
      //   return ListView.builder(  <-- di GPT aja wak kalo kunyalain error nanti kalo ku jelasin  satu satu malas
      //     itemCount: active.length,
      //     itemBuilder: (context, i) {
      //       final todo = active[i];
      //       final indexInAll = c.todos.indexOf(todo);

      //       return Card(
      //         margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      //         child: ListTile(
      //           leading: Checkbox(
      //             value: todo.isDone,
      //             onChanged: (_) => c.toggleTodoStatus(indexInAll),
      //           ),
      //           title: Text(
      //             todo.title,
      //             style: const TextStyle(fontWeight: FontWeight.bold),
      //           ),
      //           subtitle: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text(todo.desc),
      //               const SizedBox(height: 4),
      //               Text("Kategori: ${c.categories[todo.selectedCategory]}"),
      //               const SizedBox(height: 2),
      //               Text("Tenggat: ${formatDeadline(todo.deadline)}"),
      //             ],
      //           ),
      //           trailing: IconButton(
      //             icon: const Icon(Icons.edit),
      //             onPressed: () {
      //               Get.toNamed(AppRoutes.editPage, arguments: indexInAll);
      //             },
      //           ),
      //         ),
      //       );
      //     },
      //   );
      // }),
    );
  }
}
