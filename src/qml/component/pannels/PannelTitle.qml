import QtQuick 2.0

Rectangle {

    property string title : ""

    signal clickHideProperties()

    implicitWidth: 400
    implicitHeight: 25
    color: "#474747"

    Text {
        color: "#ffffff"
        text: title
        font.family: "Calibri"
        font.italic: false
        font.bold: true
        font.pointSize: 14

        anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            leftMargin: 40
        }
    }

    Image {
        id: imgShowProperties

        source: "qrc:/icons/show_properties.png"
        horizontalAlignment: Text.AlignHCenter

        anchors {
            right: parent.right
            rightMargin: 0
            verticalCenter: parent.verticalCenter
        }

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

        anchors {
            left: parent.left
            leftMargin: 50
            right: parent.right
            rightMargin: 50
            top: parent.bottom
            topMargin: -1
        }
    }
}
