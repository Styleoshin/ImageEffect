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

            minimumValue: -180
            maximumValue: 180
            step: 1
            startValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.directionalAngle = value
            Component.onCompleted: SingletonEffects.directionalAngle = startValue
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

            onValueChanged: SingletonEffects.directionalSamples = value
            Component.onCompleted: SingletonEffects.directionalSamples = startValue
        }

        TextSpinBoxProperty {
            nameOption: qsTr("Lenght:")

            minimumValue: 0
            maximumValue: 1000
            step: 25
            startValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.directionalLenght = value
            Component.onCompleted: SingletonEffects.directionalLenght = startValue
        }

        TextCheckboxProperty {
            nameOption: qsTr("Transparent border:")
            checkStateDefault: false

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onCheckStateChanged: SingletonEffects.directionalTransparentBorder = checkState
            Component.onCompleted: SingletonEffects.directionalTransparentBorder = checkStateDefault
        }
    }
}
