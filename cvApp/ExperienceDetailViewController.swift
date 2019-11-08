//
//  ExperienceDetailViewController.swift
//  cvApp
//
//  Created by Emil Persson on 2019-11-06.
//  Copyright © 2019 Emil Persson. All rights reserved.
//

import UIKit

class ExperienceDetailViewController: UIViewController {

    @IBOutlet weak var DetailedUIImage: UIImageView!
    @IBOutlet weak var DetailedUILabelTitle: UILabel!
    @IBOutlet weak var DetailedUILabelDescrition: UILabel!
    
    var work: Work?
    var education: Education?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if work != nil {
            setUIWork()
        }else{
            setUIEducation()
        }
        
        
        
        // Do any additional setup after loading the view.
    }
    
    func setUIWork() {
        DetailedUIImage.image = work?.image
        DetailedUILabelTitle.text = work?.title
        DetailedUILabelDescrition.text = work?.description
        
    }
    
    func setUIEducation() {
        DetailedUIImage.image = education?.image
        DetailedUILabelTitle.text = education?.title
        DetailedUILabelDescrition.text = education?.description
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
