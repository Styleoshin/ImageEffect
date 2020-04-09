import QtQuick 2.0
import QtQuick.Layouts 1.3
import "pannel_effects"
import "../properties"
import "../../Singleton"

Rectangle {
    id: rectMain

    implicitWidth: rectProperty.width
    implicitHeight: childrenRect.height
    color: "#474747"

    PannelTitle {
        id: rectTitle

        width: parent.width
        height: 35
        title: qsTr("General")

        anchors.top: parent.top

        onClickHideProperties: {
            layout.clip = true
            rectProperty.state = (rectProperty.state == "hideProperties")? "" : "hideProperties"
        }
    }

    RectangleProperties {
        id : rectProperty

        anchors {
            top: rectTitle.bottom
            topMargin: 1
        }

        ColumnLayout {
            id: layout
            anchors.fill: parent

            TextSliderProperty {
                nameOption: qsTr("Brightness:")

                minimumValue: -1
                maximumValue: 1
                step: 0.01
                startValue: 0

                Layout.fillWidth: true
                Layout.leftMargin: 10
                Layout.rightMargin: 10

                onValueChanged: SingletonEffects.brightness = value
                Component.onCompleted: SingletonEffects.brightness = startValue
            }

            TextSliderProperty {
                nameOption: qsTr("Contrast:")

                minimumValue: -1
                maximumValue: 1
                step: 0.01
                startValue: 0

                Layout.fillWidth: true
                Layout.leftMargin: 10
                Layout.rightMargin: 10

                onValueChanged: SingletonEffects.contrast = value
                Component.onCompleted: SingletonEffects.contrast = startValue
            }

            TextSliderProperty {
                nameOption: qsTr("Desaturate:")

                minimumValue: 0
                maximumValue: 1
                step: 0.01
                startValue: 0

                Layout.fillWidth: true
                Layout.leftMargin: 10
                Layout.rightMargin: 10

                onValueChanged: SingletonEffects.desaturate = value
                Component.onCompleted: SingletonEffects.desaturate = startValue
            }

            TextSliderProperty {
                nameOption: qsTr("Luminance:")

                minimumValue: 0
                maximumValue: 100
                step: 1
                startValue: 1

                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true

                onValueChanged: SingletonEffects.luminance = value
                Component.onCompleted: SingletonEffects.luminance = startValue
            }

            TextColorProperty{
                nameOption: qsTr("Color overlay:")
                colorDefault: "transparent"

                Layout.fillWidth: true
                Layout.leftMargin: 10
                Layout.rightMargin: 10

                onColorChanged: SingletonEffects.colorOverlay = color
                Component.onCompleted: SingletonEffects.colorOverlay = colorDefault
            }
        }
    }
}
