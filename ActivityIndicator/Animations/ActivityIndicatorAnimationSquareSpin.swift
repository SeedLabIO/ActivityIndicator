//
//  ActivityIndicatorAnimationSquareSpin.swift
//  ActivityIndicator
//
//  Created by LiangAlen on 14/10/2016.
//  Copyright © 2016 seedlab. All rights reserved.
//

import Foundation

class ActivityIndicatorAnimationSquareSpin: ActivityIndicatorAnimationDelegate {

    func setUpAnimation(in layer: CALayer?, size: CGSize, color: NSColor) {

        guard let layer = layer else { return }

        let duration: CFTimeInterval = 3
        let timingFunction = CAMediaTimingFunction(controlPoints: 0.09, 0.57, 0.49, 0.9)

        // Animation
        let animation = CAKeyframeAnimation(keyPath: "transform")

        animation.keyTimes = [0, 0.25, 0.5, 0.75, 1]
        animation.timingFunctions = [timingFunction, timingFunction, timingFunction, timingFunction]
        animation.values = [
            NSValue(caTransform3D: CATransform3DConcat(createRotateXTransform(angle: 0), createRotateYTransform(angle: 0))),
            NSValue(caTransform3D: CATransform3DConcat(createRotateXTransform(angle: CGFloat(M_PI)), createRotateYTransform(angle: 0))),
            NSValue(caTransform3D: CATransform3DConcat(createRotateXTransform(angle: CGFloat(M_PI)), createRotateYTransform(angle: CGFloat(M_PI)))),
            NSValue(caTransform3D: CATransform3DConcat(createRotateXTransform(angle: 0), createRotateYTransform(angle: CGFloat(M_PI)))),
            NSValue(caTransform3D: CATransform3DConcat(createRotateXTransform(angle: 0), createRotateYTransform(angle: 0)))]
        animation.duration = duration
        animation.repeatCount = HUGE
        animation.isRemovedOnCompletion = false

        // Draw square
        let square = ActivityIndicatorShape.rectangle.layerWith(size: size, color: color)
        let frame = CGRect(x: (layer.bounds.size.width - size.width) / 2,
                           y: (layer.bounds.size.height - size.height) / 2,
                           width: size.width,
                           height: size.height)

        square.frame = frame
        square.add(animation, forKey: "animation")
        layer.addSublayer(square)
    }

    func createRotateXTransform(angle: CGFloat) -> CATransform3D {
        var transform = CATransform3DMakeRotation(angle, 1, 0, 0)

        transform.m34 = CGFloat(-1) / 100

        return transform
    }

    func createRotateYTransform(angle: CGFloat) -> CATransform3D {
        var transform = CATransform3DMakeRotation(angle, 0, 1, 0)

        transform.m34 = CGFloat(-1) / 100

        return transform
    }
}
