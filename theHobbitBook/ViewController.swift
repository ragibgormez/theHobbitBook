//
//  ViewController.swift
//  theHobbitBook
//
//  Created by Ragıb Gormez on 18.02.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var myHobbitCharacters = [Characters]()
    var choosenCharacter : Characters?
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        //HobbitCharacters
        let bilbo = Characters(name: "Bilbo Bagging", race: "Hobbit", describtion: "The hero of the story. Bilbo is a hobbit, “a short, human-like person.” Commonsensical and fastidious, Bilbo leads a quiet life in his comfortable hole at Bag End and, like most hobbits, is content to stay at home. But Bilbo possesses a great deal of untapped inner strength, and when the wizard Gandalf persuades Bilbo to join a group of dwarves on a quest to reclaim their gold from a marauding dragon, Bilbo ends up playing a crucial role as the company’s burglar. Bilbo’s adventures awaken his courage and initiative and prove his relentless ability to do what needs to be done.", image: .init(named: "bilbo")!)
        let gandalf = Characters(name: "Gandalf", race: "istari", describtion: "A wise old wizard who always seems to know more than he reveals. Gandalf has a vast command of magic and tends to show up at just the moment he is needed most. Though he helps the dwarves in their quest (not least by making Bilbo go along with them), he does not seem to have any interest in their gold. He always has another purpose or plan in mind, but he rarely reveals his private thoughts.", image: .init(named: "gandalf")!)
        let thorin = Characters(name: "Thorin Oakenshield", race: "Dwarf", describtion: "A dwarf who leads his fellow dwarves on a trip to the Lonely Mountain to reclaim their treasure from Smaug. Smaug’s bounty is Thorin’s inheritance, as it belonged to Thror, Thorin’s grandfather, the great King under the Mountain. Thorin is a proud, purposeful, and sturdy warrior, if a bit stubborn at times. As the novel progresses, his inability to formulate successful plans, his greed, and his reliance on Bilbo to save him at every turn make Thorin a somewhat unappealing figure, but he is partly redeemed by the remorse he shows before he dies.", image: .init(named: "thorin")!)
        let elrond = Characters(name: "Elrond", race: "Elf", describtion: "The great leader of the elves at Rivendell. Elrond gives Bilbo’s group aid and helpful advice when they pass through Rivendell early in the novel. He is described in Chapter 3 as being “as strong as a warrior, as wise as a wizard, as venerable as a king of dwarves, and as kind as summer.”", image: .init(named: "elrond")!)
        let thranduil = Characters(name: "Thranduil", race: "Elf", describtion: "Thranduil, son of Oropher, was an Elven king who ruled over the Woodland Realm in the Third Age. Though inherently cautious, his army was key to victory in the Battle of Five Armies and he defended his realm against the forces of Sauron in the War of the Ring. He was the father of the Elven prince of Mirkwood, Legolas, who was a member of the Fellowship of the Ring.", image: .init(named: "thranduil")!)
        let gollum = Characters(name: "Gollum", race: "Hobbit", describtion: "A strange, small, slimy creature who lives deep in the caves of Moria beneath the Misty Mountains. There, Gollum broods over his “precious,” a magic ring, until he accidentally loses it and Bilbo finds it. We never learn exactly what kind of creature he is. Apparently, his true shape has been too deformed by years of living in darkness to be recognizable.", image: .init(named: "gollum")!)
        let smaug = Characters(name: "Smaug", race: "Dragon", describtion: "The great dragon who lives in the Lonely Mountain. Years ago, Smaug heard of the treasure that the dwarves had amassed in the mountain under Thror’s reign, and he drove them away to claim the gold for himself. His flaming breath can scorch a city, his huge wings can carry him great distances, and his armorlike hide is almost impenetrable. Smaug can speak and possesses a dark, sardonic sense of humor.", image: .init(named: "smaug")!)
        let beorn = Characters(name: "Beorn", race: "skin - changer", describtion: "A man who can turn into a bear, Beorn helps Bilbo and the dwarves after their escape from the goblins.", image: .init(named: "beorn")!)
        
        myHobbitCharacters.append(bilbo)
        myHobbitCharacters.append(gandalf)
        myHobbitCharacters.append(thorin)
        myHobbitCharacters.append(elrond)
        myHobbitCharacters.append(thranduil)
        myHobbitCharacters.append(gollum)
        myHobbitCharacters.append(smaug)
        myHobbitCharacters.append(beorn)
        
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myHobbitCharacters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = myHobbitCharacters[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenCharacter = myHobbitCharacters[indexPath.row]
        self.performSegue(withIdentifier: "toDescribtionVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDescribtionVC" {
            let destinationVC = segue.destination as! describtionVC
            destinationVC.selectedCharacter = choosenCharacter
        }
    }


    
    
}

