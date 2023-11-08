part of '../../widgets.dart';

class HomeTipsItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String url;
  const HomeTipsItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunch(url)) {
          launch(url);
        }
      },
      child: Container(
        width: 155,
        height: 176,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Image.asset(
                imageUrl,
                width: 155,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Text(
                title,
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class HomeTipsItem extends StatelessWidget {
//   final String imageUrl;
//   final String title;
//   final String url;
//   const HomeTipsItem({
//     Key? key,
//     required this.imageUrl,
//     required this.title,
//     required this.url,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () async {
//         if (await canLaunch(url)) {
//           launch(url);
//         }
//       },
//       child: Container(
//         width: 155,
//         height: 176,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: Colors.white,
//         ),
//         child: Column(
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.vertical(
//                 top: Radius.circular(20),
//               ),
//               child: Image.network(
//                 imageUrl,
//                 width: 155,
//                 height: 110,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             SizedBox(
//               height: 12,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 12,
//               ),
//               child: Text(
//                 title,
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 maxLines: 2,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
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
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text('Tesla News'),
//       // ),
//       body: ListView.builder(
//         itemCount: tipsData.length,
//         itemBuilder: (context, index) {
//           final tip = tipsData[index];
//           return GestureDetector(
//             onTap: () => onTapUrl(tip['url'] ?? ''),
//             child: HomeTipsItem(
//               imageUrl: tip['urlToImage'] ?? '',
//               title: tip['title'] ?? '',
//               url: tip['url'] ?? '',
//             ),
//           );
//         },
//       ),
//     );
  
//   }

// }
