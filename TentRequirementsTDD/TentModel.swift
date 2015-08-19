//
//  TentModel.swift
//  TentRequirementsTDD
//
//  Created by Daniel Garcia on 8/19/15.
//  Copyright (c) 2015 Daniel Garcia. All rights reserved.
//

import Foundation


class TentModel: NSObject {
    let length : Int
    
    /* For when I get Swift 2
    enum TentInputError : ErrorType {
        case InputNotMultipleOfTen
    }
    */
    
    init(newLenght : Int) {
        length = newLenght - (newLenght % 10) // to make sure it is a multiple of 10
    }
    
    func threeT() -> Int {
        return 6
    }
    
    func fourT() -> Int {
        return (length == 10) ? 3 : ((length / 10) - 1) * 3
    }
    
    func tenFeet() -> Int {
        if ( length == 10 ) {
            return 6
        }
        var straight = (length / 10) * 3
        var across = ((length / 10) + 1) * 2
        return straight + across
    }
    
    func eightFeet() -> Int {
        return (length == 10) ? 6 : ((length / 10) + 1) * 2
    }
    
    func sixFeet() -> Int {
        return (length == 10) ? 6 : 0
    }
    
    func lamps() -> Int {
        return (length == 10) ? 1 : (length / 20)
    }
}

/*
if let label = self.detailDescriptionLabel {
label.text = "\(width)"
}
*/