import 'package:flutter/material.dart';
import 'package:hirexperts/themes/app_themes.dart';

class CardType1 extends StatelessWidget {

  final String imageUrl; 
  final String? cardName; 

  const CardType1({ 
    Key? key, 
    required this.imageUrl,
    this.cardName 
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      color: AppTheme.primaryLigth,
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            Flexible(
              flex: 2,
              child: Row(
                children: const [
                  Text('Derecho')
                ]
              ),
            ),
            Flexible(
              child: Row(
                children: const[Text('Derecho')]
              ),
            ),
          ],
        ),
      ),
    );

    // return Row(
    //   children: [
    //     Flexible(
    //       child: Container(
    //         height: 200,
    //         color:Colors.amber,
    //         child: Row(
    //           crossAxisAlignment: CrossAxisAlignment.end,
    //           children: [
    //             Flexible(
    //               child: Container(
    //                 height: 150,
    //                 color: Colors.blueAccent,
    //               ) 
    //             ),
    //           ],
    //         )
    //       )
    //     ),
    //   ],
    // );

    // return Flexible(
    //   child: SizedBox(
    //     height: 170,
    //     width: double.infinity,
    //     child: Stack(
    //       children: [
    //         Positioned(
    //           bottom: 0,
    //           child: Flexible(
    //             child: SizedBox(
    //               height: 150,
    //               width: double.infinity,
    //               child: Card(
    //               color: AppTheme.primaryLigth,
    //                 elevation: 0,
    //                 clipBehavior: Clip.antiAlias,
    //                 shape: RoundedRectangleBorder(
    //                   borderRadius: BorderRadius.circular(20)
    //                 ),
    //                 // child: Stack(
                      
    //                 // ),
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}