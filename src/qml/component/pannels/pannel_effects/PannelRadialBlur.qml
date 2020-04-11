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

        TextDialProperty {
            nameOption: qsTr("Angle:")

            minimumValue: 0
            maximumValue: 360
            step: 1
            startValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.radialAngle = value
            Component.onCompleted: SingletonEffects.radialAngle = startValue
        }

        TextSliderProperty {
            nameOption: qsTr("Samples:")

            minimumValue: 0
            maximumValue: 100
            step: 5
            startValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.radialSamples = value
            Component.onCompleted: SingletonEffects.radialSamples = startValue
        }

        TextSpinBoxProperty {
            nameOption: qsTr("Horizontal offset:")

            minimumValue: -1000
            maximumValue: 1000
            step: 50
            startValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.radialHorizontal = value
            Component.onCompleted: SingletonEffects.radialHorizontal = startValue
        }

        TextSpinBoxProperty {
            nameOption: qsTr("Vertical offset:")

            minimumValue: -1000
            maximumValue: 1000
            step: 50
            startValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.radialVertical = value
            Component.onCompleted: SingletonEffects.radialVertical = startValue
        }

        TextCheckboxProperty {
            nameOption: qsTr("Transparent border:")
            checkStateDefault: false

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onCheckStateChanged: SingletonEffects.radialTransparentBorder = checkState
            Component.onCompleted: SingletonEffects.radialTransparentBorder = checkStateDefault
        }
    }
}
