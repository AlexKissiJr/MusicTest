//
//  ViewController.swift
//  MusicTest
//
//  Created by Alexander Kissi Jr on 2/26/22.
//

import UIKit

class ViewController: UIViewController {

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
        print("Pressed")
    }
}
