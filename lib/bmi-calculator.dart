import 'package:flutter/material.dart';

class BMI_Calculator extends StatefulWidget {
  const BMI_Calculator({super.key});

  @override
  State<BMI_Calculator> createState() => _BMI_CalculatorState();
}

class _BMI_CalculatorState extends State<BMI_Calculator> {
  double height = 0;
  double weight = 0;
  String result = '';
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width,
          color: const Color(0xff1A1F38),
          child: const Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                "BMI Calculator",
                style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFFFFFF)),
              ),
            ),
          ),
        ),
        Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 60, 40, 0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "HEIGHT",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Roboto',
                                color: Color(0xffFFFFFF)),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          TextField(
                            style: const TextStyle(color: Colors.white),
                            controller: heightController,
                            decoration: InputDecoration(
                              hintText: "Enter your height in feets",
                              hintStyle: const TextStyle(color: Colors.white),
                              fillColor: const Color(0xff1A1F38),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Color(0xff1A1F38),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Color(0xff1A1F38),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "WEIGHT",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Roboto',
                                color: Color(0xffFFFFFF)),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          TextField(
                            style: const TextStyle(color: Colors.white),
                            controller: weightController,
                            decoration: InputDecoration(
                              hintText: "Enter your weight in KG",
                              hintStyle: const TextStyle(color: Colors.white),
                              fillColor: const Color(0xff1A1F38),
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Color(0xff1A1F38),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Color(0xff1A1F38),
                                ),
                              ),
                            ),
                          )
                        ]),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Your Result",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Roboto',
                              color: Color(0xffFFFFFF)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.27,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff1A1F38),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "NORMAL",
                                      style: TextStyle(
                                        color: result == ''
                                            ? const Color(0xffF10606)
                                            : const Color(0xff09FF7A),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'Roboto',
                                        // color: Color(0xff09FF7A),
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            reset();
                                          });
                                        },
                                        child: const Icon(Icons.refresh)),
                                  ],
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.transparent,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          result,
                                          style: const TextStyle(
                                              fontSize: 55,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Roboto',
                                              color: Color(0xffFFFFFF)),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
        GestureDetector(
          onTap: () {
            print('GestureDetector onTap Called');

            setState(() {
              BMIcal();
            });
          },
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xffF10606),
            child: const Center(
              child: Text(
                "CALCULATOR",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto',
                    color: Color(0xffFFFFFF)),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  void BMIcal() {
    double height = double.parse(heightController.text) * 30.48 / 100;
    double weight = double.parse(weightController.text);

    double heightSquare = height * height;
    double calculate = weight / heightSquare;
    result = calculate.toStringAsFixed(2);
  }

  void reset() {
    heightController.clear();
    weightController.clear();
    result = "Enter Value";
  }

  // dynamic validation() {
  //   if (result == '' || height <= 0 || weight <= 0) {
  //     setState() {
  //       message = "fill correctly";
  //     }
  //   } else if (result < 19 && result < 25) {
  //     setState() {
  //       message = "You are unfit";
  //     }
  //   } else if (result >= 19 && result <= 25) {
  //     setState() {
  //       message = "You are fit";
  //     }
  //   } else {
  //     setState() {
  //       message = "Enjoy";
  //     }
  //   }
  // }

}
