//
//  ViewController.swift
//  ClosuresFun
//
//  Created by STANISLAV STAJILA on 9/27/23.
//

import UIKit
class ViewController: UIViewController {
    
    let names = ["Chris", "Alex", "Eva", "Barry", "Daniella"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var decending = names.sorted(by: backwords)
        print(decending)
        
        var blah = names.sorted { a, b in
            return a < b
        }
        
        print(blah)
        
        // Does the same as the blah
        var cat = names.sorted {
            $0 < $1
        }
        print(cat)
        
        var chicken = names.sorted(by: >)
        print(chicken)
    }
    
    
    func backwords(x: String, y: String) -> Bool{
        return x > y
    }
    
}
