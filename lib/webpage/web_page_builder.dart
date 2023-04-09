import 'package:dexider/webpage/common_json.dart';
import 'package:dexider/webpage/customize_widget/customization_widget.dart';
import 'package:dexider/webpage/customize_widget/view_model.dart';
import 'package:dexider/webpage/util/html_wrapper.dart';
import 'package:dexider/webpage/sections/sections_main.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';

class WebpageBuilder extends StatefulWidget {
  WebpageBuilder({super.key});

  @override
  State<WebpageBuilder> createState() => _WebpageBuilderState();
}

class _WebpageBuilderState extends State<WebpageBuilder> {
  bool isSelected = false;

  bool isLeftAlign = false;
  ViewModel vm = ViewModel();

  @override
  void initState() {
    super.initState();
    vm.inializeValues();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView example'),
        actions: <Widget>[],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            // if (isLeftAlign) cutomizerWidget(),
            Expanded(
              flex: 7,
              child: PlatformWebViewWidget(
                PlatformWebViewWidgetCreationParams(
                  controller: PlatformWebViewController(
                    const PlatformWebViewControllerCreationParams(),
                  )..loadHtmlString(
                      HtmlWrapper.webPageWrapper(
                        displaySections(),
                      ),
                    ),
                ),
              ).build(context),
            ),
            cutomizerWidget(),
          ],
        ),
      ),
    );
  }

  Expanded cutomizerWidget() {
    return Expanded(
      flex: 2,
      child: CustomizationWidget(
        changeAlignment(),
        updateState(),
        vm,
      ),
    );
  }

  List<String> displaySections() {
    return [
      Sections.navbar(
        title: Common.navbarName,
        buttons: Common.navButtons,
        isSelected: false,
      ),
      Sections.heroBanner(),
      Sections.about(),
    ];
  }

  VoidCallback changeAlignment() {
    return () {
      setState(() {
        isLeftAlign = !isLeftAlign;
      });
    };
  }

  VoidCallback updateState() {
    return () {
      setState(() {
        isSelected = !isSelected;
      });
    };
  }
}
