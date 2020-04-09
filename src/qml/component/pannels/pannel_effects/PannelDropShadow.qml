import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../../properties"

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
        }

        TextCheckboxProperty {
            nameOption: qsTr("Transparent border:")

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10
        }
    }
}
