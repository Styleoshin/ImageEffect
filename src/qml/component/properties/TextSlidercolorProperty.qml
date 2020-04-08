import QtQuick 2.0
import QtQuick.Controls 2.14

Item {
    id: element

    property string nameOption: ""
    property int minimumValue: 0
    property int maximumValue: 1
    property real startValue: 0.5
    property real step: 0.01
    property real value: startValue

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
            onDoubleClicked:
            {
                spinBox.value = element.startValue * 100
                element.value = element.startValue
            }
        }
    }

    Slider {
        id: slider

        width: 132
        height: 10
        from: element.minimumValue
        to: element.maximumValue
        value: element.startValue
        stepSize: element.step
        onValueChanged:
        {
            spinBox.value = (value * 100).toFixed(0)
            element.value = value
        }
        anchors{
            right: spinBox.left
            verticalCenter: parent.verticalCenter
        }

        background: Rectangle {
            width: parent.height
            height: parent.width

            rotation: 90
            radius: 4

            anchors.centerIn: parent

            gradient: Gradient {
                GradientStop { position: 1.0;  color: "#FF0000" }
                GradientStop { position: 0.85; color: "#FFFF00" }
                GradientStop { position: 0.76; color: "#00FF00" }
                GradientStop { position: 0.5;  color: "#00FFFF" }
                GradientStop { position: 0.33; color: "#0000FF" }
                GradientStop { position: 0.16; color: "#FF00FF" }
                GradientStop { position: 0.0;  color: "#FF0000" }
            }
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
        minimumValue: element.minimumValue
        maximumValue: element.maximumValue
        startValue: element.startValue
        step: element.step

        anchors {
            right: parent.right
            verticalCenter: parent.verticalCenter
        }

        onValueChanged: {
            slider.value = value / 100
            element.value = value / 100
        }
    }
}
