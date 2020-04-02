import QtQuick 2.0
import QtQuick.Layouts 1.3
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
        title: qsTr("General")

        anchors.top: parent.top

        onClickHideProperties: {
            layout.clip = true
            rectProperty.state = (rectProperty.state == "hideProperties")? "" : "hideProperties"
        }
    }

    RectangleProperties {
        id : rectProperty
        anchors.top: rectTitle.bottom
        anchors.topMargin: 15

        ColumnLayout {
            id: layout
            anchors.fill: parent

            TextSliderProperty {
                nameOption: qsTr("Brightness:")
                minimum_value: -1
                maximum_value: 1
                step_size: 0.01
                start_value: 0
                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true
            }

            TextSliderProperty {
                nameOption: qsTr("Contrast:")
                minimum_value: -1
                maximum_value: 1
                step_size: 0.01
                start_value: 0
                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true
            }

            TextSliderProperty {
                nameOption: qsTr("Desaturate:")
                minimum_value: 0
                maximum_value: 1
                step_size: 0.01
                start_value: 0
                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true

            }

            TextSliderProperty {
                nameOption: qsTr("Luminance:")
                minimum_value: 0
                maximum_value: 100
                step_size: 1
                start_value: 1
                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true
            }

            TextColorProperty{
                nameOption: qsTr("Color overlay:")
                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true
            }
        }
    }
}
