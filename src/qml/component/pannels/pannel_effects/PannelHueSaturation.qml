import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../../properties"
import "../../../Singleton"

RectangleProperties {
    id : rectProperty

    ColumnLayout {
        id: layout
        anchors.fill: parent

        TextSliderProperty {
            nameOption: qsTr("Hue:")

            minimumValue: -1
            maximumValue: 1
            step: 0.01
            defaultValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.hueSatHue = value
            Component.onCompleted: SingletonEffects.hueSatHue = defaultValue
        }

        TextSliderProperty {
            nameOption: qsTr("Saturation:")

            minimumValue: -1
            maximumValue: 1
            step: 0.01
            defaultValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.hueSatSaturation = value
            Component.onCompleted: SingletonEffects.hueSatSaturation = defaultValue
        }

        TextSliderProperty {
            nameOption: qsTr("Lightness:")

            minimumValue: -1
            maximumValue: 1
            step: 0.01
            defaultValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.hueSatLightness = value
            Component.onCompleted: SingletonEffects.hueSatLightness = defaultValue
        }
    }
}
