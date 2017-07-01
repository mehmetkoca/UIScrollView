//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Mehmet Koca on 30/06/2017.
//  Copyright © 2017 on3. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ViewScroll: UIScrollView!
    var images = [UIImageView]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth : CGFloat = 0.0
        print("scroll width: \(ViewScroll.frame.size.width)")
        let scrollWidth = ViewScroll.frame.size.width
        for x in 0...2{
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            
            contentWidth += newX
            
            ViewScroll.addSubview(imageView)
            imageView.frame = CGRect(x: newX-75, y: (ViewScroll.frame.size.height/2) - 75, width: 150, height: 150)
        }
        
        ViewScroll.clipsToBounds = false
        ViewScroll.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }
}

