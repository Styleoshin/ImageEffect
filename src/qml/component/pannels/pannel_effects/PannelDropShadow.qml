import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../../properties"
import "../../../Singleton"

RectangleProperties {
    id: rectMain
    color: "#474747"

    ColumnLayout {
        id: layout
        anchors.fill: parent

        TextColorProperty{
            nameOption: qsTr("Color:")
            colorDefault: "#000000"

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onColorChanged: SingletonEffects.drShadowColor = color
            Component.onCompleted: SingletonEffects.drShadowColor = colorDefault
        }

        TextSliderProperty {
            nameOption: qsTr("Radius:")

            minimumValue: 0
            maximumValue: 100
            step: 5
            startValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.drShadowRadius = value
            Component.onCompleted: SingletonEffects.drShadowRadius = startValue
        }

        TextSliderProperty {
            nameOption: qsTr("Samples:")

            minimumValue: 0
            maximumValue: 100
            step: 10
            startValue: 9

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.drShadowSamples = value
            Component.onCompleted: SingletonEffects.drShadowSamples = startValue
        }

        TextSliderProperty {
            nameOption: qsTr("Spread:")

            minimumValue: 0
            maximumValue: 1
            step: 0.01
            startValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.drShadowSpread = value
            Component.onCompleted: SingletonEffects.drShadowSpread = startValue
        }

        TextSpinBoxProperty {
            nameOption: qsTr("Horizontal offset:")

            minimumValue: -10000
            maximumValue: 10000
            step: 100
            startValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.drShadowHorizontal = value
            Component.onCompleted: SingletonEffects.drShadowHorizontal = startValue
        }

        TextSpinBoxProperty {
            nameOption: qsTr("Vertical offset:")

            minimumValue: -10000
            maximumValue: 10000
            step: 100
            startValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.drShadowVertical = value
            Component.onCompleted: SingletonEffects.drShadowVertical = startValue
        }

        TextCheckboxProperty {
            nameOption: qsTr("Transparent border:")
            checkStateDefault: true

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onCheckStateChanged: SingletonEffects.drShadowTransparentBorder = checkState
            Component.onCompleted: SingletonEffects.drShadowTransparentBorder = checkStateDefault
        }
    }
}
