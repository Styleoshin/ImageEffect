import QtQuick 2.12
import QtQuick.Controls 2.14

Rectangle {
    id: rectangle

    property string imageSource: ""

    color: "#303030"

    MyImage {
        id: imgSource
        source: imageSource
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
