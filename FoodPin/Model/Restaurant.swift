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
            Restaurant(name: "NET", type: "Fashion Store", location: "106071台北市大安區忠孝東路四段59號61號", phone: "(02)2721-4817", summary: "NET 以歐美休閒風格為基調，推出各個年齡層顧客都需要的商品，期待讓一家人都能找到適合自己的服飾，用「全家人的品牌」做為訴求以與一般平價服飾品牌產生市場區隔。", image: "teakha.jpg", isVisited: false),
            Restaurant(name: "50% FIFTY PERCENT", type: "Fashion Store", location: "108台北市萬華區漢中街41-1號", phone: "（02)2382-5188", summary: "A Philosophy Let's dress up in chic style of youth. Making the vogue which easy to obtain.Catalyst Always stick to the fashion.Personality Have fun making my own costumes.Vision The campaign to spread the vogue of youth could make fans more self-confidence and charming.", image: "cafeloisl.jpg", isVisited: false),
            Restaurant(name: "UNIQLO", type: "Fashion Store", location: "10444 台北市中山區南京西路15號6F", phone: "(02)2522-2801", summary:"源於日本價值之簡約風格、優越品質、經典品味，我們與時俱進、汲取時代靈感，以優雅的現代風尚，演繹出你的品味生活。精益求精的完美單品，簡約設計，低調藏著貼心的細節。精緻合身的剪裁與質感，讓每個人都輕鬆擁有舒適人生。", image: "petiteoyster.jpg", isVisited: false),
            Restaurant(name: "GAP", type: "Fashion Store", location: "台北市信義區松壽路12號", phone: "(02)7737-9668", summary: "1969年，GAP的創始人當勞‧費雪正在美國加州的一家時裝店裏，挑選適合自己的牛仔褲。 可是選來選去都找不到一條合適的。 在這種動力的驅使下，當勞‧費雪創造了這一美國歷史性品牌---GAP。", image: "forkeerestaurant.jpg", isVisited: false),
            Restaurant(name: "GU", type: "Fashion Store", location: "台北市南港區忠孝東路七段369號5樓", phone: "(02)2783-6456", summary: "來自東京最新潮流時尚。GU就是現在！代表東京時尚態度！將全球流行趨勢以東京潮流風格呈現友善的價格，讓人隨心所欲盡情享受自由穿搭，滿足了年輕人熱愛時尚的想像，藉由WERA TOKYO NOW宣言將自由時尚能量，帶給所有人。", image: "posatelier.jpg", isVisited: false),
            Restaurant(name: "ZARA", type: "Fashion Store", location: "06台北市大安區忠孝東路四段201號", phone: "(02)2778-5080", summary: "Zara 是最重要的國際化時裝公司之一。屬於Inditex，世界上最大的經銷集團之一。我們通過自有商店網路將設計、製造、配送和銷售整合在一起，形成了獨特的商業模式，而客戶是這一模式的中心。", image: "bourkestreetbakery.jpg", isVisited: false),
            Restaurant(name: "H&M", type: "Fashion Store", location: "108台北市萬華區漢中街116號", phone: "(02)7726-6666", summary: "We are a family of brands, driven by our desire to make great design available to everyone in a sustainable way. Together we offer fashion, design and services, that enable people to be inspired and to express their own personal style, making it easier to live in a more circular way.", image: "haighschocolate.jpg", isVisited: false),
            
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

