//
//  ViewController.swift
//  MagicEightBall
//
//  Created by alex on 2/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties

    let jobs = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"]
    
    let categories = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"]

    @IBOutlet weak var shakeButton: UIButton!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func shakeButtonTapped(_ sender: UIButton) {
        generateJob()
        generateCategory()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
        generateJob()
        generateCategory()
    }
    
    func generateJob() {
        let randomIndex = Int.random(in: 0..<jobs.count)
        
        jobLabel.text = jobs[randomIndex]
    }
    
    func generateCategory() {
        let randomIndex = Int.random(in: 0..<categories.count)

        categoryLabel.text = categories[randomIndex]
    }
}

