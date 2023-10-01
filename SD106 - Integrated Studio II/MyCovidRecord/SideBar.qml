import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: sideBar
    property alias drawer: drawer

    Drawer {
        id: drawer
        width: 313
        height: 812

        Rectangle {
            x: 0
            y: 0
            width: 375
            height: 812

            color: "#E5F2FC"

            Image {
                x: 174
                y: 166
                width: 211
                height: 520

                source: "assets/Side Picture.png"
            }
        }

        Rectangle {
            x: 0
            y: 0
            width: 313
            height: 812
            radius: 20

            color: "#FFFFFF"
            opacity: 0.85

            Rectangle {
                x: 0
                y: 0
                width: 30
                height: 812
                opacity: 0.85

                color: "#FFFFFF"
            }

            Image {
                x: 37
                y: 186
                width: 34
                height: 34

                source: "assets/Profile Button.png"
            }

            Text {
                x: 97
                y: 186
                width: 216
                height: 34

                color: "#002e6e"
                text: qsTr("John Doe")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.weight: Font.Bold
                font.family: "Fira Sans"
            }

            Image {
                x: 0
                y: pos
                width: 150
                height: 50

                source: "assets/Nav Button.png"
            }

            Item {
                x: 0
                y: 294
                width: 150
                height: 50

                Text {
                    id: homeText
                    x: 0
                    y: 0
                    width: 150
                    height: 50

                    //color: Qt.hsla(0.60, 1.00, 0.22, 1.00)
                    color: homeColor
                    text: qsTr("Home")
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.weight: Font.Bold
                    font.family: "Fira Sans"
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        pos = 294
                        homeColor = "#ffffff"
                        contactColor = "#002e6e"
                        profileColor = "#002e6e"

                        stackView.push("App.qml")
                        drawer.close()
                    }
                }
            }

            Item {
                x: 0
                y: 354
                width: 150
                height: 50

                Text {
                    id: contactText
                    x: 0
                    y: 0
                    width: 150
                    height: 50

                    color: contactColor
                    text: qsTr("Contact")
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.weight: Font.Bold
                    font.family: "Fira Sans"
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        pos = 354
                        contactColor = "#ffffff"
                        homeColor = "#002e6e"
                        profileColor = "#002e6e"

                        stackView.push("Contact.qml")
                        drawer.close()
                    }
                }
            }

            Item {
                x: 0
                y: 414
                width: 150
                height: 50

                Text {
                    id: profileText
                    x: 0
                    y: 0
                    width: 150
                    height: 50

                    color: profileColor
                    text: qsTr("Profile")
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.weight: Font.Bold
                    font.family: "Fira Sans"
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        pos = 414
                        profileColor = "#ffffff"
                        homeColor = "#002e6e"
                        contactColor = "#002e6e"

                        stackView.push("ProfilePage.qml")
                        drawer.close()
                    }
                }
            }

            Item {
                x: 0
                y: 474
                width: 150
                height: 50

                Text {
                    x: 0
                    y: 0
                    width: 150
                    height: 50

                    color: "#002e6e"
                    text: qsTr("Log Out")
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.weight: Font.Bold
                    font.family: "Fira Sans"
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        stackView.push("LoginPage.qml")
                        drawer.close()
                    }
                }
            }

            Rectangle {
                x: 41
                y: 600
                width: 150
                height: 50
                radius: 25

                Image {
                    x: 0
                    y: 12
                    width: 25
                    height: 25

                    source: "assets/Vector.png"
                }

                Text {
                    x: 25
                    y: 0
                    width: 100
                    height: 50

                    color: "#002e6e"
                    text: qsTr("Settings")
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.weight: Font.Bold
                    font.family: "Fira Sans"
                }
            }
        }
    }
}
