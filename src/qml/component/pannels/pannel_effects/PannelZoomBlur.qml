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
            nameOption: qsTr("Samples:")
            minimumValue: 0
            maximumValue: 10000
            step: 100
            startValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.zoomSamples = value
            Component.onCompleted: SingletonEffects.zoomSamples = startValue
        }

        TextSpinBoxProperty {
            nameOption: qsTr("Length:")

            minimumValue: 0
            maximumValue: 10000
            step: 100
            startValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.zoomLenght = value
            Component.onCompleted: SingletonEffects.zoomLenght = startValue
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

            onValueChanged: SingletonEffects.zoomHorizontal = value
            Component.onCompleted: SingletonEffects.zoomHorizontal = startValue
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

            onValueChanged: SingletonEffects.zoomVertical = value
            Component.onCompleted: SingletonEffects.zoomVertical = startValue
        }

        TextCheckboxProperty {
            nameOption: qsTr("Transparent border:")
            checkStateDefault: false

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onCheckStateChanged: SingletonEffects.zoomTransparentBorder = checkState
            Component.onCompleted: SingletonEffects.zoomTransparentBorder = checkStateDefault
        }
    }
}
