import 'package:flutter/material.dart';
import 'package:klinik_app/ui/poli_detail.dart';
import 'package:klinik_app/model/poli.dart';

class PoliUpdateForm extends StatefulWidget {
  final Poli poli;
  const PoliUpdateForm({Key? key, required this.poli}) : super(key: key);

  @override
  _PoliUpdateFormState createState() => _PoliUpdateFormState();
}

class _PoliUpdateFormState extends State<PoliUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Menetapkan nilai controller berdasarkan data yang diterima
    _namaPoliCtrl.text = widget.poli.namaPoli;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Poli")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPoli(),
              const SizedBox(height: 20),
              _tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  // Field untuk memasukkan nama poli
  _fieldNamaPoli() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Nama Poli"),
      controller: _namaPoliCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Nama poli tidak boleh kosong';
        }
        return null;
      },
    );
  }

  // Tombol untuk menyimpan perubahan
  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        // Validasi form sebelum menyimpan
        if (_formKey.currentState?.validate() ?? false) {
          Poli poli = Poli(namaPoli: _namaPoliCtrl.text);
          Navigator.pop(context); // Kembali ke halaman sebelumnya
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)),
          );
        }
      },
      child: const Text("Simpan Perubahan"),
    );
  }
}
