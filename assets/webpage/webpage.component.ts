import { Component, OnInit } from '@angular/core';
import { ServiceService } from '../service/service.service';




@Component({
  selector: 'app-webpage',
  templateUrl: './webpage.component.html',
  styleUrls: ['./webpage.component.css']
})
export class WebpageComponent implements OnInit {
  webpageData:any;
  navbarData:any;
  heroBannerDetails:any;
  aboutSection:any;

  constructor(private serviceName: ServiceService) { 
    let navbarSectionList = ["Home","About","Services","Features","Contact"];
    this.navbarData = {
      navbarLogo:"Logo",
      navbarSectionList:navbarSectionList,
      navbarBackgroundColor:"#000",
      navbarColor:"white"
    }

    this.heroBannerDetails = {
      SectionTitle:"Welcome to Shop",
      SectionContent:"We Textiles offer an exquisite collection of quality home and office textiles, all made with the finest fabrics and materials. From cotton sarees to designer bed sheets, we have something to suit every occasion. We specialize in suiting, shirting, and other clothing fabric that provide superior comfort and style. With unbeatable quality, unique design, and competitive prices",
      SectionColor:"#C76A18",
      SectionBackgroundImg:"../../assets/hero_banner.jpg"
    }

    this.aboutSection = {
      aboutTitle:"About",
      aboutText:"Selling textiles, fabrics and clothing online can be a lucrative business. Some choose to sell raw fabric to clothing, furniture and auto manufacturers, while others offer finished garments on their own eCommerce websites. Textile website templates are a quick way to start building such a website.",
      aboutImage:"../../assets/hero_banner.jpg"
    }
    
    this.webpageData = {
      navData:this.navbarData,
      heroBanner:this.heroBannerDetails,
      aboutsection:this.aboutSection
    }
  }

  ngOnInit(): void {
    // let data:any = {
    //   "promptData":"About section for textile shop"
    // };
    // this.serviceName.postData(data).subscribe((response:any) => {
    //   console.log("response =>",response);
    // });
    
  
  }

}
