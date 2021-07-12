//
//  DetailVC.swift
//  SimpsonBook
//
//  Created by Sinan Kulen on 22.05.2021.
//

import UIKit

class DetailVC: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpsonName = ""
    var selectedSimpsonJob = ""
    var selectedSimpsonImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectedSimpsonName
        jobLabel.text = selectedSimpsonJob
        imageView.image = selectedSimpsonImage
       
    }
    


}
