//
//  DeteilViewController.swift
//  UITeble
//
//  Created by Kaznacheev on 20.10.2021.
//

import UIKit

class DeteilViewController: UIViewController {

    @IBOutlet weak var imegesDeteil: UIImageView!
    @IBOutlet weak var titleDeteil: UILabel!
    
    var nameTreack = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        imegesDeteil.image = UIImage(named: nameTreack)
        titleDeteil.text = nameTreack
        
    }
}
