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
        source: imgSource
        anchors.fill: element

        brightness: SingletonEffects.brightness
        contrast: SingletonEffects.contrast
    }
    GammaAdjust {
        source: imgSource
        anchors.fill: element

        gamma: SingletonEffects.luminance
    }
    Desaturate {
        source: imgSource
        anchors.fill: element

        desaturation: SingletonEffects.desaturate
    }
    ColorOverlay {
        source: imgSource
        anchors.fill: element
        color: SingletonEffects.colorOverlay
    }

     // Color
    Colorize {
        source: imgSource
        anchors.fill: element

        hue: SingletonEffects.colorizeHue
        saturation: SingletonEffects.colorizeSaturation
        lightness: SingletonEffects.colorizeLightness
    }
    HueSaturation {
        source: imgSource
        anchors.fill: element

        hue: SingletonEffects.hueSatHue
        saturation: SingletonEffects.hueSatSaturation
        lightness: SingletonEffects.hueSatLightness
    }

    // Glow
    Glow {
        source: imgSource
        anchors.fill: element

        radius: SingletonEffects.glowRadius
        samples: SingletonEffects.glowSamples
        color: SingletonEffects.glowColor
        spread: SingletonEffects.glowSpread
        transparentBorder: SingletonEffects.glowTransparentBorder
    }

    // Level Adjust
    LevelAdjust {
        source: imgSource
        anchors.fill: element

        gamma: SingletonEffects.lvlAdjustGamma
        minimumOutput: SingletonEffects.lvlAdjustMinO
        maximumOutput: SingletonEffects.lvlAdjustMaxO
        minimumInput: SingletonEffects.lvlAdjustMinI
        maximumInput: SingletonEffects.lvlAdjustMaxI
    }

    // Shadow
    DropShadow {
        source: imgSource
        anchors.fill: element

        color: SingletonEffects.drShadowColor
        radius: SingletonEffects.drShadowRadius
        samples: SingletonEffects.drShadowSamples
        spread: SingletonEffects.drShadowSpread
        horizontalOffset: SingletonEffects.drShadowHorizontal
        verticalOffset: SingletonEffects.drShadowVertical
        transparentBorder: SingletonEffects.drShadowTransparentBorder
    }
    InnerShadow {
        source: imgSource
        anchors.fill: element

        color: SingletonEffects.inShadowColor
        radius: SingletonEffects.inShadowRadius
        samples: SingletonEffects.inShadowSamples
        spread: SingletonEffects.inShadowSpread
        horizontalOffset: SingletonEffects.inShadowHorizontal
        verticalOffset: SingletonEffects.inShadowVertical
        fast: SingletonEffects.inShadowFast
    }

    // Blur
    FastBlur {
        source: imgSource
        anchors.fill: element

        radius: SingletonEffects.fsBlurRadius
        transparentBorder: SingletonEffects.fsTransparentBorder
    }
    GaussianBlur {
        source: imgSource
        anchors.fill: element

        radius: SingletonEffects.gsBlurRadius
        samples: SingletonEffects.gsBlurSamples
        deviation: SingletonEffects.gsBlurDeviation
        transparentBorder: SingletonEffects.gsBlurTransparentBorder
    }

    // Motion Blur
    DirectionalBlur {
        source: imgSource
        anchors.fill: element

        angle: SingletonEffects.directionalAngle
        length: SingletonEffects.directionalLenght
        samples: SingletonEffects.directionalSamples
        transparentBorder: SingletonEffects.directionalTransparentBorder
    }
    RadialBlur {
        source: imgSource
        anchors.fill: element

        samples: SingletonEffects.radialSamples
        angle: SingletonEffects.radialAngle
        horizontalOffset: SingletonEffects.radialHorizontal
        verticalOffset: SingletonEffects.radialVertical
        transparentBorder: SingletonEffects.radialTransparentBorder
    }
    ZoomBlur {
        source: imgSource
        anchors.fill: element

        samples: SingletonEffects.zoomSamples
        length: SingletonEffects.zoomLenght
        horizontalOffset: SingletonEffects.zoomHorizontal
        verticalOffset: SingletonEffects.zoomVertical
        transparentBorder: SingletonEffects.zoomTransparentBorder
    }
}
