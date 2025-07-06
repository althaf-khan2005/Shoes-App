import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';

class ThreeDModel extends StatefulWidget {
  const ThreeDModel({super.key});

  @override
  State<ThreeDModel> createState() => _ThreeDModelState();
}

class _ThreeDModelState extends State<ThreeDModel> {
  
  final O3DController _controller = O3DController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

         

          // 3D Viewer
          Center(
            child: Container(
              color: Colors.black, // Background to avoid white
              height: double.infinity,
              width: double.infinity,
              child: O3D.network(
                controller: _controller,
                src:
                  //'https://models.readyplayer.me/6868fa973856a81c480508af.glb',
                    "lib/image/yes.glb",
                  
                autoPlay: true,
                autoRotate: true,
                cameraControls: true,
                disableZoom: true,
              ),
            ),
          ),

          // Floating Button Positioned
          Positioned(
            right: 20,
            bottom: 40,
            child: FloatingActionButton(
              onPressed: () {
                _controller.cameraOrbit(90, 75, 120);
              },
              child: const Icon(Icons.swipe_left),
            ),
          ),

           Positioned(
            left: 20,
            bottom: 40,
            child: FloatingActionButton(
              onPressed: () {
                _controller.cameraOrbit(-90, 75, 120);
              },
              child: const Icon(Icons.swipe_right),
            ),
          ),


        ],
      ),
    );
  }
}
