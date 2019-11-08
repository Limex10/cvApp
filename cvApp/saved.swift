//
//  ExperienceViewController.swift
//  cvApp
//
//  Created by Emil Persson on 2019-10-30.
//  Copyright © 2019 Emil Persson. All rights reserved.
//
/*
import UIKit

class ExperienceViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var works: [Work] = []
    var educations: [Education] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        works = createArrayWork()
        educations = createArrayEducation()
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
         return 2
     }
     
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "header"
        return label
    }
    
    func createArrayWork() -> [Work] {
        
        var tempWorks: [Work] = []
        
        let work01 = Work(image: UIImage(named: "workOne"), title: "workOne", date: "2005-2007")
        let work02 = Work(image: UIImage(named: "workTwo"), title: "workTwo", date: "2009-2010")
        let work03 = Work(image: UIImage(named: "workThree"), title: "workThree", date: "2014-2015")
        

        
        tempWorks.append(work01)
        tempWorks.append(work02)
        tempWorks.append(work03)
        
        return tempWorks
        
    }
    func createArrayEducation() -> [Education] {
        
        var tempEducation: [Education] = []
        
        let education01 = Education(image: UIImage(named: "workOne"), title: "educationOne", date: "2005-2007")
        let education02 = Education(image: UIImage(named: "workTwo"), title: "educationTwo", date: "2009-2010")

        
        tempEducation.append(education01)
        tempEducation.append(education02)
     
        
        return tempEducation
        
    }
 

}

extension ExperienceViewController: UITableViewDataSource, UITableViewDelegate{
    
 
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return works.count
        }
        return educations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let work = works[indexPath.row]
        //let education = educations[indexPath.row]
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "WorkCell") as! ExperienceViewCell
        
        
        //cell.setWork(work: work)
        //cell.setEducation(education: education)
        
        return cell
    }
    
}*/
