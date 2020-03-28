import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Dialogs 1.0

Item {
    id: element
    implicitWidth: 200
    implicitHeight: 35
    property string nameOption: ""
    signal chooseColor(string color)

    Label {
        id: label
        text: nameOption
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        font.pointSize: 9
    }

    Rectangle {
        width: 27
        height: 18
        color: "#d4ffec"
        radius: 5
        border.width: 0
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

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        MouseArea {
            anchors.fill: parent
            onClicked: colorDialog.open()
        }
    }

    ColorDialog {
        id: colorDialog
        title: qsTr("Please choose a color")
        onAccepted: {
            chooseColor(colorDialog.color)
        }
    }
}
