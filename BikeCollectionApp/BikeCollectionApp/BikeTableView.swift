//
//  BikeTableView.swift
//  BikeCollectionApp
//
//  Created by Lukas Weber on 22.06.21.
//  Copyright © 2021 Lukas Weber. All rights reserved.
//

import UIKit
import Foundation

class BikeTableView: UITableViewController {
    
    let bikes = Bikes.allCountries
    
    override func viewDidLoad() {
        
        let url = URL(string: "http://markusmaurer.at/fhj/bikes.json")!
        
        let urlSession = URLSession.shared
        
        let task = urlSession.dataTask(with: url) {(data, response, error) in
            
        }
        
        task.resume()
        
    }
  
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bikes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BikeCell", for: indexPath)

        let bike = self.bikes[indexPath.row]
        cell.textLabel?.text = bike.name

        return cell
    }
    

    
}
