import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.12

Rectangle {
    id: rectMain
    implicitWidth: rectProperty.width
    implicitHeight: childrenRect.height
    color: "#474747"

    PannelTitle {
        id: rectTitle
        width: parent.width
        height: 35
        title: qsTr("Glow")

        anchors.top: parent.top
        anchors.topMargin: 0

        onClickHideProperties: {
            layout.clip = true
            rectProperty.state = (rectProperty.state == "hideProperties")? "" : "hideProperties"
        }
    }

    RectangleProperties {
        id : rectProperty
        implicitHeight: 130
        anchors.top: rectTitle.bottom

        ColumnLayout {
            id: layout
            anchors.fill: parent

            TextSliderProperty {
                nameOption: qsTr("Radius:")
                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true
            }

            TextSliderProperty {
                nameOption: qsTr("Sample:")
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
        }
    }
}
