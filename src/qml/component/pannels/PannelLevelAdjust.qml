import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.12
import "pannel_effects"
import "../properties"
import "../../Singleton"

Rectangle {
    id: rectMain

    implicitWidth: rectProperty.width
    implicitHeight: childrenRect.height
    color: "#474747"

    PannelTitle {
        id: rectTitle

        height: 35; width: parent.width
        title: qsTr("Level Adjust")

        anchors.top: parent.top

        onClickHideProperties: {
            layout.clip = true
            rectProperty.state = (rectProperty.state == "hideProperties")? "" : "hideProperties"
        }
    }

    RectangleProperties {
        id : rectProperty

        anchors {
            top: rectTitle.bottom
            topMargin: 1
        }

        ColumnLayout {
            id: layout
            anchors.fill: parent

            TextLvlAdjustProperty {
                nameOption: qsTr("Gamma:")
                defaultValue: Qt.vector3d(1,1,1)

                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true

                onValueChanged: SingletonEffects.lvlAdjustGamma = value
                Component.onCompleted: SingletonEffects.lvlAdjustGamma = defaultValue
            }

            TextColorProperty{
                nameOption: qsTr("Minimum input:")
                colorDefault: "#000000"

                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true

                onColorChanged: SingletonEffects.lvlAdjustMinI = color
                Component.onCompleted: SingletonEffects.lvlAdjustMinI = colorDefault
            }

            TextColorProperty{
                nameOption: qsTr("Maximum input:")
                colorDefault: "#ffffffff"

                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true

                onColorChanged: SingletonEffects.lvlAdjustMaxI = color
                Component.onCompleted: SingletonEffects.lvlAdjustMaxI = colorDefault
            }

            TextColorProperty{
                nameOption: qsTr("Minimum output:")
                colorDefault: "#000000"

                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true

                onColorChanged: SingletonEffects.lvlAdjustMinO = color
                Component.onCompleted: SingletonEffects.lvlAdjustMinO = colorDefault
            }

            TextColorProperty{
                nameOption: qsTr("Maximum output:")
                colorDefault: "#ffffffff"

                Layout.leftMargin: 10
                Layout.rightMargin: 10
                Layout.fillWidth: true

                onColorChanged: SingletonEffects.lvlAdjustMaxO = color
                Component.onCompleted: SingletonEffects.lvlAdjustMaxO = colorDefault
            }
        }
    }
}
