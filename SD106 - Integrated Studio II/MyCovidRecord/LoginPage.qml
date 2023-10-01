import QtQuick 2.15
import QtQuick.Controls 2.15

Flickable {
    Rectangle {
        id: mainLogin

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

        //title
        Image {
            x: 36
            y: 38
            width: 339
            height: 173
            source: "assets/Login Main Logo.png"
        }

        //login module
        Image {
            x: 14
            y: 218
            width: 348
            height: 556
            source: "assets/Login Module.png"

            //email input
            Rectangle {
                x: 21
                y: 73
                width: 311
                height: 50
                radius: 8
                color: "#F6F6F6"
                border.color: "#E8E8E8"

                TextInput {
                    id: myEmail
                    x: 16
                    y: 0
                    width: 295
                    height: 50

                    color: "#BDBDBD"
                    text: qsTr("Email")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Inter"
                    font.weight: 500
                }
            }

            //password input
            Rectangle {
                x: 21
                y: 143
                width: 311
                height: 50
                radius: 8
                color: "#F6F6F6"
                border.color: "#E8E8E8"

                TextInput {
                    id: myPassword
                    x: 16
                    y: 0
                    width: 295
                    height: 50

                    color: "#BDBDBD"
                    text: qsTr("Password")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Inter"
                    font.weight: 500
                }
            }

            //login button
            MouseArea {
                x: 44
                y: 240
                width: 258
                height: 43

                onClicked: function() {
                    if(myEmail.text !== "Email") {
                        if(myPassword.text !== "Password") {
                            myEmail.color = "#BDBDBD"
                            myPassword.color = "#BDBDBD"
                            stackView.push("App.qml")
                        }
                    } else {
                        myEmail.text = "Email"
                        myPassword.text = "Password"
                        myEmail.color = "red"
                        myPassword.color = "red"
                    }
                }
            }

            //RealMe Button
            MouseArea {
                x: 82
                y: 393
                width: 184
                height: 41

                onClicked: {
                    mainLogin.visible = false
                    realMe.visible = true
                }
            }

            //Sign Up Button
            MouseArea {
                x: 74
                y: 516
                width: 209
                height: 40

                onClicked: {
                    stackView.push("SignUpPage.qml")
                }
            }
        }
    }

    Rectangle {
        visible: false
        id: realMe

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

        //title
        Image {
            x: 36
            y: 38
            width: 339
            height: 173
            source: "assets/Login Main Logo.png"
        }

        //login module
        Image {
            x: 14
            y: 230
            width: 346
            height: 459
            source: "assets/RealMe Module.png"

            //username input
            Rectangle {
                x: 20
                y: 192
                width: 307
                height: 50
                radius: 8
                color: "#F6F6F6"
                border.color: "#E8E8E8"

                TextInput {
                    id: myUsername
                    x: 16
                    y: 0
                    width: 295
                    height: 50

                    color: "#BDBDBD"
                    text: qsTr("Username")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Inter"
                    font.weight: 500
                }
            }

            //password input
            Rectangle {
                x: 20
                y: 262
                width: 307
                height: 50
                radius: 8
                color: "#F6F6F6"
                border.color: "#E8E8E8"

                TextInput {
                    id: myRealMePassword
                    x: 16
                    y: 0
                    width: 295
                    height: 50

                    color: "#BDBDBD"
                    text: qsTr("Password")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Inter"
                    font.weight: 500
                }
            }

            //login button
            MouseArea {
                x: 32
                y: 331
                width: 290
                height: 48

                onClicked: function() {
                    if(myUsername.text !== "Username") {
                        if(myRealMePassword.text !== "Password") {
                            myUsername.color = "#BDBDBD"
                            myRealMePassword.color = "#BDBDBD"
                            stackView.push("App.qml")
                        }
                    } else {
                        myUsername.text = "Username"
                        myRealMePassword.text = "Password"
                        myUsername.color = "red"
                        myRealMePassword.color = "red"
                    }
                }
            }
        }
    }
}
