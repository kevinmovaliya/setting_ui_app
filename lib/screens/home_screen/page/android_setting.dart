import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setting_ui_app/utils/globals.dart';
import 'package:setting_ui_app/utils/style.dart';

class AndroidSetting extends StatefulWidget {
  const AndroidSetting({Key? key}) : super(key: key);

  @override
  _AndroidSettingState createState() => _AndroidSettingState();
}

class _AndroidSettingState extends State<AndroidSetting> {
  bool switch1 = true;
  bool switch2 = false;
  bool switch3 = true;

  @override
  Widget build(BuildContext context) {
    return (Global.isIOS)
        ? CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              middle: const Text(
                "Settings UI",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: CupertinoSwitch(
                  value: Global.isIOS,
                  onChanged: (val) {
                    setState(() {
                      Global.isIOS = val;
                    });
                  }),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Column",
                        style: TextStyle(
                          color: CupertinoColors.inactiveGray,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    CupertinoFormSection(
                      children: [
                        CupertinoListTile(
                          onTap: () {},
                          title: Text(
                            "Language",
                            style: TextStyle(
                              color: CupertinoColors.darkBackgroundGray
                                  .withOpacity(0.8),
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                          leading: const Icon(
                            CupertinoIcons.globe,
                            color: CupertinoColors.inactiveGray,
                            size: 28,
                          ),
                          trailing: SizedBox(
                            width: 87,
                            child: Row(
                              children: const [
                                Text(
                                  "English",
                                  style: TextStyle(
                                      color: CupertinoColors.inactiveGray,
                                      decoration: TextDecoration.none,
                                      fontSize: 15),
                                ),
                                Icon(
                                  CupertinoIcons.forward,
                                  color: CupertinoColors.inactiveGray,
                                )
                              ],
                            ),
                          ),
                        ),
                        CupertinoListTile(
                          onTap: () {},
                          title: Text(
                            "Environment",
                            style: TextStyle(
                              color: CupertinoColors.darkBackgroundGray
                                  .withOpacity(0.8),
                              decoration: TextDecoration.none,
                              fontSize: 18,
                            ),
                          ),
                          leading: const Icon(
                            CupertinoIcons.cloud,
                            color: CupertinoColors.inactiveGray,
                            size: 28,
                          ),
                          trailing: SizedBox(
                            width: 105,
                            child: Row(
                              children: const [
                                Text(
                                  "Production",
                                  style: TextStyle(
                                      color: CupertinoColors.inactiveGray,
                                      decoration: TextDecoration.none,
                                      fontSize: 15),
                                ),
                                Icon(
                                  CupertinoIcons.forward,
                                  color: CupertinoColors.inactiveGray,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Account",
                        style: TextStyle(
                          color: CupertinoColors.inactiveGray,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    CupertinoFormSection(
                      children: [
                        MyListTiles(
                          title: "Phone Number",
                          icon: CupertinoIcons.phone_solid,
                        ),
                        MyListTiles(
                          title: "Email",
                          icon: CupertinoIcons.mail_solid,
                        ),
                        MyListTiles(
                          title: "Sign out",
                          icon: CupertinoIcons.square_arrow_right,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Security",
                        style: TextStyle(
                          color: CupertinoColors.inactiveGray,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    CupertinoFormSection(
                      children: [
                        SecurityListTile(
                          title: "Lock app in background",
                          icon: CupertinoIcons.lock,
                          trailing: CupertinoSwitch(
                            onChanged: (val) {
                              setState(() {
                                switch1 = val;
                              });
                            },
                            value: switch1,
                            activeColor: CupertinoColors.destructiveRed,
                          ),
                        ),
                        SecurityListTile(
                          title: "Use fingerprint",
                          icon: Icons.fingerprint,
                          trailing: CupertinoSwitch(
                            onChanged: (val) {
                              setState(() {
                                switch2 = val;
                              });
                            },
                            value: switch2,
                            activeColor: CupertinoColors.destructiveRed,
                          ),
                        ),
                        SecurityListTile(
                          title: "Change password",
                          icon: CupertinoIcons.compass,
                          trailing: CupertinoSwitch(
                              onChanged: (val) {
                                setState(() {
                                  switch3 = val;
                                });
                              },
                              value: switch3,
                              activeColor: CupertinoColors.destructiveRed),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Mics",
                        style: TextStyle(
                          color: CupertinoColors.inactiveGray,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    CupertinoFormSection(
                      children: [
                        MyListTiles(
                          title: "Terms of Service",
                          icon: CupertinoIcons.doc_chart_fill,
                        ),
                        MyListTiles(
                          title: "Open source licenses",
                          icon: CupertinoIcons.doc_on_clipboard,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        : Scaffold(
            appBar: AppBar(
              title: const Text(
                "Settings UI",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: Colors.redAccent,
              actions: [
                Switch(
                  value: Global.isIOS,
                  onChanged: (val) {
                    setState(() {
                      Global.isIOS = val;
                    });
                  },
                  activeColor: Colors.white,
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Common",
                      style: redTextStyle,
                    ),
                    const ListTile(
                      title: Text("Language"),
                      subtitle: Text("English"),
                      leading: Icon(Icons.language, size: 27),
                    ),
                    const Divider(
                      height: 1,
                    ),
                    MyListTile(
                        title: "Environment",
                        subTitle: "Production",
                        leading: const Icon(
                          Icons.cloud,
                          size: 27,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Account",
                      style: redTextStyle,
                    ),
                    ListTile(
                      title: const Text("Phone number"),
                      leading: const Icon(
                        Icons.phone,
                        size: 27,
                      ),
                      onTap: () {},
                    ),
                    const Divider(
                      height: 1,
                    ),
                    ListTile(
                      title: const Text("Email"),
                      leading: const Icon(
                        Icons.email,
                        size: 27,
                      ),
                      onTap: () {},
                    ),
                    const Divider(
                      height: 1,
                    ),
                    ListTile(
                      title: const Text("Sign out"),
                      leading: const Icon(Icons.logout, size: 27),
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Security",
                      style: redTextStyle,
                    ),
                    ListTile(
                      title: const Text("Lock app in background"),
                      leading: const Icon(
                        Icons.phonelink_lock_outlined,
                        size: 27,
                      ),
                      onTap: () {},
                      trailing: Switch(
                        onChanged: (val) {
                          setState(() {
                            switch1 = val;
                          });
                        },
                        value: switch1,
                        activeColor: Colors.redAccent,
                      ),
                    ),
                    const Divider(
                      height: 1,
                    ),
                    ListTile(
                      title: const Text("Use fingerprint"),
                      leading: const Icon(
                        Icons.fingerprint,
                        size: 27,
                      ),
                      onTap: () {},
                      trailing: Switch(
                        onChanged: (val) {
                          setState(() {
                            switch2 = val;
                          });
                        },
                        value: switch2,
                        activeColor: Colors.redAccent,
                      ),
                    ),
                    const Divider(
                      height: 1,
                    ),
                    ListTile(
                      title: const Text("Change password"),
                      leading: const Icon(Icons.lock, size: 27),
                      onTap: () {},
                      trailing: Switch(
                        onChanged: (val) {
                          setState(() {
                            switch3 = val;
                          });
                        },
                        value: switch3,
                        activeColor: Colors.redAccent,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Mics",
                      style: redTextStyle,
                    ),
                    ListTile(
                      title: const Text("Terms of Service"),
                      leading: const Icon(
                        Icons.summarize,
                        size: 27,
                      ),
                      onTap: () {},
                    ),
                    const Divider(
                      height: 1,
                    ),
                    ListTile(
                      title: const Text("Open source licenses"),
                      leading: const Icon(
                        Icons.file_copy,
                        size: 27,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}

// ignore: must_be_immutable
class MyListTile extends StatelessWidget {
  MyListTile({Key? key, this.title, this.leading, this.subTitle, this.trailing})
      : super(key: key);

  String? title;
  String? subTitle;
  Icon? leading;
  Switch? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text("$title"),
      subtitle: Text(subTitle ?? ''),
      leading: leading,
      trailing: trailing,
    );
  }
}

class MyListTiles extends StatelessWidget {
  MyListTiles({Key? key, this.icon, this.title}) : super(key: key);

  String? title;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      onTap: () {},
      title: Text(
        "$title",
        style: TextStyle(
          color: CupertinoColors.darkBackgroundGray.withOpacity(0.8),
          decoration: TextDecoration.none,
          fontSize: 18,
        ),
      ),
      leading: Icon(
        icon,
        color: CupertinoColors.inactiveGray,
        size: 28,
      ),
    );
  }
}

class SecurityListTile extends StatelessWidget {
  SecurityListTile({Key? key, this.title, this.icon, this.trailing})
      : super(key: key);

  String? title;
  IconData? icon;
  Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      onTap: () {},
      title: Text(
        "$title",
        style: TextStyle(
          color: CupertinoColors.darkBackgroundGray.withOpacity(0.8),
          decoration: TextDecoration.none,
          fontSize: 18,
        ),
      ),
      leading: Icon(
        icon,
        color: CupertinoColors.inactiveGray,
        size: 28,
      ),
      trailing: trailing,
    );
  }
}
