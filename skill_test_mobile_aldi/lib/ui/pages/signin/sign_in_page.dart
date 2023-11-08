part of '../pages.dart';

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool remindMe = false;

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(
              top: 60,
              bottom: 80,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/Logo.png',
                ),
              ),
            ),
          ),
          Text(
            'Login',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Please use the account you have to login at elKopra apps',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Note: email Input
                CustomFormField(title: ' Email '),
                const SizedBox(height: 16),
                //Note: password Input
                CustomFormField(
                  title: ' Password',
                  obscureText: true,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          activeColor: Colors.purple,
                          value: _isChecked,
                          onChanged: _handleCaptcha,
                        ),
                        Text(
                          'Remind Me',
                          style: blackTextStyle.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password?',
                        style: puprpleTextStyle.copyWith(fontSize: 14),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),
                CustomFilledButton(
                    title: 'Login',
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/home', (route) => false);
                    }),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Register new account ?  ',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
              SizedBox(width: 5),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Click Here',
                  style: puprpleTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _handleCaptcha(value) async {
    _isChecked = value;

    setState(() {
      _isChecked = value;
    });
  }
}
