import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.0

ApplicationWindow {
visible: true
width: 300
height: 200
title: qsTr("Hello World")

ListView{
   id:list
   anchors.fill: parent
   model: 4
   delegate: Rectangle {
       id: name
       
       height: 50

       Button{
          anchors.left: parent.left
          text:"Btn"
          onClicked: list.currentIndex = index
       }
   }
ColumnLayout{
    anchors.right: parent.right

        Text {
            text: "Currentindex is " + list.currentIndex
        }
    }
  }
}
