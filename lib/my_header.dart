import 'package:flutter/material.dart';

class MyHeader extends StatefulWidget {
  const MyHeader({super.key});

  @override
  State<MyHeader> createState() => _MyHeaderState();
}

class _MyHeaderState extends State<MyHeader> {
  final _valueList = ['a', 'b', 'c', 'd'];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        // DropdownButton<bool>(
        //     value: _selectedArchiveOption,
        //     icon: const Icon(Icons.arrow_drop_down),
        //     iconSize: GlobalProperty.dropdownArrowSizeM,
        //     elevation: 16,
        //     style: TextStyle(color: PresetTheme.style.colorPrimaryNormal),
        //     underline: const SizedBox(),
        //     onChanged: (bool? newValue) {
        //       _selectedArchiveOption = newValue;
        //       _currentPage = 0;

        //       _fetchInfo();
        //     },
        //     items: _archiveOptionList.map<DropdownMenuItem<bool>>(
        //       (bool? value) {
        //         return DropdownMenuItem<bool>(
        //           value: value,
        //           child: PlainText(
        //             _localizeArchived(value),
        //             style: CustomTextStyle.m(),
        //             color: PresetTheme.style.colorPrimaryNormal,
        //           ),
        //         );
        //       },
        //     ).toList()),
        Container(
          width: 30.0,
          height: 30.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(100),
            color: Color(0xFFFFFFFF),
            border: Border.all(color: Color(0xFFC9C9C9)),
          ),
          child: Image(
            image: AssetImage('assets/account.png'),
          ),
        ),
        Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: Colors.green[100],
            // borderRadius: BorderRadius.circular(100.0),
            // borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            shape: BoxShape.circle,
            // border: Border.all(width: 2, color: Colors.white)),
            // border: BoxBorder.,
          ),
          child: Image(
            image: AssetImage('assets/account.png'),
          ),
        ),
        Container(
          width: 500,
          height: 500,
          color: Colors.redAccent[100],
          child: Center(
            child: Container(
              color: Colors.blueAccent[100],
              child: Text(
                'inner voice tree river side compute',
                style: TextStyle(
                  fontSize: 50.0,
                  height: 1.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
