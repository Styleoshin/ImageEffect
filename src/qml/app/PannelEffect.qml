import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.3
import "../component/pannels"

ScrollView {
    id :scroll

    contentWidth: -1

    ColumnLayout {
        id: columnLayout
        spacing: 15

        anchors.fill: parent

        PannelGeneral { id: general }
        PannelColor { id: color }
        PannelGlow { id: glow }
        PannelLevelAdjust { id: lvlAdjust }
        PannelShadow { id: shadow }
        PannelBlur { id: blur }
        PannelMotionBlur { id: motionBlur }
    }
}
