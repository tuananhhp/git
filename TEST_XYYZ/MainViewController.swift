//
//  ViewController.swift
//  TEST_XYYZ
//
//  Created by Tuan Anh on 2/26/20.
//  Copyright © 2020 Tuan Anh. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var oneImageButton: UIButton!
    @IBOutlet weak var twoImageButton: UIButton!
    @IBOutlet weak var threeImageButton: UIButton!
    var imageOneNames: [String] = ["ic_bao","ic_bua","ic_keo"]
    override func viewDidLoad() {
        super.viewDidLoad()
        getIndexForImageButton()
    }
    
    func getIndexForImageButton(){
        for index in 0..<3{
            if index == 0{
                oneImageButton.setImage(UIImage(named: imageOneNames[index]), for: .normal)
            } else if index == 1{
                twoImageButton.setImage(UIImage(named: imageOneNames[index]), for: .normal)
            } else{
                threeImageButton.setImage(UIImage(named: imageOneNames[index]), for: .normal)
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    @IBAction func transactionOne(){
        let resultVC = ResultViewController()
        resultVC.hidesBottomBarWhenPushed = true
        resultVC.index = 0
        navigationController?.pushViewController(resultVC, animated: true)
    }
    
    @IBAction func transactionTwo(){
        let resultVC = ResultViewController()
        resultVC.hidesBottomBarWhenPushed = true
        resultVC.index = 1
        navigationController?.pushViewController(resultVC, animated: true)
    }
    
    @IBAction func transactionThree(){
        let resultVC = ResultViewController()
        resultVC.hidesBottomBarWhenPushed = true
        resultVC.index = 2
        navigationController?.pushViewController(resultVC, animated: true)
    }
}

