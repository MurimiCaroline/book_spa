import 'package:book_spa/screens/homepage.dart';
import 'package:flutter/material.dart';

class LuxuryScreen extends StatefulWidget {
  const LuxuryScreen({super.key});

  @override
  State<LuxuryScreen> createState() => _LuxuryScreenState();
}

class _LuxuryScreenState extends State<LuxuryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SPICE UP YOUR LOOKS"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ElevatedButton(
               onPressed: () { 
                           Navigator.push(  
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                       },
                child: const Text("Home Page")
                                              ),
              const Text("Luxury SPA"),
              const SizedBox(
                height: 20,
                width: 20,
              ),
              const Text("Glamour SPA"),
              const SizedBox(
                height: 20,
                width: 20,
              ),
              const Text("Vicious SPA"),
               const SizedBox(
                height: 20,
                width: 20,
              ),
              const Text("AnnexSPA"),
            ],
          ),
          Center(
            child: DataTable(
              columns: const [
                DataColumn(label: Text("SERVICES")),
                DataColumn(label: Text("PRICES")),
                DataColumn(label: Text("ACTION")),
              ], 
              rows: [
                 DataRow(cells: [
                const DataCell(Text("Manicure")),
                const DataCell(Text("250")),
                DataCell(
                  ElevatedButton(
                    onPressed: (){
                      // ignore: avoid_print
                      print("booked");
                    }, 
                    child: const Text("Book Session"))
                  ),
              ],
              )
              ] 
                         ),
          ),
        ],
        ),
      );
  }
}