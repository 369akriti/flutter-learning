import 'package:flutter/material.dart';
import 'package:learning/Booking%20App/components/setting_row_item.dart';

class BookingProfile extends StatelessWidget {
  const BookingProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Your Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: Colors.white,
            height: 280,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20,
                right: 28,
                left: 28,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/img_1.jpg',
                        ),
                        radius: 30,
                      ),
                      subtitle: Text(
                        'Add your contact data',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey[400],
                        ),
                      ),
                      title: const Text(
                        'Name Surname',
                        style: TextStyle(
                          fontSize: 19,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Documentation',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 19,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(children: [
                      Icon(
                        Icons.assignment,
                        color: Colors.grey[300],
                        size: 60,
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Name Surname',
                              style: TextStyle(
                                fontSize: 19,
                              ),
                            ),
                            Text(
                              '+ Add your passport information',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey[400],
                              ),
                            ),
                          ]),
                    ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 2.0),
                      height: 25,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(4.0)),
                      child: const Text(
                        'ALL DOCUMENTS',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 470,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SettingRowItem(
                      icon: Icons.person_outline,
                      title: 'Manage your account',
                    ),
                    SettingRowItem(
                      icon: Icons.lock_outline,
                      title: 'Privacy and safety',
                    ),
                    SettingRowItem(
                      icon: Icons.videocam_outlined,
                      title: 'Registration',
                    ),
                    SettingRowItem(
                      icon: Icons.account_balance_wallet_outlined,
                      title: 'Balance',
                    ),
                    SettingRowItem(
                      icon: Icons.reply_outlined,
                      title: 'Links',
                    ),
                    SettingRowItem(
                      icon: Icons.qr_code_outlined,
                      title: 'Codes',
                    )
                  ]),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 150,
            width: 470,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Advises',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          'My Tickets',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.grey[400],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'Support',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.grey[400],
                        )
                      ],
                    ),
                  ]),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: 470,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Aviacompanies',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.grey[400],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'Rate us',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.grey[400],
                        )
                      ],
                    ),
                  ]),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            '2.20.21',
            style: TextStyle(
              fontSize: 16,
            ),
          )
        ]),
      ),
    );
  }
}
