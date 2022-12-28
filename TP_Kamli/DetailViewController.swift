//
//  DetailViewController.swift
//  TP_Kamli
//
//  Created by Younes Kamli on 15/12/2022.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        if let test = data {
            nomTache.text = test.nom
            descriptionLabel.text = test.description
            dateLabel.text = dateFormatter.string(from: test.date)
            changement.setOn(data!.status, animated: true)
        }
        else {
            nomTache.text = "NomTache"
            descriptionLabel.text = "Description"
        }

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var nomTache: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    var data:Todo?
    
    let dateFormatter = DateFormatter()
    
    @IBOutlet weak var changement: UISwitch!
    
    @IBAction func statusSwitch(_ sender: UISwitch) {
        data?.status = !data!.status
    }
        
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        data = Todo(nom: nomTache.text!, description: descriptionLabel.text!)
    }*/
    
}
