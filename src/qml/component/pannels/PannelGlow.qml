import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.12
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
        title: qsTr("Glow")

        anchors.top: parent.top

        onClickHideProperties: {
            layout.clip = true
            rectProperty.state = (rectProperty.state == "hideProperties")? "" : "hideProperties"
        }
    }

    RectangleProperties {
        id : rectProperty
        implicitHeight: 200

        anchors {
            top: rectTitle.bottom
            topMargin: 1
        }

        ColumnLayout {
            id: layout
            anchors.fill: parent

            TextSliderProperty {
                nameOption: qsTr("Radius:")

                minimumValue: 0
                maximumValue: 100
                step: 1
                startValue: 1

                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true

                onValueChanged: SingletonEffects.glowRadius = value
                Component.onCompleted: SingletonEffects.glowRadius = startValue
            }

            TextSliderProperty {
                nameOption: qsTr("Samples:")

                minimumValue: 0
                maximumValue: 100
                step: 1
                startValue: 9

                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true

                onValueChanged: SingletonEffects.glowSamples = value
                Component.onCompleted: SingletonEffects.glowSamples = startValue
            }

            TextSliderProperty {
                nameOption: qsTr("Spread:")

                minimumValue: 0
                maximumValue: 1
                step: 0.01
                startValue: 0.5

                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true

                onValueChanged: SingletonEffects.glowSpread = value
                Component.onCompleted: SingletonEffects.glowSpread = startValue
            }

            TextColorProperty{
                nameOption: qsTr("Color:")
                colorDefault: "white"

                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true

                onColorChanged: SingletonEffects.glowColor = color
                Component.onCompleted: SingletonEffects.glowColor = colorDefault
            }

            TextCheckboxProperty {
                nameOption: qsTr("Transparent border:")
                checkStateDefault: true

                Layout.fillWidth: true
                Layout.leftMargin: 10
                Layout.rightMargin: 10

                onCheckStateChanged: SingletonEffects.glowTransparentBorder = checkState
                Component.onCompleted: SingletonEffects.glowTransparentBorder = checkStateDefault
            }
        }
    }
}
