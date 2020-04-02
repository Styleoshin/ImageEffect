import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.12

SpinBox {
    id: spinBox
    width: 130
    editable: true
    from: minimum_value * 100
    to: maximum_value * 100
    value: start_value * 100
    stepSize: step_size * 100
    Material.accent: Material.Teal

    property int decimals: 2
    property int minimum_value: 0
    property int maximum_value: 1
    property real start_value: 0.5
    property real step_size: 1

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
