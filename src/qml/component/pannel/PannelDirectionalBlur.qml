import QtQuick 2.0
import QtQuick.Layouts 1.3
import ".."

RectangleProperties {
    id: rectMain
    color: "#474747"

    ColumnLayout {
        id: layout
        anchors.fill: parent

        TextDialProperty {
            nameOption: qsTr("Angle:")
            minimum_value: -180
            maximum_value: 180
            step_size: 1
            start_value: 0
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Layout.fillWidth: true
        }

        TextSliderProperty {
            nameOption: qsTr("Samples:")
            nameOption: qsTr("Simple:")
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Layout.fillWidth: true
        }

        TextSliderProperty {
            nameOption: qsTr("Lenght:")
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
