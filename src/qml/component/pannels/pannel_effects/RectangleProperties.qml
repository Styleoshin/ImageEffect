import QtQuick 2.0

Rectangle {
    id : rectProperty

    implicitWidth: 410
    implicitHeight : 200
    color: "#474747"

    states: State {
        name: "hideProperties"
        PropertyChanges { target: rectProperty;  height: 0 }
    }

    transitions: Transition {
        PropertyAnimation { property: "height"; duration: 400; easing.type: Easing.InOutQuad }
    }
}
