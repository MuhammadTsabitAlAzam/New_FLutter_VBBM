import 'package:flutter/material.dart';
import 'package:vbbm/Components/DrawerMenu.dart';
import 'package:vbbm/Components/HeaderPanel.dart';
import 'package:vbbm/Services/PlatformServices.dart';
import 'package:vbbm/Components/VoucherPanel/VoucherInput.dart';

/// Our Main Screen or Home
class InputVoucherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerMenu(),
        drawerEnableOpenDragGesture:
        PlatFormServices.isMobile(context) ? true : false,
        body: SafeArea(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HeaderPanel(),
                      VoucherInput(),
                    ]))));
  }
}
