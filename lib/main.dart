import 'package:dexider/html_data.dart';
import 'package:dexider/utility/content_provider.dart';
import 'package:dexider/webpage/sections.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';
import 'package:webview_flutter_web/webview_flutter_web.dart';
import 'webpage/common_json.dart';
import 'webpage/customization_widget.dart';
import 'webpage/html_wrapper.dart';
import 'webpage/sections/navbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HtmlViewer(),
    );
  }
}

class PrimaryWidget extends StatelessWidget {
  const PrimaryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  const Text('Preview'),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.grey.shade400, width: 0.87),
                    ),
                    child: HtmlViewer(),
                  ),
                  // child: MyHomePage(title: 'flutter_html Example')),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const Text('HTML'),
                  OutlinedButton(
                    onPressed: () {
                      // Code to navigate to different screen
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => HtmlViewer(),
                        ),
                      );
                    },
                    child: const Text('Copy'),
                  ),
                  Container(
                    width: 300,
                    height: 500,
                    child: Text('htmlData'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HtmlViewer extends StatefulWidget {
  HtmlViewer({super.key});

  @override
  State<HtmlViewer> createState() => _HtmlViewerState();
}

class _HtmlViewerState extends State<HtmlViewer> {
//  final String htmlContent = await rootBundle.loadString('assets/my_html_asset.html');
  String header(String tile, String desc) {
    return """
<html>
    <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/grapesjs/0.12.17/css/grapes.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/cb3fff05fb.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/grapesjs/0.12.17/grapes.min.js"></script>
<style>

</style>    
</head>
    <body>
         <div class="container-fluid">
            <div class="row">
                <div class="col-md-9">
                    <h1 id="Title" onmouseover="mouseoverevent()">Welcome</h1> 
                </div>
                <div class="col-md-3">
                    <input style="color:black; margin-top:5px;" type="text" class="form-control"  id="inputbox" placeholder="Enter email" oninput="onclickhandler(this)">
                    <div>
                        <span><img height="20px" onclick="LeftAlign()" src="left-align.png"></span>
                        <span><img height="20px" onclick="CenterAlign()" src="center-align.png"></span>
                        <span><img height="20px" onclick="RightAlign()" src="align-right.png"></span>
                    </div>
                    <div style="margin-top:5px;">
                        <label>Font Size:</label>
                        <div>
                            <select name="fontsize" id="fontsize" onchange="onchangeDropdown(event)">
                                 <option value="5">5</option>
                                 <option value="10">10</option>
                                 <option value="15">15</option>
                                 <option value="20">20</option>
                                 <option value="25">25</option>
                                 <option value="30">30</option>
                                 <option value="35">35</option>
                                 <option value="40">40</option>
                            </select>
                        </div>
                    </div>
                    <div style="margin-top:5px;">
                        <label>Colour:</label>
                        <input type="color" id="color" >
                    </div>
                </div>
            </div>
        </div> 
        

        <script>
          let inputValue = document.getElementById("inputbox").value;
           
            function mouseoverevent(){
                
               console.log("inputValue =>",inputValue.length);
                if(inputValue.length>0){
                    document.getElementById("Title").innerHTML = inputValue;
                }
                else{
                     document.getElementById("inputbox").value = document.getElementById("Title").innerHTML ;
                 }
                
                
            }
             function onclickhandler(e){
                 document.getElementById("Title").innerHTML = e.value;
                 console.log(e.value);
             }

             function LeftAlign(){
                 document.getElementById("Title").style.textAlign = "left";
             }

             function RightAlign(){
                 document.getElementById("Title").style.textAlign = "right";
             }
             function CenterAlign(){
                 document.getElementById("Title").style.textAlign = "center";
             }
             function onchangeDropdown(event){
                 console.log(event.target.value);
                document.getElementById("Title").style.fontSize = event.target.value +"px";
             }
        </script>
    </body>
</html>""";
  }

  String dummyValue(String value) {
    return '';
  }

  bool isSelected = false;
  String displayValue = 'Ponmalar';

  bool isLeftAlign = false;

  VoidCallback changeAlignment() {
    return () {
      setState(() {
        isLeftAlign = !isLeftAlign;
      });
    };
  }

  // setstate function
  VoidCallback updateState() {
    return () {
      setState(() {
        isSelected = !isSelected;
      });
      print(Common.pattern);
    };
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
            if (isLeftAlign) customizationWidget(),
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
            if (!isLeftAlign) customizationWidget(),
          ],
        ),
      ),
    );
  }

  Expanded customizationWidget() {
    return Expanded(
      flex: 2,
      child: CustomizationWidget(
        changeAlignment(),
        updateState(),
      ),
    );
  }

  List<String> displaySections() {
    return [
      Sections.navbar(
        title: Common.navbarName,
        buttons: Common.navButtons,
        isSelected: isSelected,
      ),
      Sections.heroBanner(),
    ];
  }
}


// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('flutter_html Example'),
//         centerTitle: true,
//       ),
//       body: Stack(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 80.0),
//             child: SingleChildScrollView(
//               child: Html(
//                 data: ponmalarHtml,
//                 tagsList: Html.tags..addAll(["bird", "flutter"]),
//                 shrinkWrap: false,
//                 style: {
//                   "table": Style(
//                     backgroundColor: Color.fromARGB(0x50, 0xee, 0xee, 0xee),
//                   ),
//                   "tr": Style(
//                     border: Border(bottom: BorderSide(color: Colors.grey)),
//                   ),
//                   "th": Style(
//                     padding: EdgeInsets.all(6),
//                     backgroundColor: Colors.grey,
//                   ),
//                   "td": Style(
//                     padding: EdgeInsets.all(6),
//                     alignment: Alignment.topLeft,
//                   ),
//                   'h5': Style(maxLines: 2, textOverflow: TextOverflow.ellipsis),
//                 },
//                 customRender: {
//                   "table": (context, child) {
//                     return SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: (context.tree as TableLayoutElement)
//                           .toWidget(context),
//                     );
//                   },
//                   "bird": (RenderContext context, Widget child) {
//                     return TextSpan(text: "🐦");
//                   },
//                   "flutter": (RenderContext context, Widget child) {
//                     return FlutterLogo(
//                       style: (context.tree.element!.attributes['horizontal'] !=
//                               null)
//                           ? FlutterLogoStyle.horizontal
//                           : FlutterLogoStyle.markOnly,
//                       textColor: context.style.color!,
//                       size: context.style.fontSize!.size! * 5,
//                     );
//                   },
//                 },
//                 customImageRenders: {
//                   networkSourceMatcher(domains: ["flutter.dev"]):
//                       (context, attributes, element) {
//                     return FlutterLogo(size: 36);
//                   },
//                   networkSourceMatcher(domains: ["mydomain.com"]):
//                       networkImageRender(
//                     headers: {"Custom-Header": "some-value"},
//                     altWidget: (alt) => Text(alt ?? ""),
//                     loadingWidget: () => Text("Loading..."),
//                   ),
//                   // On relative paths starting with /wiki, prefix with a base url
//                   (attr, _) =>
//                       attr["src"] != null &&
//                       attr["src"]!
//                           .startsWith("/wiki"): networkImageRender(
//                       mapUrl: (url) => "https://upload.wikimedia.org" + url!),
//                   // Custom placeholder image for broken links
//                   networkSourceMatcher():
//                       networkImageRender(altWidget: (_) => FlutterLogo()),
//                 },
//                 onLinkTap: (url, _, __, ___) {
//                   print("Opening $url...");
//                 },
//                 onImageTap: (src, _, __, ___) {
//                   print(src);
//                 },
//                 onImageError: (exception, stackTrace) {
//                   print(exception);
//                 },
//                 onCssParseError: (css, messages) {
//                   print("css that errored: $css");
//                   print("error messages:");
//                   messages.forEach((element) {
//                     print(element);
//                   });
//                 },
//               ),
//             ),
//           ),
//           Positioned(
//             right: 0,
//             child: Container(
//                 height: MediaQuery.of(context).size.height,
//                 // width: MediaQuery.of(context).size.width ,
//                 margin: const EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   border: Border.all(
//                     color: Colors.grey.shade400,
//                     width: 0.87,
//                   ),
//                 ),
//                 padding: const EdgeInsets.all(10),
//                 child: Column(mainAxisSize: MainAxisSize.min, children: [
//                   for (var i = 0; i < 10; i++) const Text('Preview'),
//                 ])),
//           )
//         ],
//       ),
//     );
//   }
// }
