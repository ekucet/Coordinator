//
//  Storyboarded.swift
//  Coordinator
//
//  Created by Erkam Kucet on 13.02.2019.
//  Copyright © 2019 Erkam Kucet. All rights reserved.
//

import UIKit

protocol Stroyboarded {
    static func instantiate() -> Self
}

extension Stroyboarded where Self: UIViewController{
    static func instantiate() -> Self{
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
