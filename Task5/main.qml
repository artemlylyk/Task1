import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12

Window {
    id: wds
    width: 450
    height: 350
    visible: true
    title: qsTr("Hello World")

    NumberAnimation {
        id: anim1
        target: square
        properties: "x"
        from: 0
        to: 400
        duration: 1000
    }

    SequentialAnimation{

    id: anim2

    PropertyAnimation{
        target: square
        property: "color"
        to: "yellow"
        duration: 2000
        }
    PropertyAnimation{
        target: square
        property: "color"
        to: "dark"
        duration: 2000
        }
    }

    RotationAnimation{
        id: anim3
        target: square
        loops: Animation.Infinite
        from: 0
        to: 190

   }

    Rectangle {
        id: square
        width: 50
        height: 50
        y: 100
        color: "green"
    }

    RowLayout {
        id: rowLayout
        x: 49
        y: 235
        width: 100
        height: 100

        Button {
            id: button1
            text: qsTr("Button")

            onClicked: anim1.running = true
        }

        Button {
            id: button2
            text: qsTr("Button")

            onClicked: anim2.running = true
        }

        Button {
            id: button
            text: qsTr("Button")

            onClicked: anim3.running = true
        }

    }

    Button {
        x: 150
        y: 310
        id: button5
        text: qsTr("Stop Rotation")

        onClicked: {(anim3.running = false), (anim1.running = false), (anim2.running = false)}
    }
}

