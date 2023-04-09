import 'package:dexider/webpage/common_json.dart';
import 'package:dexider/webpage/customize_widget/view_model.dart';
import 'package:flutter/material.dart';

class CustomizationWidget extends StatelessWidget {
  final VoidCallback onClick;
  final Function setState;
  final ViewModel vm;

  CustomizationWidget(
    this.onClick,
    this.setState,
    this.vm, {
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

  final formKey = GlobalKey<FormState>();

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
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (itemBuilder, index) => ExpansionTile(
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    size: 20,
                  ),
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
                      child: widgetList(context, sections[index], vm),
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
              padding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 44),
                      ),
                      onPressed: () {
                        formKey.currentState!.save();
                        vm.updateValues();
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
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(double.infinity, 44),
                      ),
                      onPressed: () {
                        formKey.currentState!.reset();
                        vm.inializeValues();
                      },
                      child: Text('Reset'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget widgetList(BuildContext context, String section, ViewModel vm) {
    switch (section) {
      case 'Navigation':
        return navBar(context, vm);
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

  Widget navBar(BuildContext context, ViewModel vm) {
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
          controller: vm.navbarTitle,
          cursorColor: Color.fromARGB(255, 119, 100, 242),
          // onChanged: (value) {
          //   Common.setNavbarName(value);

          // },
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
          controller: vm.navbarTitle1,
        ),
        SizedBox(
          height: 18,
        ),
        TextField(
          cursorColor: Color.fromARGB(255, 119, 100, 242),
          controller: vm.navbarTitle2,
        ),
        SizedBox(
          height: 18,
        ),
        TextField(
          cursorColor: Color.fromARGB(255, 119, 100, 242),
          controller: vm.navbarTitle3,
        ),
        SizedBox(
          height: 18,
        ),
        TextField(
          cursorColor: Color.fromARGB(255, 119, 100, 242),
          controller: vm.navbarTitle4,
        ),
        SizedBox(
          height: 18,
        ),
      ],
    );
  }
}
