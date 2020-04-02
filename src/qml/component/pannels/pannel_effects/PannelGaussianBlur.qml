import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../../properties"

RectangleProperties {
    id: rectMain
    color: "#474747"

    ColumnLayout {
        id: layout
        anchors.fill: parent

        TextSpinBoxProperty {
            nameOption: qsTr("Radius:")

            minimum_value: 0
            maximum_value: 10000
            step_size: 100
            start_value: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10
        }

        TextSpinBoxProperty {
            nameOption: qsTr("Samples:")

            minimum_value: 0
            maximum_value: 10000
            step_size: 100
            start_value: 9

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10
        }

        TextSpinBoxProperty {
            nameOption: qsTr("Deviation:")

            minimum_value: 0
            maximum_value: 10000
            step_size: 100
            start_value: 0

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

