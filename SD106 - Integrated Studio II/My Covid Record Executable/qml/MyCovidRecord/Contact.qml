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
            x: 131
            y: 118
            width: 107
            height: 26
            color: "#002e6e"
            text: qsTr("Contact Us")
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Fira Sans"
            font.styleName: "Bold"
            font.weight: 700
        }

        Image {
            x: 13
            y: 161
            width: 348
            height: 472
            source: "assets/Contact.png"

            MouseArea {
                x: 48
                y: 372
                width: 250
                height: 52

                onClicked: {
                    stackView.push("Compose.qml")
                }
            }
        }
    }
}
