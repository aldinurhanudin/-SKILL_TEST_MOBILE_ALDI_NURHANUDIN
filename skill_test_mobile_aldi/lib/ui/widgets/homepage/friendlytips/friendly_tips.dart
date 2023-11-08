part of '../../widgets.dart';

class FriendlyTips extends StatelessWidget {
  const FriendlyTips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        bottom: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Friendly Tips',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Wrap(
            spacing: 17,
            runSpacing: 18,
            children: [
              HomeTipsItem(
                imageUrl: 'assets/img_tips1.png',
                title: 'Best tips for using a credit card',
                url: 'https://www.google.com',
              ),
              HomeTipsItem(
                imageUrl: 'assets/img_tips2.png',
                title: 'Spot the good pie of finance model ',
                url: 'https://pub.dev/',
              ),
              HomeTipsItem(
                imageUrl: 'assets/img_tips3.png',
                title: 'Great hack to get better advices',
                url: 'https://www.google.com',
              ),
              HomeTipsItem(
                imageUrl: 'assets/img_tips4.png',
                title: 'Save more penny buy this instead',
                url: 'https://www.google.com',
              ),
            ],
          ),
        ],
      ),
    );
  }
}


// class FriendlyTips extends StatefulWidget {
//   @override
//   State<FriendlyTips> createState() => _FriendlyTipsState();
// }

// class _FriendlyTipsState extends State<FriendlyTips> {
//   List<Map<String, dynamic>> tipsData = [];

//   @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }

//   Future<void> fetchData() async {
//     final url = Uri.parse(
//         'https://newsapi.org/v2/everything?q=tesla&from=2023-10-08&sortBy=publishedAt&apiKey=ae9d63e642a2462f9304889476937b12');

//     final response = await http.get(url);

//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       if (data['articles'] is List) {
//         setState(() {
//           tipsData = List<Map<String, dynamic>>.from(data['articles']);
//         });
//       }
//     } else {
//       throw Exception('Failed to load data from API');
//     }
//   }

//   Future<void> onTapUrl(String url) async {
//     if (await canLaunch(url)) {
//       launch(url);
//     } else {
//       print('Could not launch $url');
//     }
//   }

//   @override
//   // Widget build(BuildContext context) {
//   //   return
//   //   Scaffold(
//   //     appBar: AppBar(
//   //       title: Text('Tesla News'),
//   //     ),
//   //     body: ListView.builder(
//   //       itemCount: tipsData.length,
//   //       itemBuilder: (context, index) {
//   //         final tip = tipsData[index];
//   //         return GestureDetector(
//   //           onTap: () => onTapUrl(tip['url'] ?? ''),
//   //           child: HomeTipsItem(
//   //             imageUrl: tip['urlToImage'] ?? '',
//   //             title: tip['title'] ?? '',
//   //             url: tip['url'] ?? '',
//   //           ),
//   //         );
//   //       },
//   //     ),
//   //   );
//   // }
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           Container(
//             padding: EdgeInsets.all(8.0), // Atur padding sesuai kebutuhan
//             alignment: Alignment.center,
//             color: Colors.blue, // Warna latar belakang appbar
//             child: Text(
//               'Tesla News',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           ListView.builder(
//             itemCount: tipsData.length,
//             itemBuilder: (context, index) {
//               final tip = tipsData[index];
//               return GestureDetector(
//                 onTap: () => onTapUrl(tip['url'] ?? ''),
//                 child: HomeTipsItem(
//                   imageUrl: tip['urlToImage'] ?? '',
//                   title: tip['title'] ?? '',
//                   url: tip['url'] ?? '',
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
  
//   }

// }
