//
//  ViewController.swift
//  Test2.2
//
//  Created by 游奕桁 on 2019/10/14.
//  Copyright © 2019 twtstudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var but = [UIButton]()
    let pic = UIImageView(frame: CGRect(x: 110, y: 180, width: 200, height: 200))
    override func viewDidLoad() {
        super.viewDidLoad()
        pic.image = #imageLiteral(resourceName: "IMG_0463")
        view.addSubview(pic)
        
        for i in 0..<9 {
            but.append(UIButton())
            but[i].setImage(#imageLiteral(resourceName: "IMG_0463"), for: .normal)
            but[i].tag = i
            but[i].frame.size.width = 50
            but[i].frame.size.height = 50
            but[i].setTitle("i", for: .normal)
            view.addSubview(but[i])
        }
        
        for j in 0...2 {
            but[j].frame.origin.x = 110
            but[j].frame.origin.y = 440 + (60 * CGFloat(j))
        }
        but[3].frame.origin.x = 50
        but[3].frame.origin.y = 500
        but[4].frame.origin.x = 170
        but[4].frame.origin.y = 500
        for k in 5...6 {
            but[k].frame.origin.x = 250 + (60 * CGFloat(k-5))
            but[k].frame.origin.y = 460
        }
        for l in 7...8 {
            but[l].frame.origin.x = 250 + (60 * CGFloat(l-7))
            but[l].frame.origin.y = 520
        }
        for m in 0..<9 {
            but[m].addTarget(self, action: #selector(method(item:)), for: .touchUpInside)
        }
    }
    
    @objc func method(item: UIButton) {
        UIView.animate(withDuration: 0.4){
        switch item {
        case self.but[0]:
                
            self.pic.transform = self.pic.transform.translatedBy(x: 0, y: -20)
        
        case self.but[1]:
                
            self.pic.transform = CGAffineTransform.identity
        
        case self.but[2]:
                
            self.pic.transform = self.pic.transform.translatedBy(x: 0, y: +20)
            
        case self.but[3]:
            
            self.pic.transform = self.pic.transform.translatedBy(x: -20, y: 0)
            
        case self.but[4]:
            
            self.pic.transform = self.pic.transform.translatedBy(x: +20, y: 0)
            
        case self.but[5]:
            
            self.pic.transform = self.pic.transform.scaledBy(x: 0.8, y: 0.8)
            
        case self.but[6]:
           
            self.pic.transform = self.pic.transform.scaledBy(x: 1.25, y: 1.25)
            
        case self.but[7]:
            
            self.pic.transform = self.pic.transform.rotated(by: CGFloat.pi / 2)
            
        case self.but[8]:
            
            self.pic.transform = self.pic.transform.rotated(by: -CGFloat.pi / 2)
            
        default:
            print("wrong")
        }
        
        
    }
    }
}
