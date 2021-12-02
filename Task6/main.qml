import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
visible: true
width: 640
height: 480
title: qsTr("Hello World")

ListView{
   id:list
   anchors.fill: parent
   model: 3
   currentIndex : 1
   delegate: Text {
       Rectangle{
           height: 30
           width: 20
       }
       id: name
       height: 50
       Button{
          text:"Btn"
           onClicked: list.currentIndex  = index
       }
   }

   Text {
       x: 350
       text: "Currentindex is " + list.currentIndex
   }
}
}
