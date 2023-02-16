import 'package:flutter/material.dart';
import 'package:flutter_first_project/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dailogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  // -> não deixa sair do dialog clicando fora dele
                  context: context,
                  builder: (_) {
                    return DialogCustom(context);
                  },
                );
              },
              child: Text('Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: Text('Titulo do simple dialog'),
                      contentPadding: EdgeInsets.all(10),
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 200,
                          height: 200,
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          color: Colors.indigo,
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text('Fechar'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Simple dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Alert dialog'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: [
                            Text('Texto do alert dialog!'),
                          ],
                        ),
                      ),
                      actions: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.save_alt_rounded),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.cancel_presentation_rounded),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('Help'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Alert dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                //final selectedTime = await
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                // print('Horário definido: ${selectedTime ?? 'Nenhum horário selecionado'}');
              },
              child: Text('Time Picker'),
            ),
            ElevatedButton(
              onPressed: () async {
                // final selectedDate = await
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                );
                // print('Data definida: ${selectedDate ?? 'nenhuma data selecionada'}');
              },
              child: Text('Date Picker'),
            ),
            ElevatedButton(
              onPressed: () {
                showAboutDialog(context: context);
              },
              child: Icon(Icons.perm_device_information_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
