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
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Layout.fillWidth: true
        }

        TextSliderProperty {
            nameOption: qsTr("Samples:")
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Layout.fillWidth: true
        }

        TextSliderProperty {
            nameOption: qsTr("Horizental offset:")
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Layout.fillWidth: true
        }

        TextSliderProperty {
            nameOption: qsTr("Vertical offset:")
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
