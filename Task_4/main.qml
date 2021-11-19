import QtQuick 2.0
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TXT")

 Rectangle{

     Text {
         id: name
         x: 0
         y: 0
         width: 264
         height: 22
         text: qsTr("Enter text:")
     }

     color: "#dcdcdc"
     visible: true
     width: 650
     height: 69

    TextArea {
        id: textInput
        x: 15
        y: 18
        width: 608
        height: 68
        visible: true
        font.pixelSize: 12
    }
}

    TextArea {
        id: textInput1
        x: 15
        y: 127
        color:"#FF0000"
        width: 608
        height: 68
        font.pixelSize: 12
    }

    Button {
        x: 270
        y: 240
        text: "Button"

       onClicked: {textInput1.text = textInput.text }
   }
}

