import QtQuick 2.15
import QtQuick.Controls 2.15

Flickable {
    Rectangle {
        width: 375
        height: 812
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

        //side bar button
        Image {
            x: 1
            y: 38
            width: 60
            height: 50
            source: "assets/Sidebar Button.png"

            MouseArea {
                x: 0
                y: 0
                width: 60
                height: 50
                onClicked: {
                    sideBar.drawer.open()
                }
            }
        }

        //title
        Text {
            id: helpTitle
            x: 61
            y: 30
            width: 253
            height: 58
            color: "#002e6e"
            text: qsTr("Help")
            font.pixelSize: 23
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Fira Sans"
            font.styleName: "Bold"
            font.weight: 700
        }

        //I want to...
        Image {
            x: 14
            y: 88
            width: 347
            height: 347
            source: "assets/I want to.png"
        }

        //Vaccines
        Image {
            x: 14
            y: 445
            width: 347
            height: 101
            source: "assets/Vaccines.png"
        }

        //Testing and tracing
        Image {
            x: 14
            y: 556
            width: 347
            height: 101
            source: "assets/Testing and tracing.png"
        }

        //Isolation
        Image {
            x: 14
            y: 667
            width: 347
            height: 101
            source: "assets/Isolation.png"
        }
    }

    SideBar {
        id: sideBar
    }
}
