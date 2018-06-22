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
        
        let api = CryptoControlApi(apiKey: "API_KEY_GOES_HERE")
        
        api.getTopNews { (error, articles) in
            if (error == CCErrors.invalidAPIKey) {
                print("bad api key")
            }
            
            print("got \(articles!.count) articles")
        }
        
        api.getTopNewsByCoin(coin: "eos") { (error, articles) in
            print("got \(articles!.count) articles for EOS")
        }
        
        api.getTopRedditPostsByCoin(coin: "bitcoin") { (error, redditItems) in
            print("got \(redditItems!.count) reddit posts for bitcoin")
        }
        
        api.getLatestTweetsByCoin(coin: "ethereum") { (error, tweets) in
            print("got \(tweets!.count) tweets posts for ethereum")
        }
        
        api.getLatestFeedByCoin(coin: "ethereum") { (error, feed) in
            print("got \(feed!.count) tweets posts for ethereum")
        }
    }
}
