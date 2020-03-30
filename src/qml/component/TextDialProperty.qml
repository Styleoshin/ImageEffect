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
            onDoubleClicked: spinBox.value = ((element.maximum_value + element.minimum_value) / 2) * 100
        }
    }

    Rectangle {
        id: rectDial
        width: 22
        height: 22
        color: "#43e97b"
        radius: 11
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
        border.width: 1
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
        minimum_value: element.minimum_value
        maximum_value: element.maximum_value
        start_value: element.start_value
        step_size: element.step_size

        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.verticalCenter: parent.verticalCenter

        onValueChanged: dial.value = value / 100
    }

    Dialog {
        id:dlDial
        Dial {
            id: dial
            from: -180
            to: 180
            stepSize: 1
            value: 0
            Material.accent: Material.Teal

            onMoved: spinBox.value = value * 100
        }
    }
}
