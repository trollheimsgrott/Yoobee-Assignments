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
            source: "assets/Report RAT Result.png"

            Item {
                Image {
                    id: myselfImage
                    x: 16
                    y: 83
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
                    x: 16
                    y: 83
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

            //mobile number
            Rectangle {
                x: 97
                y: 171
                width: 230
                height: 45
                radius: 7
                color: "white"
//                border.color: "#606D76"

                TextInput {
                    id: myNumber
                    anchors.fill: parent
                    color: "#9B9B9B"

                    text: qsTr("+64 21 123 4567")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Inter"
                    font.weight: 400
                }
            }

            MouseArea {
                x: 38
                y: 274
                width: 20
                height: 20

                property bool boxSelected: false
                onClicked: {
                    boxSelected = !boxSelected
                    checkBox.visible = boxSelected
                    continueButton.visible = boxSelected
                }
            }

            Image {
                id: checkBox
                visible: false
                x: 38
                y: 274
                width: 20
                height: 20
                source: "assets/Checkbox.png"
            }

            //continue button
            Image {
                id: continueButton
                visible: false
                x: 29
                y: 492
                width: 290
                height: 48
                source: "assets/Thin Button.png"

                Text {
                    x: 0
                    y: 0
                    width: 290
                    height: 48
                    color: "#ffffff"
                    text: qsTr("Continue")
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Fira Sans"
                    font.styleName: "Bold"
                    font.weight: 700
                }

                MouseArea {
                    x: 0
                    y: 0
                    width: 290
                    height: 48

                    onClicked: {
                        if(myNumber.text !== "") {
                            stackView.push("RATResults.qml")
                        } else {
                            myNumber.color = "red"
                        }
                    }
                }
            }
        }
    }

    SideBar {
        id: sideBar
    }
}
