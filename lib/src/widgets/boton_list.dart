import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class BotonList extends StatelessWidget {

  final IconData icon;
  @required final String texto;
  final Color color1;
  final Color color2;
  @required final Function()? onPress;

  const BotonList({
      super.key, 
      this.icon = FontAwesomeIcons.circle,
      this.texto = 'Emergency App',
      this.color1 = Colors.grey,
      this.color2 = Colors.blueGrey,
      this.onPress
    }
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPress,
      child: Stack(
        children: [
          _BotonListBackground( this.icon, this.color1, this.color2 ),
    
          Row(
            children: [
              const SizedBox( height: 140, width: 40,),
              FaIcon( this.icon, color: Colors.white, size: 35, ),
              const SizedBox( width: 20),
              Expanded(child: Text( this.texto, style: const TextStyle( color: Colors.white, fontSize: 17 ),)),
              const FaIcon( FontAwesomeIcons.chevronRight, color: Colors.white),
              const SizedBox( width: 40), 
            ],
          )
    
    
    
        ],
      ),
    );
  }
}




class _BotonListBackground extends StatelessWidget {

  final IconData icon;
  final Color color1;
  final Color color2;

  const _BotonListBackground(
      this.icon, 
      this.color1, 
      this.color2
    
  );

  @override
  Widget build(BuildContext context) {

    return Container(

      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(4, 6),
            blurRadius: 10),
        ],
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: <Color> [
            this.color1,
            this.color2,
          ])
      ),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Positioned(
              right: -20,
              top: -20,
              child: FaIcon( this.icon, size: 150, color: Colors.white.withOpacity(0.2))
            )
          ],
        ),
      )
    );
    
  }
}