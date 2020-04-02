import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.12

Item {
    id: element

    property string nameOption: ""

    signal checkedState(bool state)

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
    }

    CheckBox {
        id: checkBox
        Material.accent: Material.Teal

        anchors {
            horizontalCenter: parent.horizontalCenter
            verticalCenter: parent.verticalCenter
        }

        onCheckedChanged: checkedState( (checkState === Qt.Checked)? true:false )
    }
}
