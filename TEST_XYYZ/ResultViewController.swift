//
//  ResultViewController.swift
//  TEST_XYYZ
//
//  Created by Tuan Anh on 2/26/20.
//  Copyright © 2020 Tuan Anh. All rights reserved.
//

import UIKit

enum statusDifferent: Int {
    case leaf = 0
    case hammer = 1
    case scissors = 2
}

class ResultViewController: UIViewController {
    @IBOutlet weak var displayImage: UIImageView!
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var reportLabel: UILabel!
    var imageTwoNames: [String] = ["ic_bao","ic_bua","ic_keo"]
    var imageResultNames: [String] = ["rs_bao","rs_bua","rs_keo"]
    var index: Int = -1
    let imageProvider = ImageProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayResult()
    }
    
    func displayResult(){
        let a = imageProvider.randomFact()
        displayImage.image = UIImage(named: imageTwoNames[index])
        resultImage.image = UIImage(named: imageResultNames[a])
        
        if index == a{
            reportLabel.text = "Bạn hoà!"
        } else{
            if ((index == 0) && (a == 2)) || ((index == 1) && ( a == 0)) || ((index == 2)&&( a == 1)){
                reportLabel.text = "Bạn thua!"
            } else{
                reportLabel.text = "Bạn thắng!"
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
