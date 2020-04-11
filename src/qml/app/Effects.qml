import QtQuick 2.14
import QtGraphicalEffects 1.14
import ".."
import "../Singleton"

Item
{
    id: element

    property Image imgSource

    // General
    BrightnessContrast {
        id: brightnessContrast

        source: imgSource
        anchors.fill: element

        brightness: SingletonEffects.brightness
        contrast: SingletonEffects.contrast
        cached: true
    }
    GammaAdjust {
        id: gammaAdjust

        source: brightnessContrast
        anchors.fill: element

        gamma: SingletonEffects.luminance
        cached: true
    }
    Desaturate {
        id: desaturate

        source: gammaAdjust
        anchors.fill: element

        desaturation: SingletonEffects.desaturate
        cached: true
    }
   ColorOverlay {
        id: colorOverlay

        source: desaturate
        anchors.fill: element

        color: SingletonEffects.colorOverlay
        cached: true
    }

     // Color
   /* Colorize {
        id: colorize

        source: colorOverlay
        anchors.fill: element

        hue: SingletonEffects.colorizeHue
        saturation: SingletonEffects.colorizeSaturation
        lightness: SingletonEffects.colorizeLightness
        cached: true
    }*/
    HueSaturation {
        id: hueSaturation

        source: colorOverlay
        anchors.fill: element

        hue: SingletonEffects.hueSatHue
        saturation: SingletonEffects.hueSatSaturation
        lightness: SingletonEffects.hueSatLightness
        cached: true
    }

    // Glow
    Glow {
        id: glow

        source: hueSaturation
        anchors.fill: element

        radius: SingletonEffects.glowRadius
        samples: SingletonEffects.glowSamples
        color: SingletonEffects.glowColor
        spread: SingletonEffects.glowSpread
        transparentBorder: SingletonEffects.glowTransparentBorder
        cached: true
    }

    // Level Adjust
    LevelAdjust {
        id: levelAdjust

        source: hueSaturation
        anchors.fill: element

        gamma: SingletonEffects.lvlAdjustGamma
        minimumOutput: SingletonEffects.lvlAdjustMinO
        maximumOutput: SingletonEffects.lvlAdjustMaxO
        minimumInput: SingletonEffects.lvlAdjustMinI
        maximumInput: SingletonEffects.lvlAdjustMaxI
        cached: true
    }

    // Shadow
    DropShadow {
        id: dropShadow

        source: levelAdjust
        anchors.fill: element

        color: SingletonEffects.drShadowColor
        radius: SingletonEffects.drShadowRadius
        samples: SingletonEffects.drShadowSamples
        spread: SingletonEffects.drShadowSpread
        horizontalOffset: SingletonEffects.drShadowHorizontal
        verticalOffset: SingletonEffects.drShadowVertical
        transparentBorder: SingletonEffects.drShadowTransparentBorder
        cached: true
    }
    InnerShadow {
        id: innerShadow

        source: dropShadow
        anchors.fill: element

        color: SingletonEffects.inShadowColor
        radius: SingletonEffects.inShadowRadius
        samples: SingletonEffects.inShadowSamples
        spread: SingletonEffects.inShadowSpread
        horizontalOffset: SingletonEffects.inShadowHorizontal
        verticalOffset: SingletonEffects.inShadowVertical
        fast: SingletonEffects.inShadowFast
        cached: true
    }

    // Blur
    FastBlur {
        id: fsBlur

        source: innerShadow
        anchors.fill: element

        radius: SingletonEffects.fsBlurRadius
        transparentBorder: SingletonEffects.fsTransparentBorder
        cached: true
    }
    GaussianBlur {
        id: gsBlur

        source: fsBlur
        anchors.fill: element

        radius: SingletonEffects.gsBlurRadius
        samples: SingletonEffects.gsBlurSamples
        deviation: SingletonEffects.gsBlurDeviation
        transparentBorder: SingletonEffects.gsBlurTransparentBorder
        cached: true
    }

    // Motion Blur
    DirectionalBlur {
        id: directionalBlur

        source: gsBlur
        anchors.fill: element

        angle: SingletonEffects.directionalAngle
        length: SingletonEffects.directionalLenght
        samples: SingletonEffects.directionalSamples
        transparentBorder: SingletonEffects.directionalTransparentBorder
        cached: true
    }
    RadialBlur {
        id: radialBlur

        source: directionalBlur
        anchors.fill: element

        samples: SingletonEffects.radialSamples
        angle: SingletonEffects.radialAngle
        horizontalOffset: SingletonEffects.radialHorizontal
        verticalOffset: SingletonEffects.radialVertical
        transparentBorder: SingletonEffects.radialTransparentBorder
        cached: true
    }
    ZoomBlur {
        id: zoomBlur

        source: radialBlur
        anchors.fill: element

        samples: SingletonEffects.zoomSamples
        length: SingletonEffects.zoomLenght
        horizontalOffset: SingletonEffects.zoomHorizontal
        verticalOffset: SingletonEffects.zoomVertical
        transparentBorder: SingletonEffects.zoomTransparentBorder
        cached: true
    }
}
