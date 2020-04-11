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

            onColorChanged: SingletonEffects.inShadowColor = color
            Component.onCompleted: SingletonEffects.inShadowColor = colorDefault
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

            onValueChanged: SingletonEffects.inShadowRadius = value
            Component.onCompleted: SingletonEffects.inShadowRadius = defaultValue
        }

        TextSliderProperty {
            nameOption: qsTr("Samples:")

            minimumValue: 0
            maximumValue: 32
            step: 1
            defaultValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.inShadowSamples = value
            Component.onCompleted: SingletonEffects.inShadowSamples = defaultValue
        }

        TextSliderProperty {
            nameOption: qsTr("Spread:")

            minimumValue: 0
            maximumValue: 1
            step: 0.01
            defaultValue: 0.5

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.inShadowSpread = value
            Component.onCompleted: SingletonEffects.inShadowSpread = defaultValue
        }

        TextSpinBoxProperty {
            nameOption: qsTr("Horizontal offset:")

            minimumValue: -2000
            maximumValue: 2000
            step: 50
            defaultValue: 0
            decimals: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.inShadowHorizontal = value
            Component.onCompleted: SingletonEffects.inShadowHorizontal = defaultValue
        }

        TextSpinBoxProperty {
            nameOption: qsTr("Vertical offset:")

            minimumValue: -2000
            maximumValue: 2000
            step: 50
            defaultValue: 0
            decimals: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.inShadowVertical = value
            Component.onCompleted: SingletonEffects.inShadowVertical = defaultValue
        }

        TextCheckboxProperty {
            nameOption: qsTr("Fast rendering:")
            checkStateDefault: false

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onCheckStateChanged: SingletonEffects.inShadowFast = checkState
            Component.onCompleted: SingletonEffects.inShadowFast = checkStateDefault
        }
    }
}
