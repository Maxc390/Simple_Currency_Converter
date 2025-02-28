import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 120.00;
    });
  }

  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGrey3,
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGrey3,
          middle: Text(
            'Currency Converter',
            style: TextStyle(color: CupertinoColors.white),
          ),
          // elevation: 0,
          // centerTitle: true,
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(('KSH $result'),
                style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoTextField(
                placeholder: 'Please Enter the Amount in USD',
                prefix: const Icon(CupertinoIcons.money_dollar),
                controller: textEditingController,
                keyboardType: const TextInputType.numberWithOptions(
                    decimal: true, signed: true),
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoButton(
                  onPressed: convert,
                  color: CupertinoColors.black,
                  child: const Text('Convert ')),
            ),
          ],
        )));
  }
}
