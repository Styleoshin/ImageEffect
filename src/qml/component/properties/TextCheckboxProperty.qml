import QtQuick 2.0
import QtQuick.Controls 2.14

Item {
    id: element

    property string nameOption: ""

    property bool checkStateDefault: false
    property bool checkState: checkStateDefault

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
            onClicked: element.checkState = element.checkStateDefault
        }
    }

    CheckBox {
        id: checkBox
        checked: element.checkState

        anchors {
            horizontalCenter: parent.horizontalCenter
            verticalCenter: parent.verticalCenter
        }

        onCheckedChanged: element.checkState = checked
    }
}
