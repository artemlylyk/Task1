import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
visible: true
width: 640
height: 480
title: qsTr("Hello World")

Rectangle {
    id: rrec
    width: 25
    height: 25
    color: "#FF0000"

        Text {
            id: textIndex
            text: ""
        }
}

ListView {
    currentIndex: 1
    id: listView1
    anchors.top: rrec.bottom
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    anchors.right: parent.right

    delegate: Item {
        id: item
        anchors.left: parent.left
        anchors.right: parent.right
        height: 40

    }

    Button{
       id: button1

        text: qsTr("Button")
        onClicked: {textIndex.text = listView1.currentIndex }
    }

}
}
