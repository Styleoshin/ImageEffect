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
        title: qsTr("Color")

        anchors.top: parent.top
        anchors.topMargin: 0

        onClickHideProperties: {
            layout.clip = true
            rectProperty.state = (rectProperty.state == "hideProperties")? "" : "hideProperties"
        }
    }

    RectangleProperties {
        id : rectProperty
        implicitHeight: 180
        anchors.top: rectTitle.bottom

        ColumnLayout {
            id: layout
            anchors.fill: parent

            ComboBox {
                Material.accent: Material.Teal

                model: [ qsTr("Colorize"), qsTr("Hue Saturation") ]
                Layout.leftMargin: 15
                Layout.preferredWidth: 160
                Layout.preferredHeight: 35
            }

            TextSlidercolorProperty {
                nameOption: qsTr("Hue:")
                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true
            }

            TextSliderProperty {
                nameOption: qsTr("Saturation:")
                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true
            }

            TextSliderProperty {
                nameOption: qsTr("Lightness:")
                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true
            }
        }
    }
}
