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
            onDoubleClicked: spinBox.value = ((element.maximum_value + element.minimum_value) / 2) * 100
        }
    }

    Slider {
        id: slider
        width: 140
        height: 20
        from: element.minimum_value
        to: element.maximum_value
        value: element.start_value
        stepSize: element.step_size
        Material.accent: Material.Teal

        anchors.right: spinBox.left
        anchors.verticalCenter: parent.verticalCenter
        onValueChanged: spinBox.value = value * 100
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

        onValueChanged: slider.value = value / 100
    }
}
