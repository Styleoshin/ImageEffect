import QtQuick 2.0
import QtQuick.Controls 2.14

Item {
    id: element

    property string nameOption: ""
    property int minimumValue: 0
    property int maximumValue: 1
    property real startValue: 0.5
    property real step: 0.01
    property real value: startValue

    implicitWidth: 200
    implicitHeight: 35

    Label {
        id: label

        text: nameOption
        font.pointSize: 9

        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
        }

        MouseArea {
            anchors.fill: parent
            onDoubleClicked:
            {
                spinBox.value = element.startValue * 100
                element.value = element.startValue
            }
        }
    }

    SpinBoxFloat {
        id: spinBox
        width: 180
        editable: true
        minimumValue: element.minimumValue
        maximumValue: element.maximumValue
        startValue: element.startValue
        step: element.step

        onValueChanged: element.value = value / 100

        anchors {
            right: parent.right
            verticalCenter: parent.verticalCenter
        }
    }
}
