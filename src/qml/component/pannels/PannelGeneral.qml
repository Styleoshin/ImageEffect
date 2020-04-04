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

        anchors {
            top: rectTitle.bottom
            topMargin: 1
        }

        ColumnLayout {
            id: layout
            anchors.fill: parent

            TextSliderProperty {
                nameOption: qsTr("Brightness:")

                minimumValue: -1
                maximumValue: 1
                step: 0.01
                startValue: 0

                Layout.fillWidth: true
                Layout.leftMargin: 10
                Layout.rightMargin: 10
            }

            TextSliderProperty {
                nameOption: qsTr("Contrast:")

                minimumValue: -1
                maximumValue: 1
                step: 0.01
                startValue: 0

                Layout.fillWidth: true
                Layout.leftMargin: 10
                Layout.rightMargin: 10
            }

            TextSliderProperty {
                nameOption: qsTr("Desaturate:")

                minimumValue: 0
                maximumValue: 1
                step: 0.01
                startValue: 0

                Layout.fillWidth: true
                Layout.leftMargin: 10
                Layout.rightMargin: 10
            }

            TextSliderProperty {
                nameOption: qsTr("Luminance:")

                minimumValue: 0
                maximumValue: 100
                step: 1
                startValue: 1

                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true
            }

            TextColorProperty{
                nameOption: qsTr("Color overlay:")
                colorDefault: "transparent"

                Layout.fillWidth: true
                Layout.leftMargin: 10
                Layout.rightMargin: 10
            }
        }
    }
}
