//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Sinan Kulen on 22.05.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    let lisa = Simpson(nameInit: "lisa", jobInit: "her student")
    let bart = Simpson(nameInit: "bart", jobInit: "his student")
    let homer = Simpson(nameInit: "homer", jobInit: "father")
    let marj = Simpson(nameInit: "marj", jobInit: "mother")
    let maggie = Simpson(nameInit: "maggie", jobInit: "baby")
    
    var simpsonName = [String]()
    var simpsonJob = [String]()
    var simpsonImage = [UIImage]()
    
    var chosenSimpsonName = ""
    var chosenSimpsonJob = ""
    var chosenSimpsonImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        simpsonName.append(lisa.name)
        simpsonName.append(bart.name)
        simpsonName.append(homer.name)
        simpsonName.append(marj.name)
        simpsonName.append(maggie.name)
        
        simpsonJob.append(lisa.job)
        simpsonJob.append(bart.job)
        simpsonJob.append(homer.job)
        simpsonJob.append(marj.job)
        simpsonJob.append(maggie.job)
        
        simpsonImage.append(UIImage(named: "lisa.jpg")!)
        simpsonImage.append(UIImage(named: "bart.jpg")!)
        simpsonImage.append(UIImage(named: "homer.jpg")!)
        simpsonImage.append(UIImage(named: "marj.jpg")!)
        simpsonImage.append(UIImage(named: "maggie.jpg")!)
        
        navigationItem.title = "Simpson Book"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsonName[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonName.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpsonName = simpsonName[indexPath.row]
        chosenSimpsonJob = simpsonJob[indexPath.row]
        chosenSimpsonImage = simpsonImage[indexPath.row]
        
        performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC"{
            let destinationVC = segue.destination as! DetailVC
            destinationVC.selectedSimpsonName = chosenSimpsonName
            destinationVC.selectedSimpsonJob = chosenSimpsonJob
            destinationVC.selectedSimpsonImage = chosenSimpsonImage
        }
    }

}

