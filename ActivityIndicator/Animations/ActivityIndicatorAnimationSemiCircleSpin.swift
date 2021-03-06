//
//  ActivityIndicatorAnimationSemiCircleSpin.swift
//  ActivityIndicatorViewDemo
//
//  Created by Nguyen Vinh on 7/27/15.
//  Copyright (c) 2015 Nguyen Vinh. All rights reserved.
//

import Foundation

class ActivityIndicatorAnimationSemiCircleSpin: ActivityIndicatorAnimationDelegate {
    
    func setUpAnimation(in layer: CALayer?, size: CGSize, color: NSColor) {
        guard let layer = layer else {
            return
        }
        let duration: CFTimeInterval = 0.6
        
        // Animation
        let animation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
        
        animation.keyTimes = [0, 0.5, 1]
        animation.values = [0, M_PI, 2 * M_PI]
        animation.duration = duration
        animation.repeatCount = HUGE
        animation.isRemovedOnCompletion = false
        
        // Draw circle
        let circle = ActivityIndicatorShape.circleSemi.layerWith(size: size, color: color)
        let frame = CGRect(
            x: (layer.bounds.width - size.width) / 2,
            y: (layer.bounds.height - size.height) / 2,
            width: size.width,
            height: size.height
        )
        
        circle.frame = frame
        circle.add(animation, forKey: "animation")
        layer.addSublayer(circle)
    }
}
