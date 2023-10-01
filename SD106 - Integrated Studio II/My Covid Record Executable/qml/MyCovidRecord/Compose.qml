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
            x: 23
            y: 60
            width: 46
            height: 46
            source: "assets/Back Button.png"

            MouseArea {
                x: 0
                y: 0
                width: 60
                height: 50

                onClicked: {
                    stackView.push("Contact.qml")
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
            text: qsTr("Compose")
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Fira Sans"
            font.styleName: "Bold"
            font.weight: 700
        }

        Image {
            x: 16
            y: 168
            width: 348
            height: 365
            source: "assets/Compose.png"

            Rectangle {
                x: 0
                y: 0
                width: 348
                height: 302
                radius: 23
                color: "white"

                TextArea {
                    x: 15
                    y: 15
                    width: 348 - 15
                    height: 302 - 15
                    color: "#BDBDBD"
                    text: qsTr("Compose your message here...")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    font.family: "Inter"
                    font.weight: 500
                }
            }

            MouseArea {
                x: 28
                y: 317
                width: 290
                height: 48

                onClicked: {
                    popUp.visible = true
                }
            }
        }

        Image {
            x: 0
            anchors.bottom: parent.bottom
            width: 375
            height: 260
            source: "assets/Keyboard.png"
        }

        Image {
            id: popUp
            visible: false
            x: 26
            y: 215
            width: 324
            height: 222
            source: "assets/PopUpThanks.png"

            MouseArea {
                x: 21
                y: 139
                width: 290
                height: 48

                onClicked: {
                    stackView.push("App.qml")
                }
            }
        }
    }
}
