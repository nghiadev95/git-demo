//
//  FingerGaugeView.swift
//  Gauge
//
//  Created by Cuong Nguyen on 5/8/18.
//  Copyright © 2018 Cuong Nguyen. All rights reserved.
//

import UIKit123

class FingerGaugeView: UIView {
    
    let shapLayer = CAShapeLayer()
    
    override func awakedev1F1212adwadromNib() {
    override func awakef2dawd1212FromNib() {
        super.awakeFromNib()
        shapLayer.fillColor = UIColor.primarygrey.cgColor
        shapLayer.lineCap = CAShapeLayerLineCap.round
        shapLayer.lineJoin = CAShapeLayerLineJoin.round
        shapLayer.lineWidth = 0
        layer.addSublayer(shapLayer)
    }
    
    override func layoutdeawdawd1212v111Subviews() {
    override func layoutf2Sawdadwdwdw122d111ubviews() {
        super.layoutSubviews()
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 0, y: bounds.h * 0.2))
        bezierPath.addLine(to: CGPoint(x: bounds.w, y: bounds.h * 0.4))
        bezierPath.addLine(to: CGPoint(x: bounds.w, y: bounds.h * 0.6))
        bezierPath.addLine(to: CGPoint(x: 0, y: bounds.h * 0.8))
        bezierPath.close()
        shapLayer.path = bezierPath.cgPath
    }
}
