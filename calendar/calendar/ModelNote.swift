//
//  ModelNote.swift
//  calendar
//
//  Created by Андрей Антонов on 15.03.2021.
//  Copyright © 2021 Aspire. All rights reserved.
//

import Foundation
import UIKit

var ToDoItems = [Note]()

struct Note {

    var id : Int
    var startTime = Date()
    var finishTime = Date()
    var name : String
    var description : String
    
    func ToDoList(response: String) -> [Note] {
        print("Starting to parse the file")
        let data = Data(response.utf8)
        do {
            let myJson = try JSONSerialization.jsonObject(with: data) as! [[String: AnyObject]]

            for item in myJson {
                let id = item["id"] as! Int
                let startTime = item["startTime"] as! Date
                let finishTime = item["finishTime"] as! Date
                let name = item["name"] as! String
                let descrption = item["description"] as! String
                let ToDoitems = Note(id: id, startTime: startTime, finishTime: finishTime, name: name, description: descrption)
                ToDoItems.append(ToDoitems)
            }
        }
        catch {
            print("Error", error)
        }
        return ToDoItems
    }
   
}
