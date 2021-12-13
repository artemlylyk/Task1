import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.11
import QtQuick.Controls 2.15

Window {
    id: name
    width: 600
    height: 800
    visible: true
    title: qsTr("Hello World")

    RowLayout {
        anchors.fill: parent
        spacing: 0

        Flickable {
            id: flickable
            Layout.preferredWidth: parent.width / 2
            Layout.fillHeight: true
            contentWidth: width
            contentHeight: textInput.implicitHeight

        TextArea.flickable: TextArea {
            id: textInput
            selectByMouse: true
            text: "Enter text"
            wrapMode: TextArea.WrapAnywhere
        }
        ScrollBar.vertical: ScrollBar { }
    }
        Flickable {
            id: flickable1
            Layout.fillWidth: true
            Layout.fillHeight: true
            contentWidth: width
            contentHeight: textInput1.implicitHeight

       TextArea.flickable: TextArea {
            id: textInput1
            color:"#FF0000"
            wrapMode: TextArea.WrapAnywhere
        }
        ScrollBar.vertical: ScrollBar { }
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
