//
//  Math.swift
//  Extension
//
//  Created by Cuong Nguyen on 5/2/18.
//  Copyright © 2018 Nguyen Van Cuong. All rights reserved.
//

import Foundation
import UIKit

class GaugeMath {
    class func degreesToRadians(_ value: CGFloat) -> CGFloat {
        return value * CGFloat(Double.pi) / 180.0
    }
    
    class func radiansToDegrees(_ value: CGFloat) -> CGFloat {
        return value * 180.0 / CGFloat(Double.pi)
    }
    
    class func edgeLength(ofOpositeRadian opositeRadian: CGFloat, radius: CGFloat) -> CGFloat {
        return sqrt(2 * radius * radius - 2 * radius * radius * cos(opositeRadian))
    }
    
    class func roundUpward(displayedShapeLayersRadian: CGFloat, radianUnit: CGFloat) -> CGFloat {
        guard displayedShapeLayersRadian > 0 else {
            return 0
        }
        guard GaugeMath.radiansToDegrees(displayedShapeLayersRadian).truncatingRemainder(dividingBy: GaugeMath.radiansToDegrees(radianUnit)) != 0 else {
            return displayedShapeLayersRadian
        }
        let redundantRadian = displayedShapeLayersRadian.truncatingRemainder(dividingBy: radianUnit)
        return displayedShapeLayersRadian + (radianUnit - redundantRadian)
    }
}
