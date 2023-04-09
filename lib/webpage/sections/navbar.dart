class Navbar {
  static String navbar(String title, List<String> buttons, bool isSelected) {
    String style = '\"border:1px solid red\"';
    String border = 'style=$style';
    String selectedContent = isSelected ? border : '';

    String buttonListTags() {
      String buttonList = "";
      for (var button in buttons) {
        buttonList += buttonGenerator(button);
      }
      return buttonList;
    }

    print(selectedContent);

    return """
<nav class="navbar navbar-expand-lg bg-light" $selectedContent>
    <div class="container-fluid"
      <a class="navbar-brand" href="#" >$title</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav ms-auto">
          ${buttonListTags()}
        </ul>
      </div>
    </div>
  </nav>
 """;
  }

  static String buttonGenerator(String text) {
    return """<li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#" >$text</a>
          </li>""";
  }
}
