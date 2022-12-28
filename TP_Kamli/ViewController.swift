//
//  ViewController.swift
//  TP_Kamli
//
//  Created by Younes Kamli on 09/12/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myTableViewCell
        cell.myLabel.text = myData[indexPath.row].nom
        if myData[indexPath.row].status {
            cell.accessoryType = UITableViewCell.AccessoryType.checkmark
        }
        else{
            cell.accessoryType = UITableViewCell.AccessoryType.none
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let configuration = UISwipeActionsConfiguration(actions: [UIContextualAction(style: .destructive, title: "Delete", handler: {(action, view, completionHandler) in
            let row = indexPath.row
            self.myData.remove(at: row)
            completionHandler(true)
            tableView.reloadData()
        })
        ])
        return configuration
    }
    
    
    var myData = [Todo]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        myTableView.dataSource = self
        myTableView.delegate = self
    }
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? DetailViewController {
            let row = myTableView.indexPathForSelectedRow!.row
            vc.data = myData[row]
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
    
    @IBAction func Entry(_ unwindSegue: UIStoryboardSegue) {
        if let vc = unwindSegue.source as? EntryViewController{
            if let todo = vc.data{
                let newTodo = Todo(nom: todo.nom, description: todo.description, date: todo.date)
                myData.append(newTodo)
                myTableView.reloadData()
            
            }
            else{
                print("error")
            }
        }
    }
    

}

