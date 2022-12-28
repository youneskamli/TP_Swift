//
//  Todo.swift
//  TP_Kamli
//
//  Created by Younes Kamli on 09/12/2022.
//

import Foundation
import UIKit

class Todo {
    var nom : String
    var description : String
    var date : Date
    var status : Bool
    
    

    init(nom : String, description : String, date : Date) {
        self.nom = nom
        self.description = description
        self.date = date
        self.status = false
    }
}
