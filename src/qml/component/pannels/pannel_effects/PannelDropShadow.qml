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
            defaultValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.drShadowRadius = value
            Component.onCompleted: SingletonEffects.drShadowRadius = defaultValue
        }

        TextSliderProperty {
            nameOption: qsTr("Samples:")

            minimumValue: 0
            maximumValue: 100
            step: 10
            defaultValue: 9

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.drShadowSamples = value
            Component.onCompleted: SingletonEffects.drShadowSamples = defaultValue
        }

        TextSliderProperty {
            nameOption: qsTr("Spread:")

            minimumValue: 0
            maximumValue: 1
            step: 0.01
            defaultValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.drShadowSpread = value
            Component.onCompleted: SingletonEffects.drShadowSpread = defaultValue
        }

        TextSliderProperty {
            nameOption: qsTr("Horizontal offset:")

            minimumValue: -50
            maximumValue: 50
            step: 5
            defaultValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.drShadowHorizontal = value
            Component.onCompleted: SingletonEffects.drShadowHorizontal = defaultValue
        }

        TextSliderProperty {
            nameOption: qsTr("Vertical offset:")

            minimumValue: -50
            maximumValue: 50
            step: 5
            defaultValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.drShadowVertical = value
            Component.onCompleted: SingletonEffects.drShadowVertical = defaultValue
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
