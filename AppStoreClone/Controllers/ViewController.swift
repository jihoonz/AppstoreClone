//
//  ViewController.swift
//  AppStoreClone
//
//  Created by Ji.finup on 2021/09/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let api = SearchApi.init(word: "카카오톡")
        
        print("==============================================")
        print(api.requestURL)
        print("==============================================\r\n")
        
        ApiRequestor<AppItem>(api: api).request() { (result) in
            switch result {
            case .success(let data):
                print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-")
                print("Search Api Success")
                print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-")
                print(data as Any)
            case .failure(let error):
                print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-")
                print("Search Api Error")
                print("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-")
                print(error)
            }
        }
    }
}
