//
//  SubViewController.swift
//  TeamIntroduce
//
//  Created by 전성진 on 5/27/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var JSJImageView: UIImageView!
    @IBOutlet weak var KYHImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        JSJImageView.layer.cornerRadius = JSJImageView.bounds.width / 2
        KYHImageView.layer.cornerRadius = KYHImageView.bounds.width / 2
        print("hello")
        
        for subview in stackView.arrangedSubviews {
            subview.layer.cornerRadius = 10
        }
    }
}
