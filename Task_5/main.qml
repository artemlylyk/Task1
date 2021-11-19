import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    NumberAnimation {
      id: anim1
      target: square
      properties: "x"
      from: 0
      to: 600
      duration: 1000
    }

    NumberAnimation{
        id: anim2
        target: square
        properties: "y"
        from: 50
        to: 600
        duration: 1000
    }

    NumberAnimation{
        id: anim3
        target: square
        properties: "x, y"
        from: 0
        to: 600
        duration: 3000
    }


    Rectangle {
      id: square
      width: 50
      height: 50
      y: 100
      color: "green"
     }

    Button {
        id: button
        x: 49
        y: 235
        text: qsTr("Button")

        onClicked: anim1.running = true
    }

    Button {
        id: button1
        x: 270
        y: 235
        text: qsTr("Button")

        onClicked: anim2.running = true
    }

    Button {
        id: button2
        x: 494
        y: 235
        text: qsTr("Button")

        onClicked: anim3.running = true
    }
}
