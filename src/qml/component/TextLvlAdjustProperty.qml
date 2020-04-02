import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.12

Item {
    id: element
    implicitWidth: 200
    implicitHeight: 35
    property string nameOption: ""

    Label {
        id: label
        text: nameOption
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        font.pointSize: 9

        MouseArea {
            anchors.fill: parent
            onDoubleClicked: {
                sb1.value = 1
                sb2.value = 1
                sb3.value = 1
            }
        }
    }

    RowLayout{
        spacing: 10
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 40

        SpinBoxFloat{
            id: sb1
            minimum_value: 0
            maximum_value: 20
            step_size: 0.5
            start_value: 1
            Layout.preferredWidth: 50
            up.indicator: Item{}
            down.indicator: Item{}
        }

        SpinBoxFloat{
            id: sb2
            minimum_value: 0
            maximum_value: 20
            step_size: 0.5
            start_value: 1
            Layout.preferredWidth: 50
            up.indicator: Item{}
            down.indicator: Item{}
        }

        SpinBoxFloat{
            id: sb3
            minimum_value: 0
            maximum_value: 20
            step_size: 0.5
            start_value: 1
            Layout.preferredWidth: 50
            up.indicator: Item{}
            down.indicator: Item{}
        }
    }
}
