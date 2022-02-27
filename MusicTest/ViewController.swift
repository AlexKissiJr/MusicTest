//
//  ViewController.swift
//  MusicTest
//
//  Created by Alexander Kissi Jr on 2/26/22.
//

import UIKit

class ViewController: UIViewController {
    var bGrayBlue:Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBlue
        let btn = UIButton()
        btn.frame = CGRect(x: 0, y: 0, width: 300, height: 500)
        btn.center = view.center
        btn.setTitle("Tap", for: .normal)
        btn.addTarget(self, action: #selector(btnPressed), for: .touchUpInside)
        view.addSubview(btn)
    }
}

extension ViewController {
    @objc func btnPressed(sender:UIButton){
        DispatchQueue.main.async {
            switch self.bGrayBlue {
            case true:
                self.view.backgroundColor = .systemGray
                self.bGrayBlue = false
            case false:
                self.view.backgroundColor = .systemBlue
                self.bGrayBlue = true
            }
        }
    }
}
