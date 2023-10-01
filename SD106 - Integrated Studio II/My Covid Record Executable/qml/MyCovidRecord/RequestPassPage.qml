import QtQuick 2.15
import QtQuick.Controls 2.15

Flickable {    
    Rectangle {
        id: request1

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

        Image {
            x: 13
            y: 65
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

        Text {
            x: 78
            y: 90
            width: 224
            height: 58
            color: "#002e6e"
            text: qsTr("Request a Pass")
            font.pixelSize: 23
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Fira Sans"
            font.styleName: "Bold"
        }

        Image {
            x: 14
            y: 148
            width: 348
            height: 563
            source: "assets/Module.png"

            Item {
                Image {
                    id: myselfImage
                    x: 20
                    y: 79
                    width: 315
                    height: 43
                    source: "assets/MyselfButton.png"

                    MouseArea {
                        id: myselfButton
                        x: 158
                        y: 0
                        width: 157
                        height: 43

                        onClicked: {
                            myselfImage.visible = false
                            someoneElseImage.visible = true
                        }
                    }
                }

                Image {
                    id: someoneElseImage
                    x: 20
                    y: 79
                    width: 315
                    height: 43
                    source: "assets/SomeoneElseButton.png"

                    MouseArea {
                        id: someoneElseButton
                        x: 0
                        y: 0
                        width: 158
                        height: 43

                        onClicked: {
                            someoneElseImage.visible = false
                            myselfImage.visible = true
                        }
                    }
                }
            }

            //radio buttons
            Item {
                Image {
                    id: topRadio
                    x: 20
                    y: 263
                    width: 21
                    height: 94
                    source: "assets/TopRadio.png"

                    MouseArea {
                        x: 0
                        y: 73
                        width: 21
                        height: 21

                        onClicked: {
                            topRadio.visible = false
                            bottomRadio.visible = true
                        }
                    }
                }

                Image {
                    id: bottomRadio
                    x: 20
                    y: 263
                    width: 21
                    height: 94
                    source: "assets/BottomRadio.png"

                    MouseArea {
                        x: 0
                        y: 0
                        width: 21
                        height: 21

                        onClicked: {
                            bottomRadio.visible = false
                            topRadio.visible = true
                        }
                    }
                }
            }

            //continue button
            MouseArea {
                x: 29
                y: 417
                width: 290
                height: 48

                onClicked: {
                    request1.visible = false
                    request2.visible = true
                }
            }

            MouseArea {
                x: 29
                y: 465
                width: 290
                height: 48

                onClicked: {
                    stackView.push("App.qml")
                }
            }
        }
    }

    Rectangle {
        id: request2
        visible: false

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

        Image {
            x: 13
            y: 65
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

        Text {
            x: 77
            y: 138
            width: 224
            height: 58
            color: "#002e6e"
            text: qsTr("Request a Pass")
            font.pixelSize: 23
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Fira Sans"
            font.styleName: "Bold"
        }

        Image {
            x: 15
            y:  196
            width: 345
            height: 420
            source: "assets/RequestModule2.png"

            MouseArea {
                x: 29
                y: 324
                width: 290
                height: 48

                onClicked: {
                    stackView.push("App.qml")
                }
            }
        }
    }

    SideBar {
        id: sideBar
    }
}
