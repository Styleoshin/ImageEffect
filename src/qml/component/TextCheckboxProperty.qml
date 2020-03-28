import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.12

Item {
    id: element
    implicitWidth: 200
    implicitHeight: 35
    property string nameOption: ""
    signal checkedState(bool state)

    Label {
        id: label
        text: nameOption
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        font.pointSize: 9
    }

    CheckBox {
        id: checkBox
        Material.accent: Material.Teal

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        onCheckedChanged: checkedState( (checkState === Qt.Checked)? true:false )
    }
}
