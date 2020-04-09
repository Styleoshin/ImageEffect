import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../../properties"

RectangleProperties {
    id : rectProperty

    ColumnLayout {
        id: layout
        anchors.fill: parent

        TextSlidercolorProperty {
            nameOption: qsTr("Hue:")

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10
        }

        TextSliderProperty {
            nameOption: qsTr("Saturation:")

            minimumValue: 0
            maximumValue: 1
            step: 0.01
            startValue: 1

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10
        }

        TextSliderProperty {
            nameOption: qsTr("Lightness:")

            minimumValue: -1
            maximumValue: 1
            step: 0.01
            startValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10      
        }
    }
}
