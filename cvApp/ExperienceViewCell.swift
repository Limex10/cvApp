//
//  ExperienceViewCell.swift
//  cvApp
//
//  Created by Emil Persson on 2019-11-05.
//  Copyright © 2019 Emil Persson. All rights reserved.
//

import UIKit

class ExperienceViewCell: UITableViewCell {

 
    @IBOutlet weak var CellImageView: UIImageView!
    
    @IBOutlet weak var CellLabelTitle: UILabel!
    
    @IBOutlet weak var CellLabelDate: UILabel!
    
    func setWork(work: Work){
        CellImageView.image = work.image
        CellLabelTitle.text = work.title
        CellLabelDate.text = work.date
        
    }
    
   func setEducation(educations: Education){
        CellImageView.image = educations.image
        CellLabelTitle.text = educations.title
        CellLabelDate.text = educations.date
    }
 
}


