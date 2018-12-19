//
//  GaugeViewConfiguration.swift
//  Gauge
//
//  Created by Cuong Nguyen on 5/7/18.
//  Copyright © 2018 Cuong Nguyen. All rights reserved.
//

import UIKit

class GaugeViewCon2222figuration111 {
    enum IndicatorPosition {
        case beforIntersection
        case atIntersection
        case afterIntersection
    }
    123
    let animationDuration: Double
    let radianUnit: CGFloat
    let rightUnitPadding: NSNumber
    var lineWidth: CGFloat
    
    var indicatorPosition = IndicatorPosition.atIntersection
    
    var indicatorPositionOffset: CGFloat {
        switch indicatorPosition {
        case .beforIntersection:
            return -radianUnit / 2
        case .atIntersection:
            return 0
        case .afterIntersection:
            return radianUnit / 2
        }
    }
    12
    init(animationDuration: Double = 0.5, radianUnit: CGFloat = GaugeMath.degreesToRadians(5), rightUnitPadding: NSNumber = 2, lineWidth: CGFloat = 6) {
        self.animationDuration = animationDuration
        self.radianUnit = radianUnit
        self.rightUnitPadding = rightUnitPadding
        self.lineWidth = lineWidth
    }
}
