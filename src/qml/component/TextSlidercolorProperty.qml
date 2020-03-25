import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.12

Item {
    id: element
    implicitWidth: 200
    implicitHeight: 35
    property string nameOption: ""
    property int start_value: 50

    Label {
        id: label
        text: nameOption
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        font.pointSize: 11

        MouseArea {
            anchors.fill: parent
            onDoubleClicked: start_value = 50
        }
    }

    Slider {
        id: slider
        width: 150
        height: 10
        anchors.right: spinBox.left
        anchors.rightMargin: 10
        anchors.verticalCenter: parent.verticalCenter
        value: start_value / 100
        Material.accent: Material.Teal

        onValueChanged:
        {
            start_value = value * 100
        }

        background: Image {
            source: "qrc:/image/slider_color.png"
            anchors.fill: parent
        }

        handle: Rectangle{
            x:slider.leftPadding + slider.visualPosition * (slider.availableWidth - width)
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

    SpinBox {
        id: spinBox
        width: 120
        editable: true
        from: 0
        value: start_value
        to: 100
        stepSize: 1
        Material.accent: Material.Teal

        property int decimals: 2
        property real realValue: value / 100

        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.verticalCenter: parent.verticalCenter

        validator: DoubleValidator {
            bottom: Math.min(spinBox.from, spinBox.to)
            top:  Math.max(spinBox.from, spinBox.to)
        }

        textFromValue: function(value, locale) {
            return Number(value / 100).toLocaleString(locale, 'f', spinBox.decimals)
        }

        valueFromText: function(text, locale) {
            return Number.fromLocaleString(locale, text) * 100
        }

        onValueChanged: start_value = value
    }
}
