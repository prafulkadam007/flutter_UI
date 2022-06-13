import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../textdisplayers/text_with_label.dart';

class VehicleDetails extends StatelessWidget {
  final String vehicleNumberPlate;
  final TextStyle? vehicleNumberPlatestyle;
  final String ownername;
  final TextStyle? ownernamestyle;

  final String registeredDate;
  final TextStyle? registeredDatestyle;

  final String vechilemodel;
  final TextStyle? vechilemodelstyle;
  final TextStyle? headingstyle;

  const VehicleDetails({
    Key? key,
    required this.vehicleNumberPlate,
    required this.ownername,
    required this.registeredDate,
    required this.vechilemodel,
    this.vehicleNumberPlatestyle,
    this.ownernamestyle,
    this.registeredDatestyle,
    this.vechilemodelstyle,
    this.headingstyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double unitHeightValue = MediaQuery.of(context).size.height * 0.01;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3 * unitHeightValue),
      padding: EdgeInsets.symmetric(vertical: 4 * unitHeightValue),
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 225, 225, 225)),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(width: 70, child: Icon(Icons.car_rental)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWithLabel(
              title: vehicleNumberPlate,
              titlestyle: vehicleNumberPlatestyle ??
                  TextStyle(fontSize: width * 0.04, color: Colors.black)
                      .copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
              desc: 'Owned by $ownername',
              descStyle: ownernamestyle,
              //     TextStyle(fontSize: width * 0.04, fontWeight: FontWeight.w300)
              //         .copyWith(color: Colors.black, height: 1.7),
            ),
            // AutoSizeText(vehicleNumberPlate,
            //     style: vehicleNumberPlatestyle ??
            //         TextStyle(fontSize: width * 0.045, color: Colors.black)
            //             .copyWith(
            //                 color: Colors.black, fontWeight: FontWeight.bold)),
            // AutoSizeText('Owned by $ownername',
            //     style: ownernamestyle ??
            //         TextStyle(
            //                 fontSize: width * 0.04, fontWeight: FontWeight.w300)
            //             .copyWith(color: Colors.black, height: 1.7)),
            TextWithLabel(
              label: 'Registered Date',
              labelStyle:TextStyle(fontSize: width * 0.04, color: Colors.black, height: 4),
              title: registeredDate,
              titlestyle: registeredDatestyle,
              // titlestyle: vehicleNumberPlatestyle ??
              //     TextStyle(fontSize: width * 0.045, color: Colors.black)
              //         .copyWith(
              //             color: Colors.black, fontWeight: FontWeight.bold),
            ),
            // AutoSizeText('Registered Date',
            //     style: headingstyle ??
            //         TextStyle(
            //                 fontSize: width * 0.035,
            //                 fontWeight: FontWeight.normal)
            //             .copyWith(color: Colors.black, height: 3.5)),
            // AutoSizeText(registeredDate,
            //     style: registeredDatestyle ??
            //         TextStyle(fontSize: width * 0.045, color: Colors.black)
            //             .copyWith(
            //                 color: Colors.black,
            //                 fontWeight: FontWeight.w500,
            //                 height: 1.5)),
            TextWithLabel(
              label: 'Vehicle model',
              labelStyle:TextStyle(fontSize: width * 0.04, color: Colors.black, height: 4),
              title: vechilemodel,
              titlestyle: vechilemodelstyle,
            ),
            // AutoSizeText('Vehicle model',
            //     style: headingstyle ??
            //         TextStyle(
            //                 fontSize: width * 0.035,
            //                 fontWeight: FontWeight.normal)
            //             .copyWith(color: Colors.black, height: 3.5)),
            // AutoSizeText(vechilemodel,
            //     style: vechilemodelstyle ??
            //         TextStyle(fontSize: width * 0.045, color: Colors.black)
            //             .copyWith(
            //                 color: Colors.black,
            //                 fontWeight: FontWeight.w500,
            //                 height: 1.5)),
          ],
        )
      ]),
    );
  }
}
