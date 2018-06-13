//
//  PastelView+Objc.swift
//  Pastel
//
//  Created by Harry Wright on 13/06/2018.
//  Copyright © 2018 Cruz. All rights reserved.
//

import UIKit

/* Life would be so much eaiser if RawRepresentable struct could port to Objc like the port from */

@available(swift, introduced: 1.0, deprecated: 1.0)
extension Gradient: _ObjectiveCBridgeable {

    public typealias _ObjectiveCType = PVPastelGradient

    public func _bridgeToObjectiveC() -> PVPastelGradient {
        return PVPastelGradient(colors: self.rawValue)
    }

    public static func _forceBridgeFromObjectiveC(_ source: PVPastelGradient, result: inout Gradient?) {
        result = Gradient(source.colors)
    }

    public static func _conditionallyBridgeFromObjectiveC(_ source: PVPastelGradient, result: inout Gradient?) -> Bool {
        result = Gradient(source.colors)
        return true
    }

    public static func _unconditionallyBridgeFromObjectiveC(_ source: PVPastelGradient?) -> Gradient {
        var result: Gradient?
        _forceBridgeFromObjectiveC(source!, result: &result)
        return result!
    }

}

@available(swift, introduced: 1.0, deprecated: 1.0, renamed: "Gradient")
@objc(PVPastelGradient)
public class PVPastelGradient: NSObject {

    public private(set) var colors: [UIColor]

    public init(colors: [UIColor]) {
        self.colors = colors
    }

    @objc public static private(set) var warmFlame: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 1, green: 0.6039215686, blue: 0.6196078431, alpha: 1), #colorLiteral(red: 0.9803921569, green: 0.8156862745, blue: 0.768627451, alpha: 1)])

    @objc public static private(set) var nightFade: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.631372549, green: 0.5490196078, blue: 0.8196078431, alpha: 1), #colorLiteral(red: 0.9843137255, green: 0.7607843137, blue: 0.9215686275, alpha: 1)])

    @objc public static private(set) var springWarmth: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.9803921569, green: 0.8156862745, blue: 0.768627451, alpha: 1), #colorLiteral(red: 1, green: 0.8196078431, blue: 1, alpha: 1)])

    @objc public static private(set) var juicyPeach: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 1, green: 0.9254901961, blue: 0.8235294118, alpha: 1), #colorLiteral(red: 0.9882352941, green: 0.7137254902, blue: 0.6235294118, alpha: 1)])

    @objc public static private(set) var youngPassion: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 1, green: 0.5058823529, blue: 0.4666666667, alpha: 1), #colorLiteral(red: 1, green: 0.5254901961, blue: 0.4784313725, alpha: 1), #colorLiteral(red: 1, green: 0.5490196078, blue: 0.4980392157, alpha: 1), #colorLiteral(red: 0.9764705882, green: 0.568627451, blue: 0.5215686275, alpha: 1), #colorLiteral(red: 0.8117647059, green: 0.3333333333, blue: 0.4235294118, alpha: 1), #colorLiteral(red: 0.6941176471, green: 0.1647058824, blue: 0.3568627451, alpha: 1)])

    @objc public static private(set) var ladyLips: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 1, green: 0.6039215686, blue: 0.6196078431, alpha: 1), #colorLiteral(red: 0.9960784314, green: 0.8117647059, blue: 0.937254902, alpha: 1), #colorLiteral(red: 0.9960784314, green: 0.8117647059, blue: 0.937254902, alpha: 1)])

    @objc public static private(set) var sunnyMorning: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.9647058824, green: 0.8274509804, blue: 0.3960784314, alpha: 1), #colorLiteral(red: 0.9921568627, green: 0.6274509804, blue: 0.5215686275, alpha: 1)])

    @objc public static private(set) var rainyAshville: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.9843137255, green: 0.7607843137, blue: 0.9215686275, alpha: 1), #colorLiteral(red: 0.6509803922, green: 0.7568627451, blue: 0.9333333333, alpha: 1)])

    @objc public static private(set) var frozenDreams: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.9921568627, green: 0.7960784314, blue: 0.9450980392, alpha: 1), #colorLiteral(red: 0.9921568627, green: 0.7960784314, blue: 0.9450980392, alpha: 1), #colorLiteral(red: 0.9019607843, green: 0.8705882353, blue: 0.9137254902, alpha: 1)])

    @objc public static private(set) var winterNeva: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.631372549, green: 0.768627451, blue: 0.9921568627, alpha: 1), #colorLiteral(red: 0.7607843137, green: 0.9137254902, blue: 0.9843137255, alpha: 1)])

    @objc public static private(set) var dustyGrass: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.831372549, green: 0.9882352941, blue: 0.4745098039, alpha: 1), #colorLiteral(red: 0.5882352941, green: 0.9019607843, blue: 0.631372549, alpha: 1)])

    @objc public static private(set) var temptingAzure: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.5176470588, green: 0.9803921569, blue: 0.6901960784, alpha: 1), #colorLiteral(red: 0.5607843137, green: 0.8274509804, blue: 0.9568627451, alpha: 1)])

    @objc public static private(set) var heavyRain: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.8117647059, green: 0.8509803922, blue: 0.8745098039, alpha: 1), #colorLiteral(red: 0.8862745098, green: 0.9215686275, blue: 0.9411764706, alpha: 1)])

    @objc public static private(set) var amyCrisp: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.6509803922, green: 0.7529411765, blue: 0.9960784314, alpha: 1), #colorLiteral(red: 0.9647058824, green: 0.5019607843, blue: 0.5176470588, alpha: 1)])

    @objc public static private(set) var meanFruit: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.9882352941, green: 0.7960784314, blue: 0.5647058824, alpha: 1), #colorLiteral(red: 0.8352941176, green: 0.4941176471, blue: 0.9215686275, alpha: 1)])

    @objc public static private(set) var deepBlue: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.8784313725, green: 0.7647058824, blue: 0.9882352941, alpha: 1), #colorLiteral(red: 0.5568627451, green: 0.7725490196, blue: 0.9882352941, alpha: 1)])

    @objc public static private(set) var ripeMalinka: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.9411764706, green: 0.5764705882, blue: 0.9843137255, alpha: 1), #colorLiteral(red: 0.9607843137, green: 0.3411764706, blue: 0.4235294118, alpha: 1)])

    @objc public static private(set) var cloudyKnoxville: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.9921568627, green: 0.9843137255, blue: 0.9843137255, alpha: 1), #colorLiteral(red: 0.9215686275, green: 0.9294117647, blue: 0.9333333333, alpha: 1)])

    @objc public static private(set) var malibuBeach: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.3098039216, green: 0.6745098039, blue: 0.9960784314, alpha: 1), #colorLiteral(red: 0, green: 0.9490196078, blue: 0.9960784314, alpha: 1)])

    @objc public static private(set) var newLife: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.262745098, green: 0.9137254902, blue: 0.4823529412, alpha: 1), #colorLiteral(red: 0.2196078431, green: 0.9764705882, blue: 0.8431372549, alpha: 1)])

    @objc public static private(set) var trueSunset: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.9803921569, green: 0.4392156863, blue: 0.6039215686, alpha: 1), #colorLiteral(red: 0.9960784314, green: 0.8823529412, blue: 0.2509803922, alpha: 1)])

    @objc public static private(set) var morpheusDen: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.1882352941, green: 0.8117647059, blue: 0.8156862745, alpha: 1), #colorLiteral(red: 0.2, green: 0.03137254902, blue: 0.4039215686, alpha: 1)])

    @objc public static private(set) var rareWind: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.6588235294, green: 0.9294117647, blue: 0.9176470588, alpha: 1), #colorLiteral(red: 0.9960784314, green: 0.8392156863, blue: 0.8901960784, alpha: 1)])

    @objc public static private(set) var nearMoon: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.368627451, green: 0.9058823529, blue: 0.8745098039, alpha: 1), #colorLiteral(red: 0.7058823529, green: 0.5647058824, blue: 0.7921568627, alpha: 1)])

    @objc public static private(set) var wildApple: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.8235294118, green: 0.6, blue: 0.7607843137, alpha: 1), #colorLiteral(red: 0.9960784314, green: 0.9764705882, blue: 0.8431372549, alpha: 1)])

    @objc public static private(set) var saintPeterburg: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.9607843137, green: 0.968627451, blue: 0.9803921569, alpha: 1), #colorLiteral(red: 0.7647058824, green: 0.8117647059, blue: 0.8862745098, alpha: 1)])

    @objc public static private(set) var ariellesSmile: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.0862745098, green: 0.8509803922, blue: 0.8901960784, alpha: 1), #colorLiteral(red: 0.1882352941, green: 0.7803921569, blue: 0.9254901961, alpha: 1), #colorLiteral(red: 0.2745098039, green: 0.6823529412, blue: 0.968627451, alpha: 1)])

    @objc public static private(set) var plumPlate: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.4, green: 0.4941176471, blue: 0.9176470588, alpha: 1), #colorLiteral(red: 0.462745098, green: 0.2941176471, blue: 0.6352941176, alpha: 1)])

    @objc public static private(set) var everlastingSky: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.9921568627, green: 0.9882352941, blue: 0.9843137255, alpha: 1), #colorLiteral(red: 0.8862745098, green: 0.8196078431, blue: 0.7647058824, alpha: 1)])

    @objc public static private(set) var happyFisher: PVPastelGradient = PVPastelGradient(colors: [#colorLiteral(red: 0.537254902, green: 0.968627451, blue: 0.9960784314, alpha: 1), #colorLiteral(red: 0.4, green: 0.6509803922, blue: 1, alpha: 1)])

}
