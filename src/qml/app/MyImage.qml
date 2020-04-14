import QtQuick 2.12
import QtQuick.Controls 2.14
import "../Singleton"

Image {
    id: imgSource

    signal loaded

    fillMode: SingletonImage.fillmode
    mirror: SingletonImage.mirror

    source: imageSource
    mipmap: true
    antialiasing: true
    smooth: true

    anchors {
        centerIn: parent
    }

    onStatusChanged:
        switch(status) {
        case Image.Loading: console.log('Loading'); break;
        case Image.Ready: loaded(); console.log('Loaded');break;
        case Image.Null: console.log('null'); break;
        case Image.Error: console.log('error');  messageDialog.open(); break;
        default: break;
        }

    State { name: 'loading'; when: imageSource.status === Image.Loading }
    State { name: 'loaded'; when: imageSource.status === Image.Ready }
    State { name: 'null'; when: imageSource.status === Image.Null }
    State { name: 'error'; when: imageSource.status === Image.Error }

    Dialog {
        id: messageDialog
        title: qsTr("Error")
        modal: true
        standardButtons: Dialog.Ok

        anchors.centerIn: parent

        Label {
            text: qsTr("Can't load the image")
            color: "#FFFFFF"
            font.pointSize: 9
        }
    }
}
