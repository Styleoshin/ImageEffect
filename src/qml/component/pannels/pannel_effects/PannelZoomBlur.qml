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
            nameOption: qsTr("Samples:")
            minimumValue: 0
            maximumValue: 100
            step: 5
            defaultValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.zoomSamples = value
            Component.onCompleted: SingletonEffects.zoomSamples = defaultValue
        }

        TextSpinBoxProperty {
            nameOption: qsTr("Length:")

            minimumValue: 0
            maximumValue: 10000
            step: 100
            defaultValue: 0
            decimals: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.zoomLenght = value
            Component.onCompleted: SingletonEffects.zoomLenght = defaultValue
        }

        TextSpinBoxProperty {
            nameOption: qsTr("Horizontal offset:")

            minimumValue: -1000
            maximumValue: 1000
            step: 50
            defaultValue: 0
            decimals: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.zoomHorizontal = value
            Component.onCompleted: SingletonEffects.zoomHorizontal = defaultValue
        }

        TextSpinBoxProperty {
            nameOption: qsTr("Vertical offset:")

            minimumValue: -1000
            maximumValue: 1000
            step: 50
            defaultValue: 0
            decimals: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.zoomVertical = value
            Component.onCompleted: SingletonEffects.zoomVertical = defaultValue
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
