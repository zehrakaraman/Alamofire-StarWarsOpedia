//
//  UIViewController+Extension.swift
//  Alamofire-StarWarsOpedia
//
//  Created by Zehra on 4.10.2022.
//

import UIKit

extension UIViewController {
    
    func navigationBarImage() {
        let navigationContoller = navigationController!
        let image = UIImage(named: "StarWars")
        
        let bannerWidth = navigationContoller.navigationBar.frame.size.width
        let bannerHeight = navigationContoller.navigationBar.frame.size.height
        
        let bannerX = bannerWidth / 2 - (((image?.size.width)!)) / 2
        let bannerY = bannerHeight / 2 - ((image?.size.height)!) / 2
        
        let imageView = UIImageView(frame: CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight))
        imageView.contentMode = .scaleAspectFit
        imageView.image = image
        
        navigationItem.titleView = imageView
    }
}
