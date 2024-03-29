//
//  ExperienceViewController.swift
//  cvApp
//
//  Created by Emil Persson on 2019-10-30.
//  Copyright © 2019 Emil Persson. All rights reserved.
//

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
        if section == 0{
            label.text = "Works"
        }else{
            label.text = "Educations"
        }
        
        return label
    }
    
    func createArrayWork() -> [Work] {
        
        var tempWorks: [Work] = []
        
        let work01 = Work(image: UIImage(named: "workOne"), title: "workOne", date: "2005-2007",description:  "Saab")
        let work02 = Work(image: UIImage(named: "workTwo"), title: "workTwo", date: "2009-2010", description:  "Biltema")
        let work03 = Work(image: UIImage(named: "workThree"), title: "workThree", date: "2014-2015", description:"Tempo")
        

        
        tempWorks.append(work01)
        tempWorks.append(work02)
        tempWorks.append(work03)
        
        return tempWorks
        
    }
    func createArrayEducation() -> [Education] {
        
        var tempEducation: [Education] = []
        
        let education01 = Education(image: UIImage(named: "workOne"), title: "educationOne", date: "2005-2007", description: "Erikdahlbergs gymnasiet")
        let education02 = Education(image: UIImage(named: "workTwo"), title: "educationTwo", date: "2009-2010", description: "Jonkpoings university")

        
        tempEducation.append(education01)
        tempEducation.append(education02)
     
        
        return tempEducation
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destVC = segue.destination as? ExperienceDetailViewController {
            if let work = sender as? Work {
                destVC.work = work
            }
            else if let education = sender as? Education {
                destVC.education = education
            }
            

        }
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "WorkCell") as! ExperienceViewCell
        if indexPath.section == 0{
            let work = works[indexPath.row]
            cell.setWork(work: work)
            
        }else{
            let education = educations[indexPath.row]
            cell.setEducation(educations: education)
        }

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0{
            let work = works[indexPath.row]
            performSegue(withIdentifier: "MasterToDetail", sender: work)
        }else {
            let education = educations[indexPath.row]
            performSegue(withIdentifier: "MasterToDetail", sender: education)
        }

    }
    
}
