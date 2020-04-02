import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.12
import "pannel_effects"
import "../properties"

Rectangle {
    id: rectMain
    implicitWidth: childrenRect.width
    implicitHeight: childrenRect.height
    color: "#474747"

    PannelTitle {
        id: rectTitle
        width: parent.width
        height: 35
        title: qsTr("Blur")

        anchors.top: parent.top
        anchors.topMargin: 0

        onClickHideProperties: {
            layout.clip = true
            rectProperty.state = ( rectProperty.state == "hideProperties" )? "" : "hideProperties"
        }
    }

    RectangleProperties {
        id : rectProperty
        height: 140

        anchors.top: rectTitle.bottom
        anchors.topMargin: 1

        ColumnLayout {
            id: layout
            spacing: 0
            anchors.fill: parent

            ComboBox {
                id: cbBlur
                model: [ qsTr("Fast"), qsTr("Gaussian") ]
                Material.accent: Material.Teal

                Layout.preferredHeight: 35
                Layout.leftMargin: 15

                onActivated: gaussianBlur.state = (index)? "showGaussianBlur" : ""
            }

            PannelFastBlur {
                id: fastBlur
                Layout.preferredHeight: 80
            }

            PannelGaussianBlur {
                id: gaussianBlur
                clip: true
                Layout.preferredHeight: 0

                states: State {
                    name: "showGaussianBlur"
                    PropertyChanges { target: fastBlur; clip:true; Layout.preferredHeight:0 }
                    PropertyChanges { target: gaussianBlur; clip:false; Layout.preferredHeight:210 }
                    PropertyChanges { target: rectProperty; height:250 }
                }
            }
        }
    }
}
