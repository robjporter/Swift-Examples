//
//  MonsterImg.swift
//  myLittleMonster
//
//  Created by roporter on 18/05/2016.
//  Copyright © 2016 roporter. All rights reserved.
//

import Foundation
import UIKit

class ImgMonster: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        playIdleAnimation()
    }
    func playIdleAnimation() {
        var imgArray = [UIImage]()
        self.image = UIImage(named: "idle1.png")
        self.animationImages = nil
        for x in 1...4 {
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!)
        }
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 0
        self.startAnimating()
    }
    func playDeathAnimation() {
        var imgArray = [UIImage]()
        self.image = UIImage(named: "dead5.png")
        self.animationImages = nil
        for x in 1...5 {
            let img = UIImage(named: "dead\(x).png")
            imgArray.append(img!)
        }
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
    }
}