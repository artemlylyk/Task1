import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.11
import QtQuick.Controls 2.15

Window {
    width: 800
    height: 780
    visible: true
    title: qsTr("Hello World")


    RowLayout {
        id: rowLayout
        parent: sd

        TextArea {
            id: textInput
            x: 15
            y: 18
            parent: rowLayout
            text: "Enter text"
            width: 608
            height: 68
            visible: true
            font.pixelSize: 12
        }

       TextArea {
            id: textInput1
            x: 15
            y: 127
            parent: rowLayout
            color:"#FF0000"
            width: 608
            height: 68
            font.pixelSize: 12
        }
    }

    Button {
        x: 500
        y: 240
        text: "Button"
        onClicked: {textInput1.text = textInput.text }
    }

}
