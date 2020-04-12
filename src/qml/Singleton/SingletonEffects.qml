pragma Singleton
import QtQuick 2.0

QtObject {

    /* General section */
    property real brightness: 0
    property real contrast: 0
    property real desaturate: 0
    property real luminance: 0
    property color colorOverlay: "#FFFFFF"

    /* Color */
    // Colorize
    property bool colorizeEnableEffect: false
    property real colorizeHue: 0
    property real colorizeSaturation: 0
    property real colorizeLightness: 0
    // HueSaturation
    property real hueSatHue: 0
    property real hueSatSaturation: 0
    property real hueSatLightness: 0

    /* Glow */
    property real glowRadius: 0
    property real glowSamples: 0
    property real glowSpread: 0
    property color glowColor: "#FFFFFF"
    property bool glowTransparentBorder: false

    /* Level Adjust */
    property variant lvlAdjustGamma: Qt.vector3d(0,0,0)
    property color lvlAdjustMinO: "#FFFFFF"
    property color lvlAdjustMaxO: "#FFFFFF"
    property color lvlAdjustMinI: "#FFFFFF"
    property color lvlAdjustMaxI: "#FFFFFF"

    /* Shadow */
    // drop
    property color drShadowColor: "#FFFFFF"
    property real drShadowRadius: 0
    property real drShadowSamples: 0
    property real drShadowSpread: 0
    property real drShadowHorizontal: 0
    property real drShadowVertical: 0
    property bool drShadowTransparentBorder: false
    // inner
    property color inShadowColor: "#FFFFFF"
    property real inShadowRadius: 0
    property real inShadowSamples: 0
    property real inShadowSpread: 0
    property real inShadowHorizontal: 0
    property real inShadowVertical: 0
    property bool inShadowFast: false

    /* Blur section */
    // Fast
    property real fsBlurRadius: 0
    property bool fsTransparentBorder: false
    // Gaussian
    property real gsBlurRadius: 0
    property real gsBlurDeviation: 0
    property real gsBlurSamples: 0
    property bool gsBlurTransparentBorder: false

    /* MotionBlur */
    // Directional
    property real directionalAngle: 0
    property real directionalSamples: 0
    property real directionalLenght: 0
    property bool directionalTransparentBorder: false
    // Radial
    property real radialAngle: 0
    property real radialSamples: 0
    property real radialHorizontal: 0
    property real radialVertical: 0
    property bool radialTransparentBorder: false
    // Zoom
    property real zoomSamples: 0
    property real zoomLenght: 0
    property real zoomHorizontal: 0
    property real zoomVertical: 0
    property bool zoomTransparentBorder: false
}
