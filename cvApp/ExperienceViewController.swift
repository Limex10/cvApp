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

    override func viewDidLoad() {
        super.viewDidLoad()
        works = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    func createArray() -> [Work] {
        
        var tempWorks: [Work] = []
        
        let work01 = Work(image: UIImage(named: "workOne"), title: "workOne", date: "2005-2007")
        let work02 = Work(image: UIImage(named: "workTwo"), title: "workOne", date: "2009-2010")
        let work03 = Work(image: UIImage(named: "workThree"), title: "workOne", date: "2014-2015")
        

        
        tempWorks.append(work01)
        tempWorks.append(work02)
        tempWorks.append(work03)
        
        return tempWorks
        
    }
 

}

extension ExperienceViewController: UITableViewDataSource, UITableViewDelegate{
    
    
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return works.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let work = works[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "WorkCell") as! ExperienceViewCell
        
        cell.setWork(work: work)
        
        return cell
    }
    
}
