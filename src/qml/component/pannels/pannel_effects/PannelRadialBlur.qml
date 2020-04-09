import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../../properties"

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
        }

        TextSpinBoxProperty {
            nameOption: qsTr("Samples:")

            minimumValue: 0
            maximumValue: 10000
            step: 100
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
            checkStateDefault: false

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10
        }
    }
}
