import 'package:flutter/material.dart';
import 'package:flutter_componets/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'frist_name': 'Juan',
      'last_name': 'Gil',
      'email': 'juan@htw.com',
      'password': '123456',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: myFormKey,
                child: Column(
                  children:   [
                    
                     CustomInputField(
                      labelText: 'Nombre', hintText: 'Nombre de  usuario', formProperty: 'frist_name', formValues:  formValues ,),
                      const SizedBox(height: 30,),
                     CustomInputField(
                      labelText: 'Apellido', hintText: 'Apellido de  usuario', formProperty: 'last_name', formValues: formValues,),
                      const SizedBox(height: 30,),
                     CustomInputField(
                      labelText: 'Correo', hintText: 'Correo de  usuario', keyboardType:TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                      const SizedBox(height: 30,),
                     CustomInputField(
                      labelText: 'Clave', hintText: 'Clave de  usuario', obscureText: true, formProperty: 'password', formValues: formValues,),
                      const SizedBox(height: 30,),

                      DropdownButtonFormField( 
                        items:const [
                            DropdownMenuItem(value: 'Admin',child: Text('Admin')),
                            DropdownMenuItem(value: 'SuperUser',child: Text('SuperUser')),
                            DropdownMenuItem(value: 'Developer',child: Text('Developer')),
                            DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer')),
                        ], 
                        onChanged: (value) {
                          print(value);
                          formValues['role'] = value ?? 'Amin';
                        },
                        ),
                      const SizedBox(height: 30,),
                      ElevatedButton(
                        onPressed: () {
                          ///cerrar teclado
                          FocusScope.of(context).requestFocus(FocusNode());

                          if (!myFormKey.currentState!.validate()) {
                            print('No valido');
                          }
                          print(formValues);
                        }, 
                        child: const SizedBox(
                          width: double.infinity,
                          child: Center(child: Text('Guardar')),
                          ),
                        ),
                          ],
                        ),
              ),
        ),
      ),
    );
  }
}

