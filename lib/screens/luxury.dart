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
    return SafeArea(
      child: Scaffold(
             body:
                   Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:AssetImage(""),
                          fit: BoxFit.cover,
                        ),
                      ),
                    
           child: Column(
              children: [
              const Center(
                 child: Text(
                   "SPICE UP YOUR LOOKS",
                   style: TextStyle(
                     fontSize: 30, 
                     fontWeight: FontWeight.bold, 
                     color: Colors.black),
                   )
                 ),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Container(
                   padding: const EdgeInsets.all(8),
                   child: ElevatedButton(
                    onPressed: () { 
                                Navigator.push(  
                           context,
                           MaterialPageRoute(builder: (context) => const HomeScreen()),
                         );
                            },
                     child: const Text("Home Page")
                                                   ),
                 ),
                 const Spacer(),
                 Container(
                   padding: const EdgeInsets.all(8),
                 child: const Text("Luxury SPA")),
                 const SizedBox(
                   height: 20,
                   width: 20,
                 ),
                 Container(
                   padding: const EdgeInsets.all(8),
                   child: const Text("Glamour SPA")),
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
             const Center(
                 child: Text(
                   "LUXURY LATEST PRICES",
                   style: TextStyle(
                     fontSize: 30, 
                     fontWeight: FontWeight.bold, 
                     color: Colors.black),
                   )
                 ),
                 const SizedBox(
                   height: 20,
                                 ),
             DataTable(
              decoration: const BoxDecoration(
                 color: Colors.white10,
               ),
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
                     child: const Text("Book"))
                   ),
               ],
               )
               ] 
                          ),
           ],
           
           ),
            ),
      ),
    );
  }
}