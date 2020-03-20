import QtQuick.Controls 2.14

MenuBar {
    Menu {
        title: qsTr("&File")
        Action { text: qsTr("&Open file...") }
        Action { text: qsTr("Save &As...") }
        MenuSeparator { }
        Action { text: qsTr("&Quit") }
    }
    Menu {
        title: qsTr("&Help")
        Action { text: qsTr("&About") }
    }
}
