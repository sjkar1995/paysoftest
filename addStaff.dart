import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddNewStaff extends StatefulWidget {
  @override
  _AddItemPageState createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddNewStaff> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _QADD = TextEditingController();
  final TextEditingController _REM = TextEditingController();
  final TextEditingController _PANNO = TextEditingController();
  final TextEditingController _PANNAME = TextEditingController();
  final TextEditingController _PFCF = TextEditingController();
  final TextEditingController _ACNO2 = TextEditingController();
  final TextEditingController _PFMSCODE = TextEditingController();
  final TextEditingController _EC1 = TextEditingController();
  final TextEditingController _DESG = TextEditingController();
  final TextEditingController _DEPT = TextEditingController();

  final TextEditingController _dojController = TextEditingController();
  final TextEditingController _RET_DATE = TextEditingController();
  final TextEditingController _DOB_DATE = TextEditingController();

  final TextEditingController _pranController = TextEditingController();
  final TextEditingController _LEVEL = TextEditingController();
  final TextEditingController _LBASIC = TextEditingController();
  final TextEditingController _UAN = TextEditingController();
  final TextEditingController _MOBILE = TextEditingController();
  final TextEditingController _AADHAR = TextEditingController();

  DateTime? _selectedDoj;
  DateTime? _selectedRETDoj;
  DateTime? _selectedDoB;
  String? _selectedGender; // Default selected option
  String? _Pension;
  String? _MAY21PF;
  String? _STOP;
  String? _EHSF;
  String? _STAY;
  String? _PH;
  String? _PLANE;
  String? _NPAS;
  String? _GOVHOUS;
  String? _TRANF;
  String? _PFLAG;
  String? _CAT;

  // Create a list that can hold different types of variables

  void _showvalue() {
    List<dynamic> controllerlist = [
      _nameController,
      _QADD,
      _REM,
      _PANNO,
      _PANNAME,
      _PFCF,
      _ACNO2,
      _PFMSCODE,
      _EC1,
      _DESG,
      _DEPT,
      _dojController,
      _RET_DATE,
      _DOB_DATE,
      _pranController,
      _LEVEL,
      _LBASIC,
      _UAN,
      _MOBILE,
      _AADHAR
    ];
    List<dynamic> stringlist = [
      _selectedGender,
      _Pension,
      _MAY21PF,
      _STOP,
      _EHSF,
      _STAY,
      _PH,
      _PLANE,
      _NPAS,
      _GOVHOUS,
      _TRANF,
      _PFLAG,
      _CAT,
    ];
    fieldisempty = false;
    stringlist.forEach((element) {
      if (element == "") fieldisempty = true;
    });
    controllerlist.forEach((element) {
      if (element.text.isEmpty) fieldisempty = true;
    });
  }

  void _addItem() {
    // Optionally, clear the text fields after adding

    _showvalue();
    setState(() {});
    print(fieldisempty);
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDoj) {
      setState(() {
        _selectedDoj = picked;
        _dojController.text = "${_selectedDoj!.toLocal()}".split(' ')[0];
      });
    }
  }

  Future<void> RET_DATE(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedRETDoj) {
      setState(() {
        _selectedRETDoj = picked;
        _RET_DATE.text = "${_selectedRETDoj!.toLocal()}".split(' ')[0];
      });
    }
  }

  Future<void> DOB_DATE(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDoB) {
      setState(() {
        _selectedDoB = picked;
        _DOB_DATE.text = "${_selectedDoB!.toLocal()}".split(' ')[0];
      });
    }
  }

  var fieldisempty = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Staff Joing Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          labelText: "NAME",
                          errorText: fieldisempty
                              ? _nameController.text.isEmpty
                                  ? "field is required"
                                  : null
                              : null,
                        ),
                      ),
                      TextField(
                        controller: _AADHAR,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          labelText: 'AADHAR',
                          hintText: 'Enter AADHAR',
                          errorText: fieldisempty
                              ? _AADHAR.text.isEmpty
                                  ? "field is required"
                                  : null
                              : null,
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        value: _selectedGender,
                        items: [
                          DropdownMenuItem(
                            value: 'M',
                            child: Text('Male'),
                          ),
                          DropdownMenuItem(
                            value: 'F',
                            child: Text('Female'),
                          ),
                          DropdownMenuItem(
                            value: 'Oth',
                            child: Text('Other'),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value!;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Gender',
                          errorText: fieldisempty
                              ? _selectedGender == null
                                  ? "field is required"
                                  : null
                              : null,
                        ),
                      ),
                      TextField(
                        controller: _LBASIC,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          labelText: 'LBASIC',
                          hintText: 'Enter PRAN',
                          errorText: fieldisempty
                              ? _LBASIC.text.isEmpty
                                  ? "field is required"
                                  : null
                              : null,
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        value: _Pension,
                        items: [
                          DropdownMenuItem(
                            value: 'Y',
                            child: Text('YES'),
                          ),
                          DropdownMenuItem(
                            value: 'N',
                            child: Text('NO'),
                          )
                        ],
                        onChanged: (value) {
                          setState(() {
                            _Pension = value!;
                          });
                        },
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _Pension == null
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'PENSION',
                        ),
                      ),
                      TextField(
                        controller: _PFCF,
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _PFCF.text.isEmpty
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'PFCF',
                        ),
                      ),
                      TextField(
                        controller: _ACNO2,
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _ACNO2.text.isEmpty
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'ACNO2',
                        ),
                      ),
                      TextField(
                        controller: _pranController,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _pranController.text.isEmpty
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'PRAN',
                          hintText: 'Enter PRAN',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () => _selectDate(context),
                        child: AbsorbPointer(
                          child: TextField(
                            controller: _dojController,
                            decoration: InputDecoration(
                              errorText: fieldisempty
                                  ? _dojController.text.isEmpty
                                      ? "field is required"
                                      : null
                                  : null,
                              labelText: 'DOJ',
                              hintText: 'Select Date',
                            ),
                          ),
                        ),
                      ),
                      TextField(
                        controller: _LEVEL,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _LEVEL.text.isEmpty
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'LEVEL',
                          hintText: 'Enter PRAN',
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        value: _CAT,
                        items: [
                          DropdownMenuItem(
                            value: 'DOCTORS',
                            child: Text('DOCTORS'),
                          ),
                          DropdownMenuItem(
                            value: 'RESIDENT',
                            child: Text('RESIDENT'),
                          ),
                          DropdownMenuItem(
                            value: 'TECHNICAL STAFF',
                            child: Text('TECHNICAL STAFF'),
                          ),
                          DropdownMenuItem(
                            value: 'KITCHEN STAFF',
                            child: Text('KITCHEN STAFF'),
                          ),
                          DropdownMenuItem(
                            value: 'NURSING STAFF',
                            child: Text('NURSING STAFF'),
                          ),
                          DropdownMenuItem(
                            value: 'WARDBOYS',
                            child: Text('WARDBOYS'),
                          ),
                          DropdownMenuItem(
                            value: 'OFFICE STAFF',
                            child: Text('OFFICE STAFF'),
                          ),
                          DropdownMenuItem(
                            value: 'SAFAI KARAMCHARI',
                            child: Text('SAFAI KARAMCHARI'),
                          )
                        ],
                        onChanged: (value) {
                          setState(() {
                            _CAT = value!;
                          });
                        },
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _CAT == null
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'CATEGORY',
                        ),
                      ),
                      TextField(
                        controller: _PANNAME,
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _PANNAME.text.isEmpty
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'PANNAME',
                        ),
                      ),
                      TextField(
                        controller: _EC1,
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _EC1.text.isEmpty
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'EC1',
                        ),
                      ),
                      TextField(
                        controller: _QADD,
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _QADD.text.isEmpty
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'QADD',
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        value: _STOP,
                        items: [
                          DropdownMenuItem(
                            value: 'Y',
                            child: Text('YES'),
                          ),
                          DropdownMenuItem(
                            value: 'N',
                            child: Text('NO'),
                          )
                        ],
                        onChanged: (value) {
                          setState(() {
                            _STOP = value!;
                          });
                        },
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _STOP == null
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'STOP',
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        value: _EHSF,
                        items: [
                          DropdownMenuItem(
                            value: 'Y',
                            child: Text('YES'),
                          ),
                          DropdownMenuItem(
                            value: 'N',
                            child: Text('NO'),
                          )
                        ],
                        onChanged: (value) {
                          setState(() {
                            _EHSF = value!;
                          });
                        },
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _EHSF == null
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'EHSF',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () => DOB_DATE(context),
                        child: AbsorbPointer(
                          child: TextField(
                            controller: _DOB_DATE,
                            decoration: InputDecoration(
                              errorText: fieldisempty
                                  ? _DOB_DATE.text.isEmpty
                                      ? "field is required"
                                      : null
                                  : null,
                              labelText: 'DOB',
                              hintText: 'Select Date',
                            ),
                          ),
                        ),
                      ),
                      TextField(
                        controller: _DESG,
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _DESG.text.isEmpty
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'DESG',
                        ),
                      ),
                      TextField(
                        controller: _UAN,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _UAN.text.isEmpty
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'UAN',
                          hintText: 'Enter UAN',
                        ),
                      ),
                      TextField(
                        controller: _PANNO,
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _PANNO.text.isEmpty
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'PANNO',
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        value: _STAY,
                        items: [
                          DropdownMenuItem(
                            value: 'Y',
                            child: Text('YES'),
                          ),
                          DropdownMenuItem(
                            value: 'N',
                            child: Text('NO'),
                          )
                        ],
                        onChanged: (value) {
                          setState(() {
                            _STAY = value!;
                          });
                        },
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _STAY == null
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'STAY',
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        value: _PH,
                        items: [
                          DropdownMenuItem(
                            value: 'Y',
                            child: Text('YES'),
                          ),
                          DropdownMenuItem(
                            value: 'N',
                            child: Text('NO'),
                          )
                        ],
                        onChanged: (value) {
                          setState(() {
                            _PH = value!;
                          });
                        },
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _PH == null
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'PH',
                        ),
                      ),
                      TextField(
                        controller: _PFMSCODE,
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _PFMSCODE.text.isEmpty
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'PFMSCODE',
                        ),
                      ),
                      GestureDetector(
                        onTap: () => RET_DATE(context),
                        child: AbsorbPointer(
                          child: TextField(
                            controller: _RET_DATE,
                            decoration: InputDecoration(
                              errorText: fieldisempty
                                  ? _RET_DATE.text.isEmpty
                                      ? "field is required"
                                      : null
                                  : null,
                              labelText: 'RET_DATE',
                              hintText: 'Select Date',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    children: [
                      TextField(
                        controller: _MOBILE,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _MOBILE.text.isEmpty
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'MOBILE',
                          hintText: 'Enter MOBILE',
                        ),
                      ),
                      TextField(
                        controller: _DEPT,
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _DEPT.text.isEmpty
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'DEPT',
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        value: _PLANE,
                        items: [
                          DropdownMenuItem(
                            value: 'Y',
                            child: Text('YES'),
                          ),
                          DropdownMenuItem(
                            value: 'N',
                            child: Text('NO'),
                          )
                        ],
                        onChanged: (value) {
                          setState(() {
                            _PLANE = value!;
                          });
                        },
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _PLANE == null
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'PLANE',
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        value: _NPAS,
                        items: [
                          DropdownMenuItem(
                            value: 'Y',
                            child: Text('YES'),
                          ),
                          DropdownMenuItem(
                            value: 'N',
                            child: Text('NO'),
                          )
                        ],
                        onChanged: (value) {
                          setState(() {
                            _NPAS = value!;
                          });
                        },
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _NPAS == null
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'NPAS',
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        value: _GOVHOUS,
                        items: [
                          DropdownMenuItem(
                            value: 'Y',
                            child: Text('YES'),
                          ),
                          DropdownMenuItem(
                            value: 'N',
                            child: Text('NO'),
                          )
                        ],
                        onChanged: (value) {
                          setState(() {
                            _GOVHOUS = value!;
                          });
                        },
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _GOVHOUS == null
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'GOVHOUS',
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        value: _TRANF,
                        items: [
                          DropdownMenuItem(
                            value: 'Y',
                            child: Text('YES'),
                          ),
                          DropdownMenuItem(
                            value: 'N',
                            child: Text('NO'),
                          )
                        ],
                        onChanged: (value) {
                          setState(() {
                            _TRANF = value!;
                          });
                        },
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _TRANF == null
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'TRANF',
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        value: _PFLAG,
                        items: [
                          DropdownMenuItem(
                            value: 'Y',
                            child: Text('YES'),
                          ),
                          DropdownMenuItem(
                            value: 'N',
                            child: Text('NO'),
                          )
                        ],
                        onChanged: (value) {
                          setState(() {
                            _PFLAG = value!;
                          });
                        },
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _PFLAG == null
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'PFLAG',
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        value: _MAY21PF,
                        items: [
                          DropdownMenuItem(
                            value: 'Y',
                            child: Text('YES'),
                          ),
                          DropdownMenuItem(
                            value: 'N',
                            child: Text('NO'),
                          )
                        ],
                        onChanged: (value) {
                          setState(() {
                            _MAY21PF = value!;
                          });
                        },
                        decoration: InputDecoration(
                          errorText: fieldisempty
                              ? _MAY21PF == null
                                  ? "field is required"
                                  : null
                              : null,
                          labelText: 'MAY21PF',
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                TextField(
                  controller: _REM,
                  decoration: InputDecoration(
                    labelText: 'REM',
                    errorText: fieldisempty
                        ? _REM.text.isEmpty
                            ? "field is required"
                            : null
                        : null,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: _addItem,
                  child: Text('Add'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
