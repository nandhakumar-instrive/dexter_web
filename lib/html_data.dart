String name = 'Alice';
int age = 30;

String message = '''
  Hello ${name},
  Your age is ${age}.
''';

String dummyCss = "background-color: red; color: blue;";

String ahtml = """<html>
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
</html> """;

String ponmalarHtml = """
<nav class="navbar navbar-expand-lg" [style.backgroundColor]="navbarData.navbarBackgroundColor"  >
    <div class="container-fluid" [style.color]="navbarData.navbarColor">
      <a class="navbar-brand" href="#"  [style.color]="navbarData.navbarColor">{{navbarData.navbarLogo}}</a>
      <button  [style.color]="navbarData.navbarColor" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span  class="navbar-toggler-icon" [style.color]="navbarData.navbarColor"></span>
      </button>
      <div [style.color]="navbarData.navbarColor" class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav" *ngFor="let data of navbarData.navbarSectionList">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="#" [style.color]="navbarData.navbarColor">{{data}}</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
   <!-- <div> -->
    <div style=" width:100%;position: relative;">
      <img src={{heroBannerDetails.SectionBackgroundImg}} style="width: 100%;height:75vh;">
      <div style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; background-color: #9a181880"></div>
      <div class="container">
          <div class="row">
              <div class="col-md-6">
                  <div class="text-container">
                      <h4 class="pb-3" [style.color]=heroBannerDetails.SectionColor>{{heroBannerDetails.SectionTitle}}</h4>
                      <p [style.color]=heroBannerDetails.SectionColor>{{heroBannerDetails.SectionContent}}</p>
                  </div>
              </div>
              <div class="col-md-6">
  
              </div>
          </div>
      </div>
    </div> 

  <!-- </div>  -->
<h4 style="text-align:center;" class="mt-3">{{aboutSection.aboutTitle}}</h4>
<div class="container">
    <div class="row mt-3 mb-3">
        <div class="col-md-6">
            {{aboutSection.aboutText}}
        </div>
        <div class="col-md-6">
         <img src={{aboutSection.aboutImage}} style="width:100%;">
        </div>
    </div>""";

String htmlData(String value) => """
<p id='top'><a href='#bottom'>Scroll to bottom</a></p>
      <h1>${value} 1</h1>
      <h2>Header 2</h2>
      <h3>Header 3</h3>
      <h4>Header 4</h4>
      <h5>Header 5</h5>
      <h6>Header 6</h6>
      <h3>Ruby Support:</h3>
      <p>
        <ruby>
          漢<rt>かん</rt>
          字<rt>じ</rt>
        </ruby>
        &nbsp;is Japanese Kanji.
      </p>
      <h3>Support for maxLines:</h3>
      <h5 style="color:red">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vestibulum sapien feugiat lorem tempor, id porta orci elementum. Fusce sed justo id arcu egestas congue. Fusce tincidunt lacus ipsum, in imperdiet felis ultricies eu. In ullamcorper risus felis, ac maximus dui bibendum vel. Integer ligula tortor, facilisis eu mauris ut, ultrices hendrerit ex. Donec scelerisque massa consequat, eleifend mauris eu, mollis dui. Donec placerat augue tortor, et tincidunt quam tempus non. Quisque sagittis enim nisi, eu condimentum lacus egestas ac. Nam facilisis luctus ipsum, at aliquam urna fermentum a. Quisque tortor dui, faucibus in ante eget, pellentesque mattis nibh. In augue dolor, euismod vitae eleifend nec, tempus vel urna. Donec vitae augue accumsan ligula fringilla ultrices et vel ex.</h5>
      <h3 style=${dummyCss.toString()}>Support POnmalar <code>sub</code>/<code>sup</code></h3>
      Solve for <var>x<sub>n</sub></var>: log<sub>2</sub>(<var>x</var><sup>2</sup>+<var>n</var>) = 9<sup>3</sup>
      <p>One of the most <span>common</span> equations in all of physics is <br /><var>E</var>=<var>m</var><var>c</var><sup>2</sup>.</p>
      <h3>Inline Styles:</h3>
      <p>The should be <span style='color: blue;'>BLUE style='color: blue;'</span></p>
      <p>The should be <span style='color: red;'>RED style='color: red;'</span></p>
      <p>The should be <span style='color: rgba(0, 0, 0, 0.10);'>BLACK with 10% alpha style='color: rgba(0, 0, 0, 0.10);</span></p>
      <p>The should be <span style='color: rgb(0, 97, 0);'>GREEN style='color: rgb(0, 97, 0);</span></p>
      <p>The should be <span style='background-color: red; color: rgb(0, 97, 0);'>GREEN style='color: rgb(0, 97, 0);</span></p>
      <p style="text-align: center;"><span style="color: rgba(0, 0, 0, 0.95);">blasdafjklasdlkjfkl</span></p>
      <p style="text-align: right;"><span style="color: rgba(0, 0, 0, 0.95);">blasdafjklasdlkjfkl</span></p>
      <p style="text-align: justify;"><span style="color: rgba(0, 0, 0, 0.95);">blasdafjklasdlkjfkl</span></p>
      <p style="text-align: center;"><span style="color: rgba(0, 0, 0, 0.95);">blasdafjklasdlkjfkl</span></p>
      <h3>Table support (with custom styling!):</h3>
      <p>
      <q>Famous quote...</q>
      </p>
      <table>
      <colgroup>
        <col width="50%" />
        <col span="2" width="25%" />
      </colgroup>
      <thead>
      <tr><th>One</th><th>Two</th><th>Three</th></tr>
      </thead>
      <tbody>
      <tr>
        <td rowspan='2'>Rowspan\nRowspan\nRowspan\nRowspan\nRowspan\nRowspan\nRowspan\nRowspan\nRowspan\nRowspan</td><td>Data</td><td>Data</td>
      </tr>
      <tr>
        <td colspan="2"><img alt='Google' src='https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png' /></td>
      </tr>
      </tbody>
      <tfoot>
      <tr><td>fData</td><td>fData</td><td>fData</td></tr>
      </tfoot>
      </table>
      <h3>Custom Element Support (inline: <bird></bird> and as block):</h3>
      <flutter></flutter>
      <flutter horizontal></flutter>
      <h3 id='middle'>SVG support:</h3>
      <svg id='svg1' viewBox='0 0 100 100' xmlns='http://www.w3.org/2000/svg'>
            <circle r="32" cx="35" cy="65" fill="#F00" opacity="0.5"/>
            <circle r="32" cx="65" cy="65" fill="#0F0" opacity="0.5"/>
            <circle r="32" cx="50" cy="35" fill="#00F" opacity="0.5"/>
      </svg>
      <h3>List support:</h3>
      <ol>
            <li>This</li>
            <li><p>is</p></li>
            <li>an</li>
            <li>
            ordered
            <ul>
            <li>With<br /><br />...</li>
            <li>a</li>
            <li>nested</li>
            <li>unordered
            <ol style="list-style-type: lower-alpha;" start="5">
            <li>With a nested</li>
            <li>ordered list</li>
            <li>with a lower alpha list style</li>
            <li>starting at letter e</li>
            </ol>
            </li>
            <li>list</li>
            </ul>
            </li>
            <li>list! Lorem ipsum dolor sit amet.</li>
            <li><h2>Header 2</h2></li>
            <h2><li>Header 2</li></h2>
      </ol>
      <h3>Link support:</h3>
      <p>
        Linking to <a href='https://github.com'>websites</a> has never been easier.
      </p>
      <h3>Image support:</h3>
      <h3>Network png</h3>
      <img alt='Google' src='https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png' />
      <h3>Network svg</h3>
      <img src='https://dev.w3.org/SVG/tools/svgweb/samples/svg-files/android.svg' />
      <h3>Local asset png</h3>
      <img src='asset:assets/html5.png' width='100' />
      <h3>Local asset svg</h3>
      <img src='asset:assets/mac.svg' width='100' />
      <h3>Data uri (with base64 support)</h3>
      <img alt='Red dot (png)' src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg==' />
      <img alt='Green dot (base64 svg)' src='data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB2aWV3Qm94PSIwIDAgMzAgMjAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjxjaXJjbGUgY3g9IjE1IiBjeT0iMTAiIHI9IjEwIiBmaWxsPSJncmVlbiIvPgo8L3N2Zz4=' />
      <img alt='Green dot (plain svg)' src='data:image/svg+xml,%3C?xml version="1.0" encoding="UTF-8"?%3E%3Csvg viewBox="0 0 30 20" xmlns="http://www.w3.org/2000/svg"%3E%3Ccircle cx="15" cy="10" r="10" fill="yellow"/%3E%3C/svg%3E' />
      <h3>Custom source matcher (relative paths)</h3>
      <img src='/wikipedia/commons/thumb/e/ef/Octicons-logo-github.svg/200px-Octicons-logo-github.svg.png' />
      <h3>Custom image render (flutter.dev)</h3>
      <img src='https://flutter.dev/images/flutter-mono-81x100.png' />
      <h3>No image source</h3>
      <img alt='No source' />
      <img alt='Empty source' src='' />
      <h3>Broken network image</h3>
      <img alt='Broken image' src='https://www.notgoogle.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png' />
      <h3>MathML Support:</h3>
      <math>
      <mrow>
        <mi>x</mi>
        <mo>=</mo>
        <mfrac>
          <mrow>
            <mrow>
              <mo>-</mo>
              <mi>b</mi>
            </mrow>
            <mo>&PlusMinus;</mo>
            <msqrt>
              <mrow>
                <msup>
                  <mi>b</mi>
                  <mn>2</mn>
                </msup>
                <mo>-</mo>
                <mrow>
                  <mn>4</mn>
                  <mo>&InvisibleTimes;</mo>
                  <mi>a</mi>
                  <mo>&InvisibleTimes;</mo>
                  <mi>c</mi>
                </mrow>
              </mrow>
            </msqrt>
          </mrow>
          <mrow>
            <mn>2</mn>
            <mo>&InvisibleTimes;</mo>
            <mi>a</mi>
          </mrow>
        </mfrac>
      </mrow>
      </math>
      <math>
        <munderover >
          <mo> &int; </mo>
          <mn> 0 </mn>
          <mi> 5 </mi>
        </munderover>
        <msup>
          <mi>x</mi>
          <mn>2</mn>
       </msup>
        <mo>&sdot;</mo>
        <mi>&dd;</mi><mi>x</mi>
        <mo>=</mo>
        <mo>[</mo>
        <mfrac>
          <mn>1</mn>
          <mi>3</mi>
       </mfrac>
       <msup>
          <mi>x</mi>
          <mn>3</mn>
       </msup>
       <msubsup>
          <mo>]</mo>
          <mn>0</mn>
          <mn>5</mn>
       </msubsup>
       <mo>=</mo>
       <mfrac>
          <mn>125</mn>
          <mi>3</mi>
       </mfrac>
       <mo>-</mo>
       <mn>0</mn>
       <mo>=</mo>
       <mfrac>
          <mn>125</mn>
          <mi>3</mi>
       </mfrac>
      </math>
      <math>
        <msup>
          <mo>sin</mo>
          <mn>2</mn>
        </msup>
        <mo>&theta;</mo>
        <mo>+</mo>
        <msup>
          <mo>cos</mo>
          <mn>2</mn>
        </msup>
        <mo>&theta;</mo>
        <mo>=</mo>
        <mn>1</mn>
      </math>
      <h3>Tex Support with the custom tex tag:</h3>
      <tex>i\hbar\frac{\partial}{\partial t}\Psi(\vec x,t) = -\frac{\hbar}{2m}\nabla^2\Psi(\vec x,t)+ V(\vec x)\Psi(\vec x,t)</tex>
      <p id='bottom'><a href='#top'>Scroll to top</a></p>
""";
