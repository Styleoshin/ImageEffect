import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.12
import ".."

Rectangle {
    id: rectMain
    implicitWidth: rectProperty.width
    implicitHeight: childrenRect.height
    color: "#474747"

    PannelTitle {
        id: rectTitle
        width: parent.width
        height: 35
        title: qsTr("Shadow")

        anchors.top: parent.top
        anchors.topMargin: 0

        onClickHideProperties: {
            layout.clip = true
            rectProperty.state = (rectProperty.state == "hideProperties")? "" : "hideProperties"
        }
    }

    RectangleProperties {
        id : rectProperty
        implicitHeight: 330
        anchors.top: rectTitle.bottom
        anchors.topMargin: 1

        ColumnLayout {
            id: layout
            anchors.fill: parent

            ComboBox {
                Material.accent: Material.Teal

                model: [ qsTr("Drop shadow"), qsTr("Inner shadow") ]
                Layout.leftMargin: 15
                Layout.preferredWidth: 150
                Layout.preferredHeight: 35
            }

            TextSliderProperty {
                nameOption: qsTr("Radius:")
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

            TextSliderProperty {
                nameOption: qsTr("Spread:")
                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true
            }

            TextColorProperty{
                nameOption: qsTr("Color:")
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
}
