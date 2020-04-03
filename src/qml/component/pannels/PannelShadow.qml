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
        title: qsTr("Shadow")

        anchors.top: parent.top

        onClickHideProperties: {
            layout.clip = true
            rectProperty.state = (rectProperty.state == "hideProperties")? "" : "hideProperties"
        }
    }

    RectangleProperties {
        id : rectProperty
        implicitHeight: 340

        anchors {
            top: rectTitle.bottom
            topMargin: 1
        }

        ColumnLayout {
            id: layout
            spacing: 0

            anchors.fill: parent

            ComboBox {
                id: cbShadow

                model: [ qsTr("Drop shadow"), qsTr("Inner shadow") ]
                Material.accent: Material.Teal

                Layout.preferredWidth: 150
                Layout.preferredHeight: 35
                Layout.leftMargin: 15

                onActivated: innerShadow.state = (index)? "showInnerShadow" : ""
            }

            PannelDropShadow {
                id: dropShadow
                Layout.preferredHeight: 270
            }

            PannelInnerShadow {
                id: innerShadow

                clip: true
                Layout.preferredHeight: 0

                states: State {
                    name: "showInnerShadow"
                    PropertyChanges { target: dropShadow; clip:true; Layout.preferredHeight:0 }
                    PropertyChanges { target: innerShadow; clip:false; Layout.preferredHeight:310 }
                    PropertyChanges { target: rectProperty; height:380 }
                }
            }
        }
    }
}
