import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({Key? key}) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  // String texto = '';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final passWordEC = TextEditingController();
  bool dontShowPassword = false;
  String categoria = 'Categoria 1';

  @override
  void dispose() {
    nameEC.dispose();
    passWordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              children: [
                // TextField(
                //   onChanged: (String value) {
                //     setState(() {
                //       texto = value;
                //     });
                //   },
                // ),
                // Text(
                //   'Texto digitado: $texto',
                //   style: TextStyle(fontSize: 15),
                // ),

                TextFormField(
                  controller: nameEC,
                  // controller -> recebe os valores
                  // autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLines: null,
                  decoration: InputDecoration(
                      labelText: "Nome completo",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      isDense: true),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo não preenchido';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: passWordEC,
                  // controller -> recebe os valores
                  // autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLines: 1,
                  decoration: InputDecoration(
                      labelText: "Senha",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      isDense: true),
                  obscureText: !dontShowPassword,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo não preenchido';
                    }
                    return null;
                  },
                ),
                Row(
                  children: [
                    Text(
                      'Mostrar senha',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Switch(
                      value: dontShowPassword,
                      onChanged: (bool value) {
                        setState(() {
                          dontShowPassword = value;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 5),
                DropdownButtonFormField<String>(
                  value: categoria,
                  icon: Icon(Icons.keyboard_arrow_down_rounded),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    isDense: true,
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Categoria não preenchida';
                    }
                    return null;
                  },
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      categoria = newValue;
                    }
                  },
                  items: [
                    DropdownMenuItem(
                      value: 'Categoria 1',
                      child: Text('Categoria 1'),
                    ),
                    DropdownMenuItem(
                      value: 'Categoria 2',
                      child: Text('Categoria 2'),
                    ),
                    DropdownMenuItem(
                      value: 'Categoria 3',
                      child: Text('Categoria 3'),
                    ),
                  ],
                ),
                SizedBox(height: 200),
                ElevatedButton(
                  onPressed: () {
                    var formValid = _formKey.currentState?.validate() ?? false;
                    var message = 'Inválido';

                    if (formValid) {
                      message = 'Válidado, ${nameEC.text}';
                    }

                    ScaffoldMessenger.of(context).clearSnackBars();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(message),
                    ));
                  },
                  child: Text('Entrar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
