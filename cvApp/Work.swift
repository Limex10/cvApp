//
//  Work.swift
//  cvApp
//
//  Created by Emil Persson on 2019-11-05.
//  Copyright © 2019 Emil Persson. All rights reserved.
//
import UIKit
import Foundation

class Work {
    
    var image: UIImage?
    var title: String
    var date: String
    
    init(image: UIImage?, title: String, date: String) {
        self.image = image
        self.title = title
        self.date = date
    }
    
}
