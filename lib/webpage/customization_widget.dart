import 'package:dexider/webpage/common_json.dart';
import 'package:flutter/material.dart';

class CustomizationWidget extends StatelessWidget {
  final VoidCallback onClick;
  final Function setState;

  CustomizationWidget(
    this.onClick,
    this.setState, {
    super.key,
  });

  final List<String> sections = [
    'Navigation',
    'Hero',
    'About',
    'Services',
    'Testimonials',
    'Footer'
  ];

  final List<String> jsonIds = [
    'nav_bar',
    'banner',
    'about',
    'services',
    'testimonials',
    'footer'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (itemBuilder, index) => ExpansionTile(
                trailing: Icon(
                  Icons.arrow_drop_down,
                  size: 20,
                ),
                onExpansionChanged: (isExpanded) {},
                title: Text(
                  sections[index],
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.black87,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        letterSpacing: 0.15,
                      ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: widgetList(context, sections[index]),
                  ),
                ],
              ),
              separatorBuilder: (separatorBuilder, index) => Divider(
                color: Colors.grey.shade300,
                thickness: 0.62,
              ),
              itemCount: sections.length,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 42),
                    ),
                    onPressed: () {
                      setState();
                    },
                    child: Text('Apply'),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text('Reset'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget widgetList(BuildContext context, String section) {
    switch (section) {
      case 'Navigation':
        return navBar(context);
      // case 'Hero':
      //   return heroBanner(context);
      // case 'About':
      //   return about(context);
      // case 'Services':
      //   return services(context);
      // case 'Testimonials':
      //   return testimonials(context);
      // case 'Footer':
      //   return footer(context);
      default:
        return Container();
    }
  }

  Widget navBar(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Company Name",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        SizedBox(
          height: 18,
        ),
        TextFormField(
          initialValue: Common.navbarName,
          cursorColor: Color.fromARGB(255, 119, 100, 242),
          onChanged: (value) {
            Common.setNavbarName(value);
            // (Common.pattern['sections'] as List)[0]['value']['name'] = value;
            // Common.pattern['navBar']!['title'] = value;
            // setState();
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 119, 100, 242)),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 119, 100, 242), width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Text(
          "Buttons",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        SizedBox(
          height: 18,
        ),
        TextField(
          cursorColor: Color.fromARGB(255, 119, 100, 242),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 119, 100, 242)),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 119, 100, 242), width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        TextField(
          cursorColor: Color.fromARGB(255, 119, 100, 242),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 119, 100, 242)),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 119, 100, 242), width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        TextField(
          cursorColor: Color.fromARGB(255, 119, 100, 242),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 119, 100, 242)),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 119, 100, 242), width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        TextField(
          cursorColor: Color.fromARGB(255, 119, 100, 242),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 119, 100, 242)),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 119, 100, 242), width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        SizedBox(
          height: 18,
        ),
      ],
    );
  }
}
