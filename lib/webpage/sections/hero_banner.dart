class HeroBanner {
  static String heroBanner(
      {required String title,
      required String desc,
      required String imageUrl,
      required String buttonText}) {
    return """
    <div style=" width:100%;position: relative;">
    <img src=$imageUrl style="width: 100%;height:75vh;">
    <div style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; background-color: #9a181880"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div style=" position: absolute;width:50%; top: 50%; left: 30%;transform: translate(-50%, -50%);">
                    <h1 class="pb-3" style="color:white;">$title</h1>
                    <p style="color:white;font-size:19px;opacity:0.92">$desc</p>
                      <button type="button" class="btn btn-light">$buttonText</button>
                </div>
            </div>
        </div>
    </div>
  </div>
  """;
  }
}
