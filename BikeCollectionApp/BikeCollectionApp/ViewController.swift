//
//  ViewController.swift
//  BikeCollectionApp
//
//  Created by Lukas Weber on 22.06.21.
//  Copyright © 2021 Lukas Weber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = URL(string: "http://markusmaurer.at/fhj/bikes.json")
        
        let urlSession = URLSession.shared
        
        let task = urlSession.dataTask(with: url!) {(data, response, error) in
            
        }
        
        task.resume()
        
    }


}

