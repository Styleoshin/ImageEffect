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

        TextSpinBoxProperty {
            nameOption: qsTr("Radius:")

            minimumValue: 0
            maximumValue: 10000
            step: 100
            startValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.gsBlurRadius = value
            Component.onCompleted: SingletonEffects.gsBlurRadius = startValue
        }

        TextSpinBoxProperty {
            nameOption: qsTr("Samples:")

            minimumValue: 0
            maximumValue: 10000
            step: 100
            startValue: 9

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.gsBlurSamples = value
            Component.onCompleted: SingletonEffects.gsBlurSamples = startValue
        }

        TextSpinBoxProperty {
            nameOption: qsTr("Deviation:")

            minimumValue: 0
            maximumValue: 10000
            step: 100
            startValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.gsBlurDeviation = value
            Component.onCompleted: SingletonEffects.gsBlurDeviation = startValue
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

