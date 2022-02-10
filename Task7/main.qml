import QtQuick 2.0
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import io.qt.examples.backend 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TXT")

    Backend {
            id: backend
        }

    Text {
        id: textInput
        text:"Hello world"
        anchors.left: parent.left
        visible: true
        font.pixelSize: 25
    }

    Text {
        id: textInput1
        anchors.right: parent.right
        color:"#FF0000"
        font.pixelSize: 25
    }

    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        text: "Button"

       onClicked: {backend.text = textInput.text;
           textInput1.text = backend.text
       }
   }
}
