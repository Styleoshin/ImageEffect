import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.3
import "../qml/component/pannels"

ScrollView {
    id :scroll

    contentWidth: -1

    ColumnLayout {
        id: columnLayout

        anchors.fill: parent
        spacing: 15

        PannelGeneral { id: general }
        PannelColor { id: color }
        PannelGlow { id: glow }
        PannelBlur { id: blur }
        PannelMotionBlur { id: motionBlur }
        PannelShadow { id: shadow }
        PannelLevelAdjust { id: lvlAdjust }
    }
}
