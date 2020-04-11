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

        TextSliderProperty {
            nameOption: qsTr("Radius:")

            minimumValue: 0
            maximumValue: 100
            step: 5
            defaultValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.gsBlurRadius = value
            Component.onCompleted: SingletonEffects.gsBlurRadius = defaultValue
        }

        TextSliderProperty {
            nameOption: qsTr("Samples:")

            minimumValue: 0
            maximumValue: 100
            step: 5
            defaultValue: 9

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.gsBlurSamples = value
            Component.onCompleted: SingletonEffects.gsBlurSamples = defaultValue
        }

        TextSliderProperty {
            nameOption: qsTr("Deviation:")

            minimumValue: 0
            maximumValue: 100
            step: 5
            defaultValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.gsBlurDeviation = value
            Component.onCompleted: SingletonEffects.gsBlurDeviation = defaultValue
        }

        TextCheckboxProperty {
            nameOption: qsTr("Transparent border:")
            checkState: false

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onCheckStateChanged: SingletonEffects.gsBlurTransparentBorder = checkState
            Component.onCompleted: SingletonEffects.gsBlurTransparentBorder = checkStateDefault
        }
    }
}

