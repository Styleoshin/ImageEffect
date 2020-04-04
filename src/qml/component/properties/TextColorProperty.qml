import QtQuick 2.0
import QtQuick.Controls 2.14
import ".."

Item {
    id: element

    property string nameOption: ""
    property color colorDefault: "#FFFFFF"
    property color colorCode: colorDefault

    signal chooseColor(string color)

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
                colorDialog.resetDefault()
                element.colorCode = element.colorDefault
            }
        }
    }

    Rectangle {
        width: 27
        height: 18
        color: "#d4ffec"
        radius: 5
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

        MouseArea {
            anchors.fill: parent
            onClicked: colorDialog.open()
        }
    }

    MyColorDialog{
        id: colorDialog
        value: element.colorDefault

        onValueChanged: element.colorCode = value
    }
}
