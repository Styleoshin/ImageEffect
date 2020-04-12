import QtQuick 2.0
import QtQuick.Layouts 1.3
import "../../properties"
import "../../../Singleton"

RectangleProperties {
    id : rectProperty

    ColumnLayout {
        id: layout
        anchors.fill: parent


        TextCheckboxProperty {
            nameOption: qsTr("Enable:")
            checkStateDefault: false

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onCheckStateChanged: SingletonEffects.colorizeEnableEffect = checkState
            Component.onCompleted: SingletonEffects.colorizeEnableEffect = checkStateDefault
        }

        TextSlidercolorProperty {
            nameOption: qsTr("Hue:")

            minimumValue: 0
            maximumValue: 1
            step: 0.01
            defaultValue: 0

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.colorizeHue = value
            Component.onCompleted: SingletonEffects.colorizeHue = defaultValue
        }

        TextSliderProperty {
            nameOption: qsTr("Saturation:")

            minimumValue: 0
            maximumValue: 1
            step: 0.01
            defaultValue: 1

            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10

            onValueChanged: SingletonEffects.colorizeSaturation = value
            Component.onCompleted: SingletonEffects.colorizeSaturation = defaultValue
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

            onValueChanged: SingletonEffects.colorizeLightness = value
            Component.onCompleted: SingletonEffects.colorizeLightness = defaultValue
        }
    }
}
