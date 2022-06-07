import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 240
    height: 320
    color: "#00FF00"

    visible: true
    title: qsTr("Media Player")

    Rectangle{
       // width: parent.width
        height: parent.height/5
        gradient: Gradient {
                GradientStop { position: 0.0; color: "skyblue" }
                GradientStop { position: 0.5; color: "white" }

                GradientStop { position: 1.0; color: "skyblue" }
            }

     color:"skyblue"
     anchors.horizontalCenter: parent.horizontalcenter
     anchors.left: parent.left
     anchors.right: parent.right
     anchors.leftMargin: 5
     anchors.rightMargin: 5
     visible: true

    Text{

        text: "Your Melody"
        font.pointSize: parent.height*2/5
        font.preferShaping: true
        font.styleName: "italic"

        fontSizeMode: Text.Fit
        minimumPixelSize: 10;

        color: "#2F4F4F"
        anchors.horizontalCenter: parent.horizontalcenter
        //anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 10
        anchors.rightMargin: 5
        visible: true


    }

    }
    Button{
        id:play
        text:"▶️";
        height: parent.height/10
        width: parent.width*2/9

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        visible:true
    }
    Button{
        id:pause
        text:"⏸";
        height: play.height
        width: play.width
        anchors.right: play.left
        anchors.top: play.top
        anchors.rightMargin: 3
        visible:true
    }
    Button{
        id:stop
        text:"⏹";
        height: play.height
        width: play.width
        anchors.left: play.right
        anchors.top: play.top
        anchors.leftMargin: 3
        visible:true
    }
    Button{
        id:rewind
        text:"⏪️";
        height: play.height
        width: play.width*1.5
        anchors.left: pause.left
        anchors.top: pause.bottom
        anchors.topMargin: 3
        visible:true
    }
    Button{
        id:forward
        text:"⏩️";
        height: play.height
        width: play.width*1.5
        anchors.right: stop.right
        anchors.top: stop.bottom
        anchors.topMargin: 3
        visible:true
    }
    ProgressBar{

        from: 0
        to:3
        value: 2
        width: parent.width*4/5
        height: 30


        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: forward.bottom
        anchors.topMargin: parent.height/10
        visible:true
    }

}
