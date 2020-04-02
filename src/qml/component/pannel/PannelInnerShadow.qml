import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../properties"

RectangleProperties {
    id: rectMain
    color: "#474747"

    ColumnLayout {
        id: layout
        anchors.fill: parent

        TextColorProperty{
            nameOption: qsTr("Color:")
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Layout.fillWidth: true
        }

        TextSliderProperty {
            nameOption: qsTr("Radius:")
            minimum_value: 0
            maximum_value: 100
            step_size: 5
            start_value: 0
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Layout.fillWidth: true
        }

        TextSliderProperty {
            nameOption: qsTr("Samples:")
            minimum_value: 0
            maximum_value: 100
            step_size: 10
            start_value: 9
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Layout.fillWidth: true
        }

        TextSliderProperty {
            nameOption: qsTr("Spread:")
            minimum_value: 0
            maximum_value: 1
            step_size: 0.01
            start_value: 0
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Layout.fillWidth: true
        }

        TextSpinBoxProperty {
            nameOption: qsTr("Horizental offset:")
            minimum_value: -10000
            maximum_value: 10000
            step_size: 100
            start_value: 0
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Layout.fillWidth: true
        }

        TextSpinBoxProperty {
            nameOption: qsTr("Vertical offset:")
            minimum_value: -10000
            maximum_value: 10000
            step_size: 100
            start_value: 0
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Layout.fillWidth: true
        }

        TextCheckboxProperty {
            nameOption: qsTr("Transparent border:")
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Layout.fillWidth: true
        }
    }
}
