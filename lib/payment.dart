import 'package:flutter/material.dart';
import 'package:marketplace/prefab/setting_page_prefab.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFFFFFFF),
        toolbarHeight: 100,
        //elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(
            left: 5,
          ),
          child: Text(
            'Payment',
            style: TextStyle(
              fontFamily: 'OswaldReg',
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Color(0XFF000000),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsetsDirectional.all(25),
            // color: Colors.amber,
            child: const Row(
              children: [
                Row(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/PlayStation_5_and_DualSense_with_transparent_background.png/330px-PlayStation_5_and_DualSense_with_transparent_background.png'),
                      height: 50,
                      width: 50,
                    ),
                    Text('Sony Official Store')
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 25),
                decoration: BoxDecoration(
                  color: const Color(0xffFBFBFB),
                  border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 163, 163, 163)),
                  // color: Color.fromARGB(50, 251, 251, 251)
                ),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Text(
                          '1x',
                          style: TextStyle(fontSize: 20),
                        ),
                        Image(
                          image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/PlayStation_5_and_DualSense_with_transparent_background.png/330px-PlayStation_5_and_DualSense_with_transparent_background.png'),
                          height: 50,
                          width: 50,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [Text("Sony PolyStation V")],
                            ),
                            Row(
                              children: [Text("Rp. 8.999.999")],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          DecoratedBox(
              decoration: const BoxDecoration(
                  color: Color(0xffF1FFC4),
                  // color: const Color.fromRGBO(186, 219, 82, 82),
                  border: Border(
                    top: BorderSide(color: Color(0xffBADB52)),
                    bottom: BorderSide(color: Color(0xffBADB52)),
                  )),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(22, 10, 0, 10),
                    child: const Column(
                      children: [
                        Row(children: [
                          Text(
                            "Shipping Option",
                            style: TextStyle(fontFamily: 'OswaldReg'),
                          ),
                        ]),
                        Row(
                          children: [
                            Text(
                              "SiCepat",
                              style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'OswaldReg',
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Arrive by 5-7 March",
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 0.445),
                                  fontFamily: 'OswaldReg'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 50,
          ),
          DecoratedBox(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Color(0xff9B9B9B)),
                bottom: BorderSide(color: Color(0xff9B9B9B)),
              ),
            ),
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Use Voucher",
                      style: TextStyle(fontSize: 24),
                    ),
                    Container(
                      child: Text('Enter Voucher >',
                          style: const TextStyle(
                            color: Color(0xff9B9B9B),
                          )),
                      alignment: Alignment.centerRight,
                    )
                  ],
                )),
          ),
          const SizedBox(
            height: 55,
          ),
          DecoratedBox(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Color(0xff9B9B9B)),
                bottom: BorderSide(color: Color(0xff9B9B9B)),
              ),
            ),
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Payment Options",
                      style: TextStyle(fontSize: 24),
                    ),
                    Container(
                      child: const Text(
                        'COD >',
                        style: TextStyle(
                          color: Color(0xff9B9B9B),
                        ),
                      ),
                      alignment: Alignment.centerRight,
                    )
                  ],
                )),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
              margin: const EdgeInsets.only(left: 130),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/discover');
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 0),
                    padding: const EdgeInsets.fromLTRB(90, 10, 90, 10),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(31, 142, 245, 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'PAY',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ))),
        ],
      ),
    );
  }
}
