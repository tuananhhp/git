//
//  ImageProvider.swift
//  TEST_XYYZ
//
//  Created by Tuan Anh on 2/26/20.
//  Copyright © 2020 Tuan Anh. All rights reserved.
//

import Foundation
import UIKit
import GameKit

struct ImageProvider {
    //let images = ["rs_bao","rs_bua","rs_keo"]
    let indexImage: [Int] = [0,1,2]
    func randomFact() -> Int{
        let randomImage = GKRandomSource.sharedRandom().nextInt(upperBound: indexImage.count)
        return indexImage[randomImage]
    }
}
