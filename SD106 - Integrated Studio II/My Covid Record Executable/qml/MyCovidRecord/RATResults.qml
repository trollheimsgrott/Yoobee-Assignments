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

        //title
        Text {
            x: 90
            y: 83
            width: 197
            height: 58
            color: "#002e6e"
            opacity: 0.7
            text: qsTr("Report RAT Result")
            font.pixelSize: 23
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Fira Sans"
            font.styleName: "Bold"
            font.weight: 700
        }

        Image {
            x: 14
            y: 148
            width: 348
            height: 596
            source: "assets/Results Module.png"

            Item {
                Image {
                    id: myselfImage
                    x: 21
                    y: 275
                    width: 300
                    height: 40
                    source: "assets/Switch Yes.png"

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
                    x: 21
                    y: 275
                    width: 300
                    height: 40
                    source: "assets/Switch No.png"

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

            Item {
                Image {
                    id: myselfImage2
                    x: 21
                    y: 354
                    width: 300
                    height: 40
                    source: "assets/Switch Yes.png"

                    MouseArea {
                        id: myselfButton2
                        x: 158
                        y: 0
                        width: 157
                        height: 43

                        onClicked: {
                            myselfImage2.visible = false
                            someoneElseImage2.visible = true
                        }
                    }
                }

                Image {
                    id: someoneElseImage2
                    x: 21
                    y: 354
                    width: 300
                    height: 40
                    source: "assets/Switch No.png"

                    MouseArea {
                        id: someoneElseButton2
                        x: 0
                        y: 0
                        width: 158
                        height: 43

                        onClicked: {
                            someoneElseImage2.visible = false
                            myselfImage2.visible = true
                        }
                    }
                }
            }

            MouseArea {
                x: 30
                y: 492
                width: 290
                height: 48

                onClicked: {
                    stackView.push("App.qml")
                }
            }
        }
    }
}
