import QtQuick 2.12
import QtQuick.Controls 2.14
import "../Singleton"

Rectangle {
    id: rectangle

    property string imageSource: ""

    color: "#303030"

    MyImage {
        id: imgSource
        source: imageSource

        sourceSize {
            height: parent.height * SingletonImage.sizeScale
            width: parent.width * SingletonImage.sizeScale
        }

        anchors.fill: parent
        anchors.margins: 150
    }

    Effects {
        id: effects
        anchors.fill: imgSource
        imgSource: imgSource
    }

    function saveImage(path) {
        effects.grabToImage(function(image) {
            image.saveToFile(path);
        });
    }
}
