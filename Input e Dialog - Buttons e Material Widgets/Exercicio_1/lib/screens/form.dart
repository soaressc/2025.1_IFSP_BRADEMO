import 'package:flutter/material.dart';
import '../widgets/custom_input_row.dart';
import '../widgets/custom_submit_button.dart';

void main() {
  runApp(MaterialApp(home: FormPage()));
}

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    DateTime now = DateTime.now();
    DateTime firstDate = DateTime(1985);
    DateTime initialDate = now.isBefore(firstDate) || now.isAfter(DateTime(2025)) ? firstDate : now;
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: DateTime(2025),
    );

    if (pickedDate != null) {
      setState(() {
        _dateController.text = '${pickedDate.toLocal()}'.split(' ')[0];
      });
    }
  }

  void _handleSubmit() {
    if (_formKey.currentState!.validate()) {
      final snackBar = SnackBar(
        content: Text(
          'Name: ${_nameController.text}, Phone: ${_phoneController.text}, Date: ${_dateController.text}',
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Form Demo',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomInputRow(
                controller: _nameController,
                label: 'Nome',
                icon: Icon(Icons.person),
                validator: (value) =>
                    value!.isEmpty ? 'Informe o nome' : null,
              ),
              CustomInputRow(
                controller: _phoneController,
                label: 'Telefone',
                icon: Icon(Icons.phone),
                validator: (value) =>
                    value!.isEmpty ? 'Informe o número de telefone' : null,
              ),
              CustomInputRow(
                controller: _dateController,
                label: 'Data de Nascimento',
                icon: Icon(Icons.calendar_today),
                validator: (value) =>
                    value!.isEmpty ? 'Informe a data de nascimento' : null,
                readOnly: true,
                onTap: () => _selectDate(context),
              ),
              SizedBox(height: 20),
              CustomSubmitButton(onPressed: _handleSubmit),
            ],
          ),
        ),
      ),
    );
  }
}
