import QtQuick 2.15
import QtQuick.Controls 2.15

Flickable {
    id: homePage
    anchors.fill: parent
    clip: true
    contentHeight: myContent.height

    Rectangle {
        width: 375
        height: myContent.height + 148
        color: "#e3f3ff"
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#e3f3ff"
            }

            GradientStop {
                position: 1
                color: "#edf7ff"
            }
            orientation: Gradient.Vertical
        }

        Image {
            x: 10
            y: 50
            width: 60
            height: 50
            source: "assets/Sidebar Button.png"
            fillMode: Image.PreserveAspectFit

            MouseArea {
                width: 60
                height: 50

                onClicked: {
                    sideBar.drawer.open()
                }
            }
        }

        Text {
            x: 70
            y: 50
            width: 217
            height: 50
            color: "#002e6e"
            text: qsTr("My Covid Record")
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Fira Sans"
            font.styleName: "Bold"
        }

        Image {
            x: 310
            y: 38
            width: 65
            height: 100
            source: "assets/Picture.png"
            fillMode: Image.PreserveAspectFit
        }

        Rectangle {
            id: scrollBarPadding
            x: 375
            y: 0
            width: 17
            height: 1257
            color: "#ffffff"
        }

        Content {
            x: 13
            y: 148
            id: myContent
        }
    }

    SideBar {
        id: sideBar
    }
}
