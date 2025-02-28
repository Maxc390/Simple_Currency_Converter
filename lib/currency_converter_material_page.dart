// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPagee extends StatefulWidget {
  const CurrencyConverterMaterialPagee({super.key});
  @override
  State<CurrencyConverterMaterialPagee> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPagee> {
  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 120.00;
    });
  }

  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        borderSide: BorderSide(
          width: 2,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignInside,
        ));
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            'Currency Converter',
            style: TextStyle(color: Colors.white),
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: Center(
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
              child: TextField(
                controller: textEditingController,
                keyboardType: const TextInputType.numberWithOptions(
                    decimal: true, signed: true),
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  hintText: 'Please Enter the Amount in USD',
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: convert,
                  style: ButtonStyle(
                      elevation: const WidgetStatePropertyAll(10),
                      splashFactory: NoSplash.splashFactory,
                      enableFeedback: true,
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                      backgroundColor:
                          const WidgetStatePropertyAll(Colors.black),
                      foregroundColor:
                          const WidgetStatePropertyAll(Colors.white),
                      minimumSize: const WidgetStatePropertyAll(
                          Size(double.infinity, 50))),
                  child: const Text('Convert ')),
            ),
          ],
        )));
  }
}

//  class CurrencyConverterMaterialPage extends StatelessWidget {
//   const CurrencyConverterMaterialPage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     double result = 0;
//     final TextEditingController textEditingController = TextEditingController();
//     const border = OutlineInputBorder(
//         borderRadius: BorderRadius.all(Radius.circular(5)),
//         borderSide: BorderSide(
//           width: 2,
//           style: BorderStyle.solid,
//           strokeAlign: BorderSide.strokeAlignInside,
//         ));
//     return Scaffold(
//         backgroundColor: Colors.blueGrey,
//         appBar: AppBar(
//           backgroundColor: Colors.blueGrey,
//           title: const Text(
//             'Currency Converter',
//             style: TextStyle(color: Colors.white),
//           ),
//           elevation: 0,
//           centerTitle: true,
//         ),
//         body: Center(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(result.toString(),
//                 style: const TextStyle(
//                   fontSize: 45,
//                   fontWeight: FontWeight.bold,
//                   color: Color.fromARGB(255, 255, 255, 255),
//                 )),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 controller: textEditingController,
//                 keyboardType: const TextInputType.numberWithOptions(
//                     decimal: true, signed: true),
//                 style: const TextStyle(
//                   color: Colors.black,
//                 ),
//                 decoration: const InputDecoration(
//                   hintText: 'Please Enter the Amount in USD',
//                   hintStyle: TextStyle(color: Colors.black),
//                   prefixIcon: Icon(Icons.monetization_on_outlined),
//                   prefixIconColor: Colors.black,
//                   filled: true,
//                   fillColor: Colors.white,
//                   focusedBorder: border,
//                   enabledBorder: border,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextButton(
//                   onPressed: () {
//                     print(textEditingController.text);
//                     result = double.parse(textEditingController.text) * 120.00;
//                     build(context);
//                   },
//                   style: ButtonStyle(
//                       shape: WidgetStatePropertyAll(RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(5))),
//                       backgroundColor:
//                           const WidgetStatePropertyAll(Colors.black),
//                       foregroundColor:
//                           const WidgetStatePropertyAll(Colors.white),
//                       minimumSize: const WidgetStatePropertyAll(
//                           Size(double.infinity, 50))),
//                   child: const Text('Convert ')),
//             ),
//           ],
//         )));
//   }
// }
