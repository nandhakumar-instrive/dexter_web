class Common {
  static get sectionBase => (pattern['sections'] as List);

  // SECTION - Nav Bar
  static get navBase => sectionBase[0]['value'];

  static get navbarName => navBase['name'];
  static void setNavbarName(String value) {
    navBase['name'] = value;
  }

  static get navButtons => navBase['actions'];

  static void setNavButtons(List<String> value) {
    navBase['actions'] = value;
  }

  // SECTION - Hero Banner
  static get heroBase => sectionBase[1]['value'];

  static get heroTitle => heroBase['title'];
  static void setHeroTitle(String value) {
    heroBase['title'] = value;
  }

  static get heroDesc => heroBase['desc'];
  static void setHeroDesc(String value) {
    heroBase['desc'] = value;
  }

  static get heroImage => heroBase['bgImage'];
  static void setHeroImage(String value) {
    heroBase['bgImage'] = value;
  }

  static get heroButtonText => heroBase['btnTxt'];
  static void setHeroButtonText(String value) {
    heroBase['btnTxt'] = value;
  }

  // SECTION - About
  static get aboutBase => sectionBase[2]['value'];

  static get aboutTitle => aboutBase['title'];
  static void setAboutTitle(String value) {
    aboutBase['title'] = value;
  }

  static get aboutDesc => aboutBase['text'];
  static void setAboutDesc(String value) {
    aboutBase['text'] = value;
  }

  static get aboutImage => aboutBase['image'];
  static void setAboutImage(String value) {
    aboutBase['image'] = value;
  }

  static var pattern = {
    "name": "App Name",
    "colors": {"primary": 'genPrimaryColor', "secondary": '', "tertiary": ''},
    "style": "classic",
    "sections": [
      {
        "order_id": 1,
        "name": "nav_bar",
        "value": {
          "name": "App Name",
          "logo":
              "https://images.unsplash.com/photo-1495615080073-6b89c9839ce0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=Mnw0Mjk5MjR8MHwxfHNlYXJjaHwxfHxzcXVhcmV8ZW58MHx8fHwxNjgwOTYyMzc4&ixlib=rb-4.0.3&q=80&w=200",
          "actions": [
            "Option 1",
            "Option 2",
            "Option 3",
            "Option 4",
            "Option 5"
          ]
        }
      },
      {
        "order_id": 2,
        "name": "banner",
        "value": {
          "title": "THE HERO BANNER",
          "desc":
              "Hero banners really started appearing about 15 years ago. Because they evolved from pages that lacked a singularly focused message, it's hard to say when the very first hero banner actually appeared. What started as a Flash presentation (a slideshow or other moving presentation) evolved into a video background.",
          "bgImage":
              "https://images.unsplash.com/photo-1506765515384-028b60a970df?crop=entropy&cs=srgb&fm=jpg&ixid=Mnw0Mjk5MjR8MHwxfHNlYXJjaHwxfHxiYW5uZXJ8ZW58MHx8fHwxNjgwOTU5MTkx&ixlib=rb-4.0.3&q=85",
          "btnTxt": "Click"
        }
      },
      {
        "order_id": 3,
        "name": "about",
        "value": {
          "image":
              "https://images.unsplash.com/photo-1506765515384-028b60a970df?crop=entropy&cs=srgb&fm=jpg&ixid=Mnw0Mjk5MjR8MHwxfHNlYXJjaHwxfHxiYW5uZXJ8ZW58MHx8fHwxNjgwOTU5MTkx&ixlib=rb-4.0.3&q=85",
          "title": "About",
          "text":
              "In this article, you’ll learn what makes an exceptional About Us page and find 25 about us page examples of the best ones out there to inspire your own About Us page design and content.",
          "direction": ""
        }
      },
      {
        "order_id": 4,
        "name": "product",
        "value": [
          {
            "imageUrl":
                "In this article, you’ll learn what makes an exceptional About Us page and find 25 about us page examples of the best ones out there to inspire your own About Us page design and content.",
            "title": "Dhana sekaran",
            "desc": "This is a dummy description",
            "button": "1000"
          },
          {
            "imageUrl":
                "In this article, you’ll learn what makes an exceptional About Us page and find 25 about us page examples of the best ones out there to inspire your own About Us page design and content.",
            "title": "Dhana sekaran",
            "desc": "This is a dummy description",
            "button": "1000"
          },
          {
            "imageUrl":
                "In this article, you’ll learn what makes an exceptional About Us page and find 25 about us page examples of the best ones out there to inspire your own About Us page design and content.",
            "title": "Dhana sekaran",
            "desc": "This is a dummy description",
            "button": "1000"
          },
        ]
      },
      {
        "order_id": 5,
        "name": "testimonial",
        "value": [
          {
            "content":
                "In this article, you’ll learn what makes an exceptional About Us page and find 25 about us page examples of the best ones out there to inspire your own About Us page design and content.",
            "userName": "Dhana sekaran"
          },
          {
            "content":
                "In this article, you’ll learn what makes an exceptional About Us page and find 25 about us page examples of the best ones out there to inspire your own About Us page design and content.",
            "userName": "Nandha kumar"
          },
          {
            "content":
                "In this article, you’ll learn what makes an exceptional About Us page and find 25 about us page examples of the best ones out there to inspire your own About Us page design and content.",
            "userName": "Jelsi"
          },
          {
            "content":
                "In this article, you’ll learn what makes an exceptional About Us page and find 25 about us page examples of the best ones out there to inspire your own About Us page design and content.",
            "userName": "Ponmalar"
          }
        ]
      },
      {
        "order_id": 6,
        "name": "footer",
        "value": {
          "copyright": "Instrive",
          "link1": "Terms & conditions",
          "link2": "Privacy Policy",
        }
      }
    ]
  };
}
