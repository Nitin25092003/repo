import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:makers_seller_app/widgets/common/famo_elevatedbutton.dart';

class AccountDetailsScreen extends StatefulWidget {
  const AccountDetailsScreen({super.key});
  @override
  State<AccountDetailsScreen> createState() => _AccountDetailsScreenState();
}

class _AccountDetailsScreenState extends State<AccountDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(248, 249, 250, 1),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            TablerIcons.chevron_left,
            size: 24,
          ),
        ),
        centerTitle: true,
        title: const Text("Account details",
            style: TextStyle(
              fontFamily: "OpenSans",
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color.fromRGBO(16, 24, 40, 1),
            )),
        actions: [
          IconButton(
            icon: const Icon(
              TablerIcons.x,
              size: 24,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 28, left: 19, right: 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Email address",
              style: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(52, 64, 84, 1),
                  fontWeight: FontWeight.w500,
                  fontFamily: "OpenSans"),
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 48,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Youremail@email.com",
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 14),
                    hintStyle: const TextStyle(
                      color: Color.fromRGBO(102, 112, 133, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(86, 110, 217, 1)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(208, 213, 221, 1)),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {},
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Change",
                            style: TextStyle(
                                fontFamily: "OpenSans",
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(102, 112, 133, 1)),
                          ),
                          Icon(
                            TablerIcons.chevron_right,
                            size: 16,
                            color: Color.fromRGBO(102, 112, 133, 1),
                          ),
                          SizedBox(
                            width: 12,
                          )
                        ],
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              " Password",
              style: TextStyle(
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color.fromRGBO(52, 64, 84, 1)),
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 48,
              child: TextFormField(
                controller: TextEditingController(text: 'password'),
                obscureText: true,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 14),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(86, 110, 217, 1)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(208, 213, 221, 1)),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {},
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Change",
                            style: TextStyle(
                                fontFamily: "OpenSans",
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(102, 112, 133, 1)),
                          ),
                          Icon(
                            TablerIcons.chevron_right,
                            size: 16,
                            color: Color.fromRGBO(102, 112, 133, 1),
                          ),
                          SizedBox(
                            width: 12,
                          )
                        ],
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 145,
        width: double.infinity,
        child: Padding(
          padding:
          const EdgeInsets.only(top: 13, right: 20, left: 20, bottom: 84),
          child: FamoElevatedButton(
            onPressed: () {},
            text: "Save",
          ),
        ),
      ),
    );
  }
}
