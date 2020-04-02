import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.12

Item {
    id: element

    property string nameOption: ""

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
                sb1.value = 1
                sb2.value = 1
                sb3.value = 1
            }
        }
    }

    RowLayout{
        spacing: 10

        anchors {
            verticalCenter: parent.verticalCenter
            right: parent.right
            rightMargin: 40
        }

        SpinBoxFloat{
            id: sb1

            minimumValue: 0
            maximumValue: 20
            step: 0.5
            startValue: 1
            Layout.preferredWidth: 50
            up.indicator: Item {}
            down.indicator: Item {}
        }

        SpinBoxFloat{
            id: sb2

            minimumValue: 0
            maximumValue: 20
            step: 0.5
            startValue: 1
            Layout.preferredWidth: 50
            up.indicator: Item {}
            down.indicator: Item {}
        }

        SpinBoxFloat{
            id: sb3

            minimumValue: 0
            maximumValue: 20
            step: 0.5
            startValue: 1
            Layout.preferredWidth: 50
            up.indicator: Item {}
            down.indicator: Item {}
        }
    }
}
