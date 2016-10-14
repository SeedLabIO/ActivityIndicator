//
//  ActivityIndicatorShape.swift
//  ActivityIndicator
//
//  Created by LiangAlen on 14/10/2016.
//  Copyright © 2016 seedlab. All rights reserved.
//

import Foundation

extension NSBezierPath {

    // http://stackoverflow.com/questions/1815568/how-can-i-convert-nsbezierpath-to-cgpath
    public var cgPath: CGPath {
        let path = CGMutablePath()
        var points = [CGPoint](repeating: .zero, count: 3)

        for i in 0 ..< self.elementCount {
            let type = self.element(at: i, associatedPoints: &points)
            switch type {
            case .moveToBezierPathElement:
                path.move(to: points[0])
            case .lineToBezierPathElement:
                path.addLine(to: points[0])
            case .curveToBezierPathElement:
                path.addCurve(to: points[2], control1: points[0], control2: points[1])
            case .closePathBezierPathElement:
                path.closeSubpath()
            }
        }
        return path
    }
}

enum ActivityIndicatorShape {

    case rectangle

    func layerWith(size: CGSize, color: NSColor) -> CALayer {
        let layer: CAShapeLayer = CAShapeLayer()
        let path: NSBezierPath = NSBezierPath()

        switch self {
        case .rectangle:
            path.move(to: CGPoint(x: 0, y: 0))
            path.line(to: CGPoint(x: size.width, y: 0))
            path.line(to: CGPoint(x: size.width, y: size.height))
            path.line(to: CGPoint(x: 0, y: size.height))
            layer.fillColor = color.cgColor
        }

        layer.backgroundColor = nil
        layer.path = path.cgPath
        layer.frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)

        return layer
    }
}
