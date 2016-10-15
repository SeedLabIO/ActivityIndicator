//
//  ActivityIndicatorView.swift
//  ActivityIndicator
//
//  Created by LiangAlen on 14/10/2016.
//  Copyright © 2016 seedlab. All rights reserved.
//

import Cocoa

public enum ActivityIndicatorType: Int {

    /**
     Blank.

     - returns: Instance of ActivityIndicatorAnimationBlank.
     */
    case blank
    /**
     BallPulse.

     - returns: Instance of ActivityIndicatorAnimationBallPulse.
     */
    case ballPulse
    /**
     BallGridPulse.

     - returns: Instance of ActivityIndicatorAnimationBallGridPulse.
     */
    case ballGridPulse
    /**
     BallClipRotate.

     - returns: Instance of ActivityIndicatorAnimationBallClipRotate.
     */
    case ballClipRotate
    /**
     SquareSpin.

     - returns: Instance of ActivityIndicatorAnimationSquareSpin.
     */
    case squareSpin
    /**
     BallClipRotatePulse.

     - returns: Instance of ActivityIndicatorAnimationBallClipRotatePulse.
     */
    case ballClipRotatePulse
    /**
     BallClipRotateMultiple.

     - returns: Instance of ActivityIndicatorAnimationBallClipRotateMultiple.
     */
    case ballClipRotateMultiple
    /**
     BallPulseRise.

     - returns: Instance of ActivityIndicatorAnimationBallPulseRise.
     */
    case ballPulseRise
    /**
     BallRotate.

     - returns: Instance of ActivityIndicatorAnimationBallRotate.
     */
    case ballRotate
    /**
     CubeTransition.

     - returns: Instance of ActivityIndicatorAnimationCubeTransition.
     */
    case cubeTransition
    /**
     BallZigZag.

     - returns: Instance of ActivityIndicatorAnimationBallZigZag.
     */
    case ballZigZag
    /**
     BallZigZagDeflect

     - returns: Instance of ActivityIndicatorAnimationBallZigZagDeflect
     */
    case ballZigZagDeflect
    /**
     BallTrianglePath.

     - returns: Instance of ActivityIndicatorAnimationBallTrianglePath.
     */
    case ballTrianglePath
    /**
     BallScale.

     - returns: Instance of ActivityIndicatorAnimationBallScale.
     */
    case ballScale
    /**
     LineScale.

     - returns: Instance of ActivityIndicatorAnimationLineScale.
     */
    case lineScale
    /**
     LineScaleParty.

     - returns: Instance of ActivityIndicatorAnimationLineScaleParty.
     */
    case lineScaleParty
    /**
     BallScaleMultiple.

     - returns: Instance of ActivityIndicatorAnimationBallScaleMultiple.
     */
    case ballScaleMultiple
    /**
     BallPulseSync.

     - returns: Instance of ActivityIndicatorAnimationBallPulseSync.
     */
    case ballPulseSync
    /**
     BallBeat.

     - returns: Instance of ActivityIndicatorAnimationBallBeat.
     */
    case ballBeat
    /**
     LineScalePulseOut.

     - returns: Instance of ActivityIndicatorAnimationLineScalePulseOut.
     */
    case lineScalePulseOut
    /**
     LineScalePulseOutRapid.

     - returns: Instance of ActivityIndicatorAnimationLineScalePulseOutRapid.
     */
    case lineScalePulseOutRapid
    /**
     BallScaleRipple.

     - returns: Instance of ActivityIndicatorAnimationBallScaleRipple.
     */
    case ballScaleRipple
    /**
     BallScaleRippleMultiple.

     - returns: Instance of ActivityIndicatorAnimationBallScaleRippleMultiple.
     */
    case ballScaleRippleMultiple
    /**
     BallSpinFadeLoader.

     - returns: Instance of ActivityIndicatorAnimationBallSpinFadeLoader.
     */
    case ballSpinFadeLoader
    /**
     LineSpinFadeLoader.

     - returns: Instance of ActivityIndicatorAnimationLineSpinFadeLoader.
     */
    case lineSpinFadeLoader
    /**
     TriangleSkewSpin.

     - returns: Instance of ActivityIndicatorAnimationTriangleSkewSpin.
     */
    case triangleSkewSpin
    /**
     Pacman.

     - returns: Instance of ActivityIndicatorAnimationPacman.
     */
    case pacman
    /**
     BallGridBeat.

     - returns: Instance of ActivityIndicatorAnimationBallGridBeat.
     */
    case ballGridBeat
    /**
     SemiCircleSpin.

     - returns: Instance of ActivityIndicatorAnimationSemiCircleSpin.
     */
    case semiCircleSpin
    /**
     BallRotateChase.

     - returns: Instance of ActivityIndicatorAnimationBallRotateChase.
     */
    case ballRotateChase
    /**
     Orbit.

     - returns: Instance of ActivityIndicatorAnimationOrbit.
     */
    case orbit
    /**
     AudioEqualizer.

     - returns: Instance of ActivityIndicatorAnimationAudioEqualizer.
     */
    case audioEqualizer

    static let allTypes = (blank.rawValue ... audioEqualizer.rawValue).map{ ActivityIndicatorType(rawValue: $0)! }

    func animation() -> ActivityIndicatorAnimationDelegate {
        switch self {
        case .blank:
            return ActivityIndicatorAnimationBlank()
        case .ballPulse:
            return ActivityIndicatorAnimationBallPulse()
        case .ballGridPulse:
            return ActivityIndicatorAnimationBallGridPulse()
        case .ballClipRotate:
            return ActivityIndicatorAnimationBallClipRotate()
        case .squareSpin:
            return ActivityIndicatorAnimationSquareSpin()
        case .ballClipRotatePulse:
            return ActivityIndicatorAnimationBallClipRotatePulse()
        case .ballClipRotateMultiple:
            return ActivityIndicatorAnimationBallClipRotateMultiple()
        case .ballPulseRise:
            return ActivityIndicatorAnimationBallPulseRise()
        case .ballRotate:
            return ActivityIndicatorAnimationBallRotate()
        case .cubeTransition:
            return ActivityIndicatorAnimationCubeTransition()
        case .ballZigZag:
            return ActivityIndicatorAnimationBallZigZag()
        case .ballZigZagDeflect:
            return ActivityIndicatorAnimationBallZigZagDeflect()
        case .ballTrianglePath:
            return ActivityIndicatorAnimationBallTrianglePath()
        case .ballScale:
            return ActivityIndicatorAnimationBallScale()
        case .lineScale:
            return ActivityIndicatorAnimationLineScale()
        case .lineScaleParty:
            return ActivityIndicatorAnimationLineScaleParty()
        case .ballScaleMultiple:
            return ActivityIndicatorAnimationBallScaleMultiple()
        case .ballPulseSync:
            return ActivityIndicatorAnimationBallPulseSync()
        case .ballBeat:
            return ActivityIndicatorAnimationBallBeat()
        case .lineScalePulseOut:
            return ActivityIndicatorAnimationLineScalePulseOut()
        case .lineScalePulseOutRapid:
            return ActivityIndicatorAnimationLineScalePulseOutRapid()
        case .ballScaleRipple:
            return ActivityIndicatorAnimationBallScaleRipple()
        case .ballScaleRippleMultiple:
            return ActivityIndicatorAnimationBallScaleRippleMultiple()
        case .ballSpinFadeLoader:
            return ActivityIndicatorAnimationBallSpinFadeLoader()
        case .lineSpinFadeLoader:
            return ActivityIndicatorAnimationLineSpinFadeLoader()
        case .triangleSkewSpin:
            return ActivityIndicatorAnimationTriangleSkewSpin()
        case .pacman:
            return ActivityIndicatorAnimationPacman()
        case .ballGridBeat:
            return ActivityIndicatorAnimationBallGridBeat()
        case .semiCircleSpin:
            return ActivityIndicatorAnimationSemiCircleSpin()
        case .ballRotateChase:
            return ActivityIndicatorAnimationBallRotateChase()
        case .orbit:
            return ActivityIndicatorAnimationOrbit()
        case .audioEqualizer:
            return ActivityIndicatorAnimationAudioEqualizer()
        }
    }
}

protocol ActivityIndicatorAnimationDelegate {

    func setUpAnimation(in layer: CALayer?, size: NSSize, color: NSColor)
}

public class ActivityIndicatorView: NSView {

    /// Default type. Default value is .BallSpinFadeLoader.
    public static var DEFAULT_TYPE: ActivityIndicatorType = .blank

    /// Default color. Default value is lightGray.
    public static var DEFAULT_COLOR = NSColor.lightGray

    /// Default padding. Default value is 0.
    public static var DEFAULT_PADDING: CGFloat = 0

    /// Default size of activity indicator view in UI blocker. Default value is 60x60.
    public static var DEFAULT_BLOCKER_SIZE = CGSize(width: 60, height: 60)

    /// Default display time threshold to actually display UI blocker. Default value is 0 ms.
    public static var DEFAULT_BLOCKER_DISPLAY_TIME_THRESHOLD = 0

    /// Default minimum display time of UI blocker. Default value is 0 ms.
    public static var DEFAULT_BLOCKER_MINIMUM_DISPLAY_TIME = 0

    /// Animation type.
    public var type: ActivityIndicatorType = ActivityIndicatorView.DEFAULT_TYPE

    @available(*, unavailable, message: "This property is reserved for Interface Builder. Use 'type' instead.")
    @IBInspectable var typeName: String {
        get {
            return getTypeName()
        }
        set {
            _setTypeName(newValue)
        }
    }

    /// Color of activity background view.
    @IBInspectable public var backgroundColor: NSColor = .clear

    /// Color of activity indicator view.
    @IBInspectable public var color: NSColor = ActivityIndicatorView.DEFAULT_COLOR

    /// Padding of activity indicator view.
    @IBInspectable public var padding: CGFloat = ActivityIndicatorView.DEFAULT_PADDING

    /// Current status of animation, read-only.
    public private(set) var animating: Bool = false

    /**
     Returns an object initialized from data in a given unarchiver.
     self, initialized using the data in decoder.

     - parameter decoder: an unarchiver object.

     - returns: self, initialized using the data in decoder.
     */
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        isHidden = true
        wantsLayer = true
    }

    /**
     Create a activity indicator view.

     Appropriate ActivityIndicatorView.DEFAULT_* values are used for omitted params.

     - parameter frame:   view's frame.
     - parameter type:    animation type.
     - parameter color:   color of activity indicator view.
     - parameter padding: padding of activity indicator view.

     - returns: The activity indicator view.
     */
    public init(frame: CGRect, type: ActivityIndicatorType? = nil, color: NSColor? = nil, padding: CGFloat? = nil) {

        self.type = type ?? ActivityIndicatorView.DEFAULT_TYPE
        self.color = color ?? ActivityIndicatorView.DEFAULT_COLOR
        self.padding = padding ?? ActivityIndicatorView.DEFAULT_PADDING

        super.init(frame: frame)

        isHidden = true
        wantsLayer = true
    }

    /**
     Returns the natural size for the receiving view, considering only properties of the view itself.

     A size indicating the natural size for the receiving view based on its intrinsic properties.

     - returns: A size indicating the natural size for the receiving view based on its intrinsic properties.
     */
    public override var intrinsicContentSize : CGSize {
        return CGSize(width: self.bounds.width, height: self.bounds.height)
    }

    /**
     Start animating.
     */
    public func startAnimating() {
        self.isHidden = false
        self.animating = true
        self.layer?.speed = 1
        setUpAnimation()
    }

    /**
     Stop animating.
     */
    public func stopAnimating() {
        self.isHidden = true
        self.animating = false
        self.layer?.sublayers?.removeAll()
    }

    // MARK: Internal

    func _setTypeName(_ typeName: String) {
        for item in ActivityIndicatorType.allTypes {
            if String(describing: item).caseInsensitiveCompare(typeName) == ComparisonResult.orderedSame {
                type = item
                break
            }
        }
    }

    func getTypeName() -> String {
        return String(describing: type)
    }

    // MARK: Privates

    private func setUpAnimation() {
        let animation: ActivityIndicatorAnimationDelegate = type.animation()
        var animationRect = NSInsetRect(frame, padding, padding)
//        var animationRect = UIEdgeInsetsInsetRect(self.frame, UIEdgeInsetsMake(padding, padding, padding, padding))
        let minEdge = min(animationRect.width, animationRect.height)

        self.layer?.sublayers = nil
        animationRect.size = CGSize(width: minEdge, height: minEdge)
        animation.setUpAnimation(in: self.layer, size: animationRect.size, color: self.color)
    }

    /**
     Handle set backgroundColor for NSView.
     */

    override public var wantsUpdateLayer: Bool {
        return true
    }

    override public func updateLayer() {
        layer?.backgroundColor = backgroundColor.cgColor
    }
}
