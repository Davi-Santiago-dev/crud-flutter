import 'package:crud/models/user.dart';
import 'package:crud/provider/users.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final _form = GlobalKey<FormState>();

  final Map<String, String> _formData = {};

  void _loadFormData(User user) {
    {
      _formData['id'] = user.id!;
      _formData['name'] = user.name!;
      _formData['idade'] = user.idade!;
      _formData['avatarUrl'] = user.avatarUrl!;
      _formData['posicao'] = user.posicao!;
    }
  }

  @override
  @protected
  @mustCallSuper
  void didChangeDependencies() {
    super.didChangeDependencies();
    final user = ModalRoute.of(context)?.settings.arguments as User?;
    if (user != null) {
      _loadFormData(user);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário de registro de atletas'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.save),
            //VALIDAÇÃO CAMPO NOME
            onPressed: () {
              final isValid = _form.currentState!.validate();

              if (isValid) {
                _form.currentState?.save();
                Provider.of<Users>(context, listen: false).put(
                  User(
                    id: _formData['id'],
                    name: _formData['name'],
                    idade: _formData['idade'],
                    avatarUrl: _formData['avatarUrl'],
                    posicao: _formData['posicao'],
                  ),
                );
                Navigator.of(context).pop();
              }
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
            key: _form,
            child: Column(
              children: <Widget>[
                TextFormField(
                  initialValue: _formData['name'],
                  decoration: const InputDecoration(labelText: 'Nome'),
                  //VALIDADOR CAMPO NOME
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Informe um novme válido.';
                    }

                    if (value.trim().length < 3) {
                      return 'Informe um nome com no mínimo três letras.';
                    }
                    return null;
                  },
                  onSaved: (value) => _formData['name'] = value!,
                ),
                TextFormField(
                  initialValue: _formData['idade'],
                  decoration: const InputDecoration(labelText: 'Idade'),
                  onSaved: (value) => _formData['idade'] = value!,
                ),
                TextFormField(
                  initialValue: _formData['avatarUrl'],
                  decoration: const InputDecoration(labelText: 'URL'),
                  onSaved: (value) => _formData['avatarUrl'] = value!,
                ),
                TextFormField(
                  //VALIDADOR CAMPO POSICAO
                  initialValue: _formData['posicao'],
                  decoration: const InputDecoration(labelText: 'Posição'),
                  onSaved: (value) => _formData['posicao'] = value!,
                )
              ],
            )),
      ),
    );
  }
}
