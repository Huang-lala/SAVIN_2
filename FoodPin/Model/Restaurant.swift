//
//  Restaurant.swift
//  FoodPin
//
//  Created by NDHU_CSIE on 2020/11/19.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import UIKit
import CoreData

class Restaurant {
    var name: String
    var type: String
    var location: String
    var phone: String
    var summary: String
    var image: String
    var isVisited: Bool
    var rating: String
    
    init(name: String, type: String, location: String, phone: String, summary: String, image: String, isVisited: Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.phone = phone
        self.summary = summary
        self.image = image
        self.isVisited = isVisited
        self.rating = ""
    }
    
    static func writeRestaurantFromBegin() {
        
        let sourceArray: [Restaurant] = [
            Restaurant(name: "CACO", type: "Fashion Store", location: "台北市中正區忠孝西路一段47號B1 (台北車站K區地下街)", phone: "(02)2383-2529", summary: "CACO品牌起源2012年成立，台灣最大『美式授權服飾品牌』，擁有全台70間直營門市及自建官網，海外馬來西亞直營店。近年更快速整合實體門市與電商平台服務，提供消費者更優質體驗，並積極參與公益活動及社會回饋。", image: "cafedeadend.jpg", isVisited: false),
            Restaurant(name: "QUEEN SHOP", type: "Fashion Store", location: "台北市大安區敦化南路一段161巷24號", phone: "(02)2771-9922", summary: "台灣原創自有品牌服裝不僅是外在表象，而是內蘊的生活感受呈現在季節與質感間取得完美平衡設計出實穿的衣著品給認真看待生活的你，擁有隨心所欲的勇氣穿喜歡的衣服wearing & showing做自己好看的樣子。", image: "Queenshop.jpg", isVisited: false),
            Restaurant(name: "NET", type: "Fashion Store", location: "970花蓮縣花蓮市中正路581號", phone: " (03)834-5536", summary: "NET 以歐美休閒風格為基調，推出各個年齡層顧客都需要的商品，期待讓一家人都能找到適合自己的服飾，用「全家人的品牌」做為訴求以與一般平價服飾品牌產生市場區隔。", image: "teakha.jpg", isVisited: false),
            Restaurant(name: "50% FIFTY PERCENT", type: "Fashion Store", location: "108台北市萬華區漢中街41-1號", phone: "（02)2382-5188", summary: "A Philosophy Let's dress up in chic style of youth. Making the vogue which easy to obtain.Catalyst Always stick to the fashion.Personality Have fun making my own costumes.Vision The campaign to spread the vogue of youth could make fans more self-confidence and charming.", image: "cafeloisl.jpg", isVisited: false),
            Restaurant(name: "UNIQLO", type: "Fashion Store", location: "10444 台北市中山區南京西路15號6F", phone: "(02)2522-2801", summary:"源於日本價值之簡約風格、優越品質、經典品味，我們與時俱進、汲取時代靈感，以優雅的現代風尚，演繹出你的品味生活。精益求精的完美單品，簡約設計，低調藏著貼心的細節。精緻合身的剪裁與質感，讓每個人都輕鬆擁有舒適人生。", image: "petiteoyster.jpg", isVisited: false),
            Restaurant(name: "GAP", type: "Fashion Store", location: "台北市信義區松壽路12號", phone: "(02)7737-9668", summary: "1969年，GAP的創始人當勞‧費雪正在美國加州的一家時裝店裏，挑選適合自己的牛仔褲。 可是選來選去都找不到一條合適的。 在這種動力的驅使下，當勞‧費雪創造了這一美國歷史性品牌---GAP。", image: "forkeerestaurant.jpg", isVisited: false),
            Restaurant(name: "GU", type: "Fashion Store", location: "G/F, 62 Po Hing Fong, Sheung Wan, Hong Kong", phone: "234-834322", summary: "A boutique bakery focusing on artisan breads and pastries paired with inspiration from Japan and Scandinavia. We are crazy about bread and excited to share our artisan bakes with you. We open at 10 every morning, and close at 7 PM.", image: "posatelier.jpg", isVisited: false),
            Restaurant(name: "ZARA", type: "Fashion Store", location: "633 Bourke St Sydney New South Wales 2010 Surry Hills", phone: "982-434343", summary: "We make everything by hand with the best possible ingredients, from organic sourdoughs to pastries and cakes. A combination of great produce, good strong coffee, artisanal skill and hard work creates the honest, soulful, delectable bites that have made Bourke Street Bakery famous. Visit us at one of our many Sydney locations!", image: "bourkestreetbakery.jpg", isVisited: false),
            Restaurant(name: "H&M", type: "Fashion Store", location: "412-414 George St Sydney New South Wales", phone: "734-232323", summary: "Haigh's Chocolates is Australia's oldest family owned chocolate maker. We have been making chocolate in Adelaide, South Australia since 1915 and we are committed to the art of premium chocolate making from the cocoa bean. Our chocolates are always presented to perfection in our own retail stores. Visit any one of them and you'll find chocolate tasting, gift wrapping and personalised attention are all part of the service.", image: "haighschocolate.jpg", isVisited: false),
            
        ]
        
        var restaurant: RestaurantMO!
        
        if let appDelegate = (UIApplication.shared.delegate as? AppDelegate) {
            for i in 0..<sourceArray.count {
                restaurant = RestaurantMO(context: appDelegate.persistentContainer.viewContext)
                restaurant.name = sourceArray[i].name
                restaurant.type = sourceArray[i].type
                restaurant.location = sourceArray[i].location
                restaurant.phone = sourceArray[i].phone
                restaurant.summary = sourceArray[i].summary
                restaurant.isVisited = false
                restaurant.rating = nil
                restaurant.image = UIImage(named: sourceArray[i].image)!.pngData()
            }
            appDelegate.saveContext() //write once for all new restauranrs
        }
    }
    
}

