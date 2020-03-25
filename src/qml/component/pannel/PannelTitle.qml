import QtQuick 2.0

Rectangle {

    implicitWidth: 400
    implicitHeight: 25
    color: "#474747"

    signal clickHideProperties()
    property string title : ""

    Text {
        color: "#ffffff"
        text: title
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 40
        font.italic: false
        font.bold: true
        font.pointSize: 16
    }

    Image {
        id: imgShowProperties
        source: "qrc:/icons/show_properties.png"
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.verticalCenter: parent.verticalCenter

        MouseArea {
            anchors.fill: parent
            onClicked:
            {
                parent.state = (parent.state == "hideProperties")? "" : "hideProperties"
                clickHideProperties()
            }
        }

        states: State {
            name: "hideProperties"
            PropertyChanges { target: imgShowProperties;  source: "qrc:/icons/hide_properties.png" }
        }
    }

    Rectangle {
        height: 2
        radius: 50
        color: "#3f3f3f"
        anchors.left: parent.left
        anchors.leftMargin: 50
        anchors.right: parent.right
        anchors.rightMargin: 50
        anchors.top: parent.bottom
        anchors.topMargin: -1
    }
}
