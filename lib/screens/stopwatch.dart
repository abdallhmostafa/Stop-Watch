import 'dart:async';

import 'package:flutter/material.dart';

class StopWatchApp extends StatefulWidget {
  const StopWatchApp({Key? key}) : super(key: key);

  @override
  State<StopWatchApp> createState() => _StopWatchAppState();
}

class _StopWatchAppState extends State<StopWatchApp> {
  int second = 0;
  Timer?  timerFunction ;
  startTimer(){
    timerFunction=  Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        second= second+1;
      });
    });
  }
  stopTimer(){

     timerFunction!.cancel();

  }
  restTimer(){
    setState(() {
      second=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              second.toString().padLeft(2,"0"),
              style: const TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w700,
                  fontSize: 75.0,
                  letterSpacing: 3),
            ),
            const SizedBox(height: 10.0,),
            const Text(
              "Seconds",
              style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w700,
                  fontSize: 25.0,
                  letterSpacing: 5),
            ),
            const SizedBox(height: 30.0,),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.blueAccent),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 10.0)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                    alignment: Alignment.center),
                onPressed: ()=>startTimer(),
                child: const Text(
                  "Start Timer",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                )),
            const SizedBox(height: 20.0,),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 10.0)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                    alignment: Alignment.center),
                onPressed: ()=>stopTimer(),
                child: const Text(
                  "Stop Timer",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                )),
            const SizedBox(height: 20.0,),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 10.0)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                    alignment: Alignment.center),
                onPressed: ()=>restTimer(),
                child: const Text(
                  "Rest Timer",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                )),

            /*Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blueAccent),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 10.0)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                        alignment: Alignment.center),
                    onPressed: ()=>startTimer(),
                    child: const Text(
                      "Start Timer",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                const SizedBox(width: 20.0,),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.red),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 10.0)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                        alignment: Alignment.center),
                    onPressed: ()=>stopTimer(),
                    child: const Text(
                      "Stop Timer",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    )),

              ],
            ),*/
          ],
        ),
      ),
    );
  }
}
