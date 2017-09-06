//
//  ViewController.swift
//  UIPresentationController-sample
//
//  Created by Nofel Mahmood on 05/09/2017.
//  Copyright © 2017 nineish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let cities = ["Islamabad", "Rawalpindi", "Lahore", "Cologne", "Dusseldorf", "Munich", "Berlin"]
    @IBOutlet var tableView: UITableView!
    
    var slideInTransitioningDelegate: SlideInPresentationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDetail" {
            let destination = segue.destination as! DetailViewController
            slideInTransitioningDelegate = SlideInPresentationManager(presentedViewController: segue.source, presenting: segue.destination)
            slideInTransitioningDelegate.direction = .left
            destination.transitioningDelegate = slideInTransitioningDelegate
            destination.modalPresentationStyle = .custom
        }
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        let customCell = cell as! CustomTableViewCell
        let city = cities[indexPath.row]
        customCell.nameLabel.text = city
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ShowDetail", sender: self)
    }
}
