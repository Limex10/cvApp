//
//  SkillsViewController.swift
//  cvApp
//
//  Created by Emil Persson on 2019-11-04.
//  Copyright © 2019 Emil Persson. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {
    @IBOutlet weak var heartImageView: UIImageView!
    @IBOutlet weak var ryuImageView: UIImageView!
    
    var heartImages: [UIImage] = []
    var ryuImages: [UIImage] = []
    
    let backgroundImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
        heartImages = createImageArray(total: 24, imagePrefix: "heart")
        ryuImages = createImageArray(total: 7, imagePrefix: "ryu")
        // Do any additional setup after loading the view.
    }
    
    func createImageArray(total: Int, imagePrefix: String) -> [UIImage] {
        
        var imageArray: [UIImage] = []
        
        for imageCount in 0..<total {
            let imageName = "\(imagePrefix)-\(imageCount).png"
            let image = UIImage(named: imageName)!
            
            imageArray.append(image)
        }
        
        return imageArray
    }
    
    func animate(imageView: UIImageView, images: [UIImage]){
        imageView.animationImages = images
        imageView.animationDuration = 1.0
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }
    
    func setBackground() {
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        backgroundImageView.image = UIImage(named: "background")
        view.sendSubviewToBack(backgroundImageView)
    }

    @IBAction func likeButtonTapped(_ sender: Any) {
        animate(imageView: heartImageView, images: heartImages)
    }
    
    @IBAction func ryuButtonTapped(_ sender: Any) {
        animate(imageView: ryuImageView, images: ryuImages)
    }
    
    @IBAction func dismissButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
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
