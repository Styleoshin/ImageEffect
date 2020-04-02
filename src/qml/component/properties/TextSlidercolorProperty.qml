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
            onDoubleClicked: spinBox.value = element.start_value * 100
        }
    }

    Slider {
        id: slider
        width: 132
        height: 10
        from: element.minimum_value
        to: element.maximum_value
        value: element.start_value
        stepSize: element.step_size
        Material.accent: Material.Teal

        anchors.right: spinBox.left
        anchors.verticalCenter: parent.verticalCenter

        onValueChanged: spinBox.value = value * 100

        background: Image {
            source: "qrc:/image/slider_color.png"
            anchors.fill: parent
        }

        handle: Rectangle{
            x: slider.leftPadding + slider.visualPosition * (slider.availableWidth - (width * 0.01)) - 5
            y: slider.topPadding + slider.availableHeight / 2 - height / 2
            width: 10
            height: 20
            color: "#fad0c4"
            radius: 20
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#fad0c4"
                }

                GradientStop {
                    position: 0.01
                    color: "#fad0c4"
                }

                GradientStop {
                    position: 1
                    color: "#ffd1ff"
                }
            }
        }
    }

    SpinBoxFloat {
        id: spinBox
        width: 130
        editable: true
        minimum_value: element.minimum_value
        maximum_value: element.maximum_value
        start_value: element.start_value
        step_size: element.step_size

        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.verticalCenter: parent.verticalCenter

        onValueChanged: slider.value = value / 100
    }
}
