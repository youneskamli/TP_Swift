//
//  EntryViewController.swift
//  TP_Kamli
//
//  Created by Younes Kamli on 09/12/2022.
//

import UIKit

class EntryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
                // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        data!.nom = nomTache.text!
        data!.description = detailTache.text!
        return true
    }
    
    
    @IBOutlet weak var nomTache: UITextField!
    
    @IBOutlet weak var detailTache: UITextField!
    

    @IBOutlet weak var dateTache: UIDatePicker!
    
    var data : Todo?
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        data = Todo(nom: nomTache.text!, description: detailTache.text!, date: dateTache.date)
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
