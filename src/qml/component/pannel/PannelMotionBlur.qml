import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.12
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
        title: qsTr("Motion Blur")

        anchors.top: parent.top
        anchors.topMargin: 0

        onClickHideProperties: {
            layout.clip = true
            rectProperty.state = ( rectProperty.state == "hideProperties" )? "" : "hideProperties"
        }
    }

    RectangleProperties {
        id : rectProperty
        height: 210

        anchors.top: rectTitle.bottom
        anchors.topMargin: 1

        ColumnLayout {
            id: layout
            spacing: 0
            anchors.fill: parent

            ComboBox {
                id: cbMotionBlur
                model: [ qsTr("Directional"), qsTr("Radial"), qsTr("Zoom") ]
                Material.accent: Material.Teal

                Layout.preferredHeight: 35
                Layout.preferredWidth: 125
                Layout.leftMargin: 15

                onActivated: {
                    if( !index ) {
                        radialBlur.state=""
                        zoomBlur.state=""
                        directionalBlur.state="showDirectionalBlur"
                    }
                    else if( index==1 ) {
                        directionalBlur.state=""
                        zoomBlur.state=""
                        radialBlur.state="showRadialBlur"
                    }
                    else {
                        directionalBlur.state=""
                        radialBlur.state=""
                        zoomBlur.state="showZoomBlur"
                    }
                }
            }

            PannelDirectionalBlur {
                id: directionalBlur
                clip: true
                Layout.preferredHeight: 0

                states: State {
                    name: "showDirectionalBlur"
                    PropertyChanges { target: directionalBlur; clip:false; Layout.preferredHeight:160 }
                    PropertyChanges { target: rectProperty; height:210 }
                }
            }

            PannelRadialBlur {
                id: radialBlur
                clip: true
                Layout.preferredHeight: 0

                states: State {
                    name: "showRadialBlur"
                    PropertyChanges { target: radialBlur; clip:false; Layout.preferredHeight:220 }
                    PropertyChanges { target: rectProperty; height:270 }
                }
            }

            PannelZoomBlur {
                id: zoomBlur
                clip: true
                Layout.preferredHeight: 0

                states: State {
                    name: "showZoomBlur"
                    PropertyChanges { target: zoomBlur; clip:false; Layout.preferredHeight:220 }
                    PropertyChanges { target: rectProperty; height:270 }
                }
            }
        }
    }

    Component.onCompleted: directionalBlur.state="showDirectionalBlur"
}
