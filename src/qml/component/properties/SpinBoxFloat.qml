import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.12

SpinBox {
    id: spinBox

    property int decimals: 2
    property int minimumValue: 0
    property int maximumValue: 1
    property real startValue: 0.5
    property real step: 1

    width: 130
    editable: true
    from: minimumValue * 100
    to: maximumValue * 100
    value: startValue * 100
    stepSize: step * 100
    Material.accent: Material.Teal

    validator: DoubleValidator {
        bottom: Math.min(spinBox.from, spinBox.to)
        top:  Math.max(spinBox.from, spinBox.to)
    }

    textFromValue: function(value, locale) {
        return Number(value / 100).toLocaleString(locale, 'f', spinBox.decimals)
    }

    valueFromText: function(text, locale) {
        return Number.fromLocaleString(locale, text) * 100
    }
}
