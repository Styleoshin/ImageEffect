import QtQuick 2.12
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

Dialog {
    id: colorDialog

    property color value: "#FFFFFF"

    implicitWidth: 220; implicitHeight: 370
    title: qsTr("Pick a color")
    standardButtons: Dialog.Ok | Dialog.Reset

    onAccepted: value = txtfCode.text
    onReset: resetDefault()

    contentItem: ColumnLayout {
        width: parent.width; height: parent.height
        spacing: 20

        Item {
            id: colorPicker

            property color hueColor : hsba(hueSlider.value, 1.0, 1.0, 1.0)
            property real saturation : pickerCursor.x/width
            property real brightness : 1 - pickerCursor.y/height

            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: 160
            Layout.preferredHeight: 160

            Rectangle {
                anchors.fill: colorPicker
                rotation: -90
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "#FFFFFF" }
                    GradientStop { position: 1.0; color: colorPicker.hueColor }
                }
            }

            Rectangle {
                anchors.fill: colorPicker
                gradient: Gradient {
                    GradientStop { position: 1.0; color: "#FF000000" }
                    GradientStop { position: 0.0; color: "#00000000" }
                }
            }

            Item {
                id: pickerCursor
                property int r : 8

                Rectangle {
                    x: -parent.r; y: -parent.r
                    width: parent.r*2; height: parent.r*2
                    radius: parent.r
                    border.color: "black"; border.width: 2
                    color: "transparent"

                    Rectangle {
                        anchors.fill: parent; anchors.margins: 2;
                        border.color: "white"; border.width: 2
                        radius: width/2
                        color: "transparent"
                    }
                }
            }

            MouseArea {
                anchors.fill: parent

                onPositionChanged: handleMouse(mouse)
                onPressed: handleMouse(mouse)

                function handleMouse(mouse) {
                    if (mouse.buttons & Qt.LeftButton) {
                        pickerCursor.x = Math.max(0, Math.min(width,  mouse.x));
                        pickerCursor.y = Math.max(0, Math.min(height, mouse.y));
                    }
                    colorDialog.value = getCode()
                    txtfCode.text = getCode()
                }
            }
        }

        Slider {
            id: hueSlider

            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: 150
            Layout.preferredHeight: 10

            onValueChanged: {
                colorDialog.value = getCode()
                txtfCode.text = getCode()
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
                x:  hueSlider.leftPadding + hueSlider.visualPosition * (hueSlider.availableWidth - (width * 0.01)) - 5
                y:  hueSlider.topPadding +  hueSlider.availableHeight / 2 - height / 2
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

        RowLayout {
            Layout.fillWidth: true

            Label {
                text: qsTr("Html code:")
            }

            TextField {
                id: txtfCode

                text: getCode()
                maximumLength: 7

                Layout.preferredWidth: 70
                Layout.topMargin: 5

                onAccepted: colorDialog.value = text
            }
        }
    }

    //  creates color value from hue, saturation, brightness, alpha
    function hsba(h, s, b, a) {
        var lightness = (2 - s)*b;
        var satHSL = s*b/((lightness <= 1) ? lightness : 2 - lightness);
        lightness /= 2;
        return Qt.hsla(h, satHSL, lightness, a);
    }

    // return the code
    function getCode() {
        return hsba(hueSlider.value, colorPicker.saturation, colorPicker.brightness, 1.0)
    }

    // restore all defaults
    function resetDefault(colorDefault) {
        pickerCursor.x = 0
        pickerCursor.y = 0
        hueSlider.value = 0
        value = "#FFFFFF"
        txtfCode.text = getCode()
    }
}
