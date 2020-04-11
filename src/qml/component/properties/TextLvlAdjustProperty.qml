import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.12

Item {
    id: element

    property string nameOption: ""
    property variant startValue: Qt.vector3d(0,0,0)
    property variant value: startValue

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
                sb1.value = element.startValue.x * 100
                sb2.value = element.startValue.y * 100
                sb3.value = element.startValue.z * 100
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
            startValue: element.startValue.x

            Layout.preferredWidth: 50
            onValueChanged: element.value.x = value / 100

            up.indicator: Item {}
            down.indicator: Item {}
        }

        SpinBoxFloat{
            id: sb2

            minimumValue: 0
            maximumValue: 20
            step: 0.5
            startValue: element.startValue.y

            Layout.preferredWidth: 50
            onValueChanged: element.value.y = value / 100

            up.indicator: Item {}
            down.indicator: Item {}
        }

        SpinBoxFloat{
            id: sb3

            minimumValue: 0
            maximumValue: 20
            step: 0.5
            startValue: element.startValue.z

            Layout.preferredWidth: 50
            onValueChanged: element.value.z = value /100

            up.indicator: Item {}
            down.indicator: Item {}
        }
    }
}
