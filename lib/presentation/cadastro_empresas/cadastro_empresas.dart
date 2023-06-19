import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_startupinvestor/core/utils/color_constant.dart';
import 'package:flutter_application_startupinvestor/theme/app_style.dart';



class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
// text fields' controllers
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _faturamentoController = TextEditingController();

  final CollectionReference _products =
      FirebaseFirestore.instance.collection('empresas');

  Future<void> _create([DocumentSnapshot? documentSnapshot]) async {

    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext ctx) {
          return Padding(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _nomeController,
                  decoration: const InputDecoration(labelText: 'Nome'),
                ),
                TextField(
                  
                  keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
                  controller: _faturamentoController,
                  decoration: const InputDecoration(
                    labelText: 'Faturamento',
                    
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Criar'),
                  onPressed: () async {
                    final String nome = _nomeController.text;
                    final double? faturamento =
                    double.tryParse(_faturamentoController.text);
                    if (faturamento != null) {
                        await _products.add({"nome": nome, "faturamento": faturamento});

                      _nomeController.text = '';
                      _faturamentoController.text = '';
                        Navigator.of(context).pop();
                    }
                  },
                )
              ],
            ),
          );

        });
  }
  Future<void> _update([DocumentSnapshot? documentSnapshot]) async {
    if (documentSnapshot != null) {

      _nomeController.text = documentSnapshot['nome'];
      _faturamentoController.text = documentSnapshot['faturamento'].toString();
    }

    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext ctx) {
          return Padding(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _nomeController,
                  decoration: const InputDecoration(labelText: 'Nome'),
                ),
                TextField(
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  controller: _faturamentoController,
                  decoration: const InputDecoration(
                    labelText: 'Faturamento',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text( 'Editar'),
                  onPressed: () async {
                    final String nome = _nomeController.text;
                    final double? faturamento =
                        double.tryParse(_faturamentoController.text);
                    if (faturamento != null) {

                        await _products
                            .doc(documentSnapshot!.id)
                            .update({"nome": nome, "faturamento": faturamento});
                      _nomeController.text = '';
                      _faturamentoController.text = '';
                        Navigator.of(context).pop();
                    }
                  },
                )
              ],
            ),
          );
        });
  }

  Future<void> _delete(String productId) async {
    await _products.doc(productId).delete();

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Empresa Deletada')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         
        title: const Center(child: Text("Empresas Cadastradas",
                                        textAlign: TextAlign.right,
                                          
                                          style: TextStyle(
    
    fontSize: 
      26,
    color:Color(0xFFf2f2f2),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
  )))),
        
      

     
      body: StreamBuilder(
        stream: _products.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.hasData) {
            return ListView.builder(
              itemCount: streamSnapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final DocumentSnapshot documentSnapshot =
                    streamSnapshot.data!.docs[index];
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    // ignore: prefer_interpolation_to_compose_strings
                    title: Text(  documentSnapshot['nome']),
                    subtitle: Text("Faturamento: ${documentSnapshot['faturamento']} R\$"),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () =>
                                  _update(documentSnapshot)),
                          IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () =>
                                  _delete(documentSnapshot.id)),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
// Add new product
      floatingActionButton: FloatingActionButton(
        onPressed: () => _create(),
        child: const Icon(Icons.add),

      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
    );
  }
}