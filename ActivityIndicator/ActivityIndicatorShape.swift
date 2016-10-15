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

    case circle
    case circleSemi
    case ring
    case ringTwoHalfVertical
    case ringTwoHalfHorizontal
    case ringThirdFour
    case rectangle
    case triangle
    case line
    case pacman

    func layerWith(size: CGSize, color: NSColor) -> CALayer {
        let layer: CAShapeLayer = CAShapeLayer()
        let path: NSBezierPath = NSBezierPath()
        let lineWidth: CGFloat = 2

        switch self {
        case .circle:
            path.appendArc(
                withCenter: CGPoint(x: size.width / 2, y: size.height / 2),
                radius: size.width / 2,
                startAngle: 0,
                endAngle: CGFloat(2 * 180),
                clockwise: false
            )
            layer.fillColor = color.cgColor
        case .circleSemi:
            path.appendArc(
                withCenter: CGPoint(x: size.width / 2, y: size.height / 2),
                radius: size.width / 2,
                startAngle: CGFloat(-30),
                endAngle: CGFloat(-5 * 30),
                clockwise: false
            )
            path.close()
            layer.fillColor = color.cgColor
        case .ring:
            path.appendArc(
                withCenter: CGPoint(x: size.width / 2, y: size.height / 2),
                radius: size.width / 2,
                startAngle: 0,
                endAngle: CGFloat(2 * 180),
                clockwise: false
            )
            layer.fillColor = nil
            layer.strokeColor = color.cgColor
            layer.lineWidth = lineWidth
        case .ringTwoHalfVertical:
            path.appendArc(
                withCenter: CGPoint(x: size.width / 2, y: size.height / 2),
                radius:size.width / 2,
                startAngle:CGFloat(-3 * 45),
                endAngle:CGFloat(-45),
                clockwise:true
            )
            path.move(
                to: CGPoint(x: size.width / 2 - size.width / 2 * CGFloat(cos(M_PI_4)),
                            y: size.height / 2 + size.height / 2 * CGFloat(sin(M_PI_4)))
            )
            path.appendArc(
                withCenter: CGPoint(x: size.width / 2, y: size.height / 2),
                radius:size.width / 2,
                startAngle:CGFloat(-5 * 45),
                endAngle:CGFloat(-7 * 45),
                clockwise:false
            )
            layer.fillColor = nil
            layer.strokeColor = color.cgColor
            layer.lineWidth = lineWidth
        case .ringTwoHalfHorizontal:
            path.appendArc(
                withCenter: CGPoint(x: size.width / 2, y: size.height / 2),
                radius:size.width / 2,
                startAngle:CGFloat(3 * 45),
                endAngle:CGFloat(5 * 45),
                clockwise:true
            )
            path.move(
                to: CGPoint(x: size.width / 2 + size.width / 2 * CGFloat(cos(M_PI_4)),
                            y: size.height / 2 - size.height / 2 * CGFloat(sin(M_PI_4)))
            )
            path.appendArc(
                withCenter: CGPoint(x: size.width / 2, y: size.height / 2),
                radius:size.width / 2,
                startAngle:CGFloat(-45),
                endAngle:CGFloat(45),
                clockwise:true
            )
            layer.fillColor = nil
            layer.strokeColor = color.cgColor
            layer.lineWidth = lineWidth
        case .ringThirdFour:
            path.appendArc(
                withCenter: CGPoint(x: size.width / 2, y: size.height / 2),
                radius: size.width / 2,
                startAngle: CGFloat(-3 * 45),
                endAngle: CGFloat(-45),
                clockwise: false
            )
            layer.fillColor = nil
            layer.strokeColor = color.cgColor
            layer.lineWidth = 2
        case .rectangle:
            path.move(to: CGPoint(x: 0, y: 0))
            path.line(to: CGPoint(x: size.width, y: 0))
            path.line(to: CGPoint(x: size.width, y: size.height))
            path.line(to: CGPoint(x: 0, y: size.height))
            layer.fillColor = color.cgColor
        case .triangle:
            let offsetY = size.height / 4

            path.move(to: CGPoint(x: 0, y: size.height - offsetY))
            path.line(to: CGPoint(x: size.width / 2, y: size.height / 2 - offsetY))
            path.line(to: CGPoint(x: size.width, y: size.height - offsetY))
            path.close()
            layer.fillColor = color.cgColor
        case .line:
            path.appendRoundedRect(
                CGRect(x: 0, y: 0, width: size.width, height: size.height),
                xRadius: size.width / 2,
                yRadius: size.width / 2
            )
            layer.fillColor = color.cgColor
        case .pacman:
            path.appendArc(
                withCenter: CGPoint(x: size.width / 2, y: size.height / 2),
                radius: size.width / 4,
                startAngle: 0,
                endAngle: CGFloat(2 * 180),
                clockwise: true
            )
            layer.fillColor = nil
            layer.strokeColor = color.cgColor
            layer.lineWidth = size.width / 2
        }

        layer.backgroundColor = nil
        layer.path = path.cgPath
        layer.frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)

        return layer
    }
}
