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

            minimum_value: 0
            maximum_value: 1
            step_size: 0.01
            start_value: 1

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10       
        }

        TextSliderProperty {
            nameOption: qsTr("Lightness:")

            minimum_value: -1
            maximum_value: 1
            step_size: 0.01
            start_value: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10      
        }
    }
}
