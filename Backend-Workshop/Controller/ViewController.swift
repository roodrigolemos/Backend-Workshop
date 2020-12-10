//
//  ViewController.swift
//  Backend-Workshop
//
//  Created by Rodrigo Lemos on 02/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var downloadButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
    }
    
    @IBAction func downloadApi(_ sender: Any) {
        Network.shared.getData()
    }
}

extension ViewController {
    
    func setupButton() {
        downloadButton.backgroundColor = .clear
        downloadButton.layer.cornerRadius = 5
        downloadButton.layer.borderWidth = 2
        downloadButton.layer.borderColor = UIColor.yellow.cgColor
        downloadButton.contentEdgeInsets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
}
