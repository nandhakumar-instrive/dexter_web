class AboutSection {
  static String about({
    required String title,
    required String desc,
    required String imageUrl,
  }) {
    return """
 <div class="container">
    <div class="row mt-3 mb-3">
        <div  class="col-md-6">
          <h1  class="mt-3 mb-3" style="text-align:center;">$title</h1>
          <div class="ms-0" style="height:70%;display: flex;align-items: center;">
          <div class="mt-3">
          $desc
          </div>
        </div>
        </div>
        <div class="col-md-6">
         <img src=$imageUrl style="width:100%;">
        </div>
    </div>
  </div>
  """;
  }
}
