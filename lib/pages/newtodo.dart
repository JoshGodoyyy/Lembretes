import 'package:flutter/material.dart';
import 'package:lembretes/models/item_model.dart';

class NewTodo extends StatefulWidget {
  const NewTodo({Key? key}) : super(key: key);

  @override
  State<NewTodo> createState() => _NewTodoState();
}

class _NewTodoState extends State<NewTodo> {
  TimeOfDay? _time = const TimeOfDay(hour: 13, minute: 30);
  DateTime? _date = DateTime.now();

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  List<Items> reminders = [];

  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffe5e5e5),
        foregroundColor: Colors.black,
        title: const Text(
          'Novo lembrete',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xffe5e5e5),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildText('Titulo', _titleController, errorText),
            const SizedBox(height: 8),
            CalendarDatePicker(
              initialDate: DateTime.now(),
              firstDate: DateTime(2022),
              lastDate: DateTime(2050),
              onDateChanged: (newDate) {
                _date = newDate;
              },
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Horário',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                TimeOfDay? newTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                setState(() {
                  if (newTime != null) _time = newTime;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xfffefefe),
                    ),
                    child: Center(
                      child: Text(
                        _time!.hour.toString(),
                        style: const TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: const Text(
                      ':',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xfffefefe),
                    ),
                    child: Center(
                      child: Text(
                        _time!.minute.toString(),
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            buildText('Descrição', _descriptionController, errorText),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                String title = _titleController.text;
                DateTime date = _date!;
                TimeOfDay time = _time!;
                String description = _descriptionController.text;

                if (title.isEmpty || description.isEmpty) {
                  setState(() {
                    errorText = 'Este campo deve ser preenchido';
                  });
                  return;
                }

                Items items = Items(
                  title: title,
                  dateTime: date,
                  timeOfDay: time,
                  description: description,
                );
                reminders.add(items);

                _titleController.clear();
                _descriptionController.clear();

                setState(() {
                  errorText = null;
                });
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.purple, Colors.blue],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  alignment: Alignment.center,
                  child: const Text(
                    'Salvar',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildText(String title, controller, String? error) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 2),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            border: const OutlineInputBorder(borderSide: BorderSide.none),
            fillColor: const Color(0xffefefef),
            filled: true,
            errorText: error,
          ),
        ),
      ],
    );
  }
}
