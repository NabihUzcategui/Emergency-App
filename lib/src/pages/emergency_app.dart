import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animate_do/animate_do.dart';
import '../widgets/boton_list.dart';
import '../widgets/headers.dart';

class ItemBoton {

  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;

  ItemBoton( this.icon, this.texto, this.color1, this.color2 );
}


class EmergencyPage extends StatelessWidget {

  static final items = <ItemBoton>[
  ItemBoton( FontAwesomeIcons.carBurst, 'Motor Accident', const Color(0xff6989F5), const Color(0xff906EF5) ),
  ItemBoton( FontAwesomeIcons.plus, 'Medical Emergency', const Color(0xff66A9F2), const Color(0xff536CF6) ),
  ItemBoton( FontAwesomeIcons.masksTheater, 'Theft / Harrasement', const Color(0xffF2D572), const Color(0xffE06AA3) ),
  ItemBoton( FontAwesomeIcons.personBiking, 'Awards', const Color(0xff317183), const Color(0xff46997D) ),
  ItemBoton( FontAwesomeIcons.carBurst, 'Motor Accident', const Color(0xff6989F5), const Color(0xff906EF5) ),
  ItemBoton( FontAwesomeIcons.plus, 'Medical Emergency', const Color(0xff66A9F2), const Color(0xff536CF6) ),
  ItemBoton( FontAwesomeIcons.masksTheater, 'Theft / Harrasement', const Color(0xffF2D572), const Color(0xffE06AA3) ),
  ItemBoton( FontAwesomeIcons.personBiking, 'Awards', const Color(0xff317183), const Color(0xff46997D) ),
  ItemBoton( FontAwesomeIcons.carBurst, 'Motor Accident', const Color(0xff6989F5), const Color(0xff906EF5) ),
  ItemBoton( FontAwesomeIcons.plus, 'Medical Emergency', const Color(0xff66A9F2), const Color(0xff536CF6) ),
  ItemBoton( FontAwesomeIcons.masksTheater, 'Theft / Harrasement', const Color(0xffF2D572), const Color(0xffE06AA3) ),
  ItemBoton( FontAwesomeIcons.personBiking, 'Awards', const Color(0xff317183), const Color(0xff46997D) ),
  ];

  List<Widget> itemMap = items.map(
    (item) => FadeInLeft(
      duration: const Duration( milliseconds: 250),
      child: BotonList(
        icon: item.icon,
        texto: item.texto,
        color1: item.color1,
        color2: item.color2,
      ),
    )
    ).toList();

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Container(
            margin: const EdgeInsets.only( top: 200),
            child: ListView(     
              physics: const BouncingScrollPhysics(),         
              children: [
                const SizedBox(height: 70,),
                ...itemMap
              ],
            ),
          ),

          _Encabezado()


        ],
      )
    );
  }
}

class _Encabezado extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [

        const IconHeader(
          icon: FontAwesomeIcons.plus, 
          titulo: 'Asistencia Médica', 
          subTitulo: 'HazSolicitado',
          color1: Color(0xff990000),
          color2: Color(0xffFF7979 ),
        ),

        Positioned(
          right: 0,
          top: 45,
          child: RawMaterialButton(
            onPressed: () {},
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(15.0),
            child: const FaIcon( FontAwesomeIcons.ellipsisVertical, color: Colors.white,)
          )
        )
      ],
    );
  }
}

class BotonListTemp extends StatelessWidget {
  const BotonListTemp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BotonList(
      color1: const Color(0xff6989f5),
      color2: const Color(0xff906ef5),
      icon: FontAwesomeIcons.carBurst,
      onPress: () { 
        print('Estas haciendo Click!!!');
      }, 
      texto: 'Motor Accident',
    );
  }
}

class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IconHeader(
      icon: FontAwesomeIcons.plus,
      titulo: 'Asistencia médica', 
      subTitulo: 'Haz Solcitado',
      color1: Color(0xff990000),
      color2: Color(0xffFF7979 ),
    );
  }
}
