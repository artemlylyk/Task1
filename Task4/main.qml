import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.11
import QtQuick.Controls 2.15

Window {
    id: name
    width: 600
    height: 550
    visible: true
    title: qsTr("Hello World")

Flickable {
       anchors.fill: parent
       clip: true
       flickableDirection: Flickable.VerticalFlick
       ScrollBar.vertical: ScrollBar {}

    RowLayout {
        anchors.fill: parent
        spacing: 0
        TextArea {
            id: textInput

            Layout.preferredWidth: parent.width / 2
            Layout.fillHeight: true
            selectByMouse: true
            text: "Enter text"
            wrapMode: TextArea.WrapAnywhere
        }

        TextArea {
            id: textInput1
            Layout.fillWidth: true
            Layout.fillHeight: true
            color:"#FF0000"
            wrapMode: TextArea.WrapAnywhere
        }
    }
}
    Button {
        id: but
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        text: "Button"
        onClicked: {textInput1.text = textInput.text }
    }
}
