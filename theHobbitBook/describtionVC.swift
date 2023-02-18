//
//  describtionVC.swift
//  theHobbitBook
//
//  Created by Ragıb Gormez on 18.02.2023.
//

import UIKit

class describtionVC: UIViewController {

    
    @IBOutlet weak var characterImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var raceLabel: UILabel!
    @IBOutlet weak var decribtionLabel: UILabel!
    
    var selectedCharacter : Characters?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let nameOfSelectedChar = selectedCharacter?.name {
            nameLabel.text = "Name: \(nameOfSelectedChar)"
        }
        if let raceOfSelectedChar = selectedCharacter?.race {
            raceLabel.text = "Race: \(raceOfSelectedChar)"
        }
        decribtionLabel.text = selectedCharacter?.describtion
        characterImageView.image = selectedCharacter?.image

       
    }
    


    
}
