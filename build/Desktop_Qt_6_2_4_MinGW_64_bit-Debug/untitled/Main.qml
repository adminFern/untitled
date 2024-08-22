import QtQuick

Window {
    id: mainwin
    width: 700
    height: 500
    visible: true
    minimumWidth: mainwin.width
    minimumHeight: mainwin.height
    maximumWidth: mainwin.width
    maximumHeight: mainwin.height
    title: qsTr("QML学习之路")
    //加载后默认旋转


    Item {
        id: a
        width: 100
        height: 100
         y:5
         x:5

        Rectangle{
            id:rct_defaultrotation
             y:15
            width: 100
            height: 100
            color: "blue"
            radius: 10 //圆角大小
            anchors.horizontalCenter:parent.horizontalCenter

            //动画属性
            RotationAnimation on rotation{
                from: 0  //起始角度，默认为当前角度
                to: 360  //终止角度
                duration: 3000  //动画时间
                //running: true //默认加载完就run
                loops: 1 //默认旋转次数
            }

        }
        Text {
                text: "加载后默认旋转3次";
                color: "black";
                font.pointSize: 9;
            }
    }

    Item {
        id: b
        width: 100
        height: 100
        x: 150
        y:5
        Rectangle{
            y:15
            width: 100
            height: 100
            color: "blueviolet"
            radius: 10 //圆角大小
            id: rect_blue
            RotationAnimation{
            id: rotation_blue
            target: rect_blue //关联动画对象
            from: 0
            to: 360
            duration: 2000
            loops: 8 //默认旋转次数
            }

            MouseArea{
                            anchors.fill: parent
                            onClicked: rotation_blue.start(); //手动执行
                        }

        }
        Text {

                text: "加载后默认旋转3次";
                color: "black";
                font.pointSize: 9;
            }

    }

}




// Rectangle{

//  id:rct_MouseEventTrigger
//  width: 20
//  height: 100
//  color: "forestgreen"
//  radius: 5 //圆角大小

// }



 //    Rectangle{
 //        id:maintrunk
 //        width: 20
 //        height: 220
 //        color: "blue"
 //        anchors.horizontalCenter:parent.horizontalCenter
 //        anchors.bottom: parent.bottom


 //        RotationAnimation on rotation {
 //                        from: 0  //起始角度，默认为当前角度
 //                        to: 360  //终止角度
 //                        duration: 2000  //动画时间
 //                        //running: true //默认加载完就run
 //                       loops: 10      //默认循环1次
 //                    }




 //    }
 //    Rectangle{
 //        id:rect
 //        width: 180
 //        height: 20
 //        color: "darkviolet"
 //        anchors.bottom: maintrunk.top
 //        anchors.horizontalCenter:maintrunk.horizontalCenter
 //        radius: 5
 //        antialiasing: true

 //        states: State {
 //                  name: "rotated"
 //                  PropertyChanges { target: rect; rotation: 180 }
 //              }
 //        transitions: Transition {
 //                   RotationAnimation {
 //                       id: rotation_blue
 //                       duration: 1500; direction: RotationAnimation.Counterclockwise
 //                       loops: Animation.Infinite
 //                   }
 //               }
 // MouseArea { anchors.fill: parent;
 //     onClicked: {
 //         rect.state = "rotated"


 //     } }
 //    }



