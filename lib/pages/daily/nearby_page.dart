
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../services/location_service.dart';

class NearbyPage extends StatefulWidget { const NearbyPage({super.key}); @override State<NearbyPage> createState() => _NearbyPageState(); }

class _NearbyPageState extends State<NearbyPage> {
  GoogleMapController? _map;
  LatLng? _center;

  @override
  void initState() { super.initState(); _load(); }

  Future<void> _load() async {
    try {
      final pos = await LocationService.current();
      setState(() { _center = LatLng(pos.latitude, pos.longitude); });
    } catch (e) {
      if (!mounted) return; ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Location error: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('สถานที่ใกล้ตัว')),
      body: _center == null ? const Center(child: CircularProgressIndicator())
        : GoogleMap(initialCameraPosition: CameraPosition(target: _center!, zoom: 14), onMapCreated: (c)=>_map=c),
    );
  }
}
