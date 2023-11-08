part of '../../widgets.dart';

class Service extends StatelessWidget {
  const Service({Key? key}) : super(key: key);

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
              HomeServiceItem(
                iconUrl: 'assets/credit.png',
                title: '   Credit\nApplication',
                onTap: () {},
              ),
              HomeServiceItem(
                iconUrl: 'assets/voucher.png',
                title: 'Vouchers \n',
                onTap: () {},
              ),
              HomeServiceItem(
                iconUrl: 'assets/balance.png',
                title: 'SPSW &\nBalance',
                onTap: () {},
              ),
              HomeServiceItem(
                iconUrl: 'assets/pos.png',
                title: 'POS Cafe \n ',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
