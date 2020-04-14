import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14
import "../Singleton"
import "../component/properties/"

Dialog {
    id: dlDial

    title: qsTr("Change scale:")
    height: 120; width: 240

    contentItem: RowLayout {
        spacing: 1

        Label {
            text: qsTr("Scale: ")
            font.pointSize: 9

            MouseArea {
                anchors.fill: parent
                onDoubleClicked: SingletonImage.sizeScale = spin.defaultValue
            }
        }

        SpinBoxFloat {
            id: spin

            editable: true
            minimumValue: 0
            maximumValue: 1
            defaultValue: SingletonImage.sizeScale
            step: 0.01
            Layout.preferredWidth: 130

            onValueChanged: SingletonImage.sizeScale= value / 100
        }
    }
}
