import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.12
import "pannel_effects"
import "../properties"

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
        anchors.topMargin: 1

        ColumnLayout {
            id: layout
            anchors.fill: parent
            spacing: 0

            ComboBox {
                Material.accent: Material.Teal

                model: [ qsTr("Colorize"), qsTr("Hue Saturation") ]
                Layout.leftMargin: 15
                Layout.preferredWidth: 160
                Layout.preferredHeight: 35
                onActivated: hueSaturation.state = (index)? "showHueSaturation" : ""

            }

            PannelColorize {
                id: colorize
                Layout.preferredHeight: 120
            }

            PannelHueSaturation {
                id: hueSaturation
                clip: true
                Layout.preferredHeight: 0

                states: State {
                    name: "showHueSaturation"
                    PropertyChanges { target: colorize; clip:true; Layout.preferredHeight:0 }
                    PropertyChanges { target: hueSaturation; clip:false; Layout.preferredHeight:120 }
                }
            }
        }
    }
}
