
//
//  ViewController.swift
//  CryptoNewsApi
//
//  Created by enamakel on 06/22/2018.
//  Copyright (c) 2018 enamakel. All rights reserved.
//

import UIKit
import CryptoNewsApi


class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let api = CryptoControlApi(apiKey: "API_KEY_HERE")
        
        api.getTopNews { (error, articles) in
            if (error == CCErrors.invalidAPIKey) {
                print("bad api key")
            }
            
            print(articles?.count)
        }
        
        api.getTopNewsByCategory { (error, categories) in
            print(categories?.analysis.count)
        }
    }
}
