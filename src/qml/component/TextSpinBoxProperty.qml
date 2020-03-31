import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.12

Item {
    id: element
    implicitWidth: 200
    implicitHeight: 35
    property string nameOption: ""
    property int minimum_value: 0
    property int maximum_value: 1
    property real start_value: 0.5
    property real step_size: 0.01

    Label {
        id: label
        text: nameOption
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        font.pointSize: 9

        MouseArea {
            anchors.fill: parent
            onDoubleClicked: spinBox.value = element.start_value * 100
        }
    }

    SpinBoxFloat {
        id: spinBox
        width: 180
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.verticalCenter: parent.verticalCenter
        editable: true
        minimum_value: element.minimum_value
        maximum_value: element.maximum_value
        start_value: element.start_value
        step_size: element.step_size


        onValueChanged: slider.value = value / 100
    }
}
