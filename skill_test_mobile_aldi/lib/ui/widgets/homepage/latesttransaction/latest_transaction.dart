part of '../../widgets.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Today Transactions',
                style: blackTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                'See all',
                style: puprpleTextStyle.copyWith(
                  fontSize: 10,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.all(22),
            margin: EdgeInsets.only(
              top: 14,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color:
                  whiteColor, // Ganti warna latar belakang sesuai kebutuhan Anda
              border: Border.all(
                color: Colors.purple, // Warna border ungu
                width: 1, // Lebar border
              ),
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/no_transaction.png', // Ganti dengan path gambar Anda
                ),
                Text(
                  'No Transaction',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
