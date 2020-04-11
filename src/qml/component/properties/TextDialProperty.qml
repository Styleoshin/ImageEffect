import QtQuick 2.0
import QtQuick.Controls 2.14

Item {
    id: element

    property string nameOption: ""
    property int minimumValue: 0
    property int maximumValue: 1
    property real defaultValue: 0.5
    property real step: 0.01
    property real value: defaultValue

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
            onDoubleClicked: {
                spinBox.value = element.defaultValue * 100
                element.value = element.defaultValue
            }
        }
    }

    Rectangle {
        id: rectDial

        width: 22
        height: 22
        color: "#43e97b"
        radius: 11
        border.width: 1
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#92fe9d"
            }

            GradientStop {
                position: 1
                color: "#00c9ff"
            }
        }

        anchors.centerIn: parent

        MouseArea{
            anchors.fill: parent

            onClicked: {
                if(!dlDial.opened)
                    dlDial.open()
            }
        }
    }

    SpinBoxFloat {
        id: spinBox

        width: 145
        editable: true
        minimumValue: element.minimumValue
        maximumValue: element.maximumValue
        defaultValue: element.defaultValue
        step: element.step

        anchors {
            right: parent.right
            verticalCenter: parent.verticalCenter
        }

        onValueChanged: {
            dial.value = value / 100
            element.value = value / 100
        }
    }

    Dialog {
        id:dlDial

        Dial {
            id: dial

            from: element.minimumValue
            to:  element.maximumValue
            stepSize: element.step
            value: element.defaultValue

            onMoved: {
                spinBox.value = value * 100
                element.value = value
            }
        }
    }
}
