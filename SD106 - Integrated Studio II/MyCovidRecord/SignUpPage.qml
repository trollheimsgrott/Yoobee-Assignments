import QtQuick 2.15
import QtQuick.Controls 2.15

Flickable {
    property bool boxSelected: false

    Rectangle {
        id: mainSignUp

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
            source: "assets/SignUp Title.png"
        }

        //login module
        Image {
            id: signUpModule
            x: 14
            y: 236
            width: 348
            height: 490
            source: "assets/SignUp Module.png"

            //Full Name
            Rectangle {
                x: 23
                y: 75
                width: 309
                height: 50
                radius: 8
                color: "#F6F6F6"
                border.color: "#E8E8E8"

                TextInput {
                    id: myName
                    x: 16
                    y: 0
                    width: 295
                    height: 50

                    color: "#BDBDBD"
                    text: qsTr("Full Name")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Inter"
                    font.weight: 500
                }
            }

            //Email
            Rectangle {
                x: 23
                y: 143
                width: 309
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

            //DOB
            Rectangle {
                x: 23
                y: 211
                width: 309
                height: 50
                radius: 8
                color: "#F6F6F6"
                border.color: "#E8E8E8"

                TextInput {
                    id: myDOB
                    x: 16
                    y: 0
                    width: 295
                    height: 50

                    color: "#BDBDBD"
                    text: qsTr("DOB")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Inter"
                    font.weight: 500
                }
            }

            MouseArea {
                x: 30
                y: 369
                width: 290
                height: 48

                onClicked: function() {
                    if(myName.text !== "Full Name") {
                        if(myEmail.text !== "Email") {
                            if(myDOB.text !== "DOB") {
                                mainSignUp.visible = false
                                verifySignUp.visible = true
                            }
                        }
                    }

                    myName.text = "Full Name"
                    myEmail.text = "Email"
                    myDOB.text = "DOB"
                    myName.color = "red"
                    myEmail.color = "red"
                    myDOB.color = "red"
                }
            }
        }
    }

    Rectangle {
        id: verifySignUp
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

        //title
        Image {
            id: title
            x: 36
            y: 38
            width: 339
            height: 173
            source: "assets/SignUp Title.png"
        }

        //verify module
        Image {
            id: verifyModule
            x: 14
            y: 236
            width: 348
            height: 490
            source: "assets/Verify.png"

            MouseArea {
                x: 27
                y: 424
                width: 290
                height: 48

                onClicked: {
                    verifyModule.visible = false
                    myHealthAccount.visible = true
                    title.visible = false
                }
            }
        }

        //My Health Account
        Image {
            visible: false
            id: myHealthAccount
            x: 14
            y: 148
            width: 348
            height: 563
            source: "assets/My Health Account.png"

            Text {
                x: 0
                anchors.bottom: parent.top
                width: 348
                height: 60
                color: "#002E6E"
                opacity: 0.7
                text: qsTr("My Health Account")
                font.pixelSize: 23
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Fira Sans"
                font.styleName: "Bold"
                font.weight: 700
            }

            //password
            Rectangle {
                x: 20
                y: 420
                width: 309
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

            MouseArea {
                x: 29
                y: 492
                width: 290
                height: 48

                onClicked: function() {
                    if(myPassword.text !== "Password") {
                        myHealthAccount.visible = false
                        verifyYourIdentity.visible = true
                    }
                    myPassword.text = "Password"
                    myPassword.color = "red"
                }
            }
        }

        //Verify your Identity
        Image {
            visible: false
            id: verifyYourIdentity
            x: 14
            y: 148
            width: 348
            height: 563
            source: "assets/Verify your Identity.png"

            Text {
                x: 0
                anchors.bottom: parent.top
                width: 348
                height: 60
                color: "#002E6E"
                opacity: 0.7
                text: qsTr("Verify your Identity")
                font.pixelSize: 23
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Fira Sans"
                font.styleName: "Bold"
                font.weight: 700
            }

            //continue
            MouseArea {
                x: 29
                y: 417
                width: 290
                height: 48

                onClicked: {
                    verifyYourIdentity.visible = false
                    verificationMethod.visible = true
                }
            }

            //back
            MouseArea {
                x: 29
                y: 480
                width: 290
                height: 48

                onClicked: {
                    stackView.push("SignUpPage.qml")
                }
            }
        }

        //Verification Method
        Image {
            visible: false
            id: verificationMethod
            x: 14
            y: 148
            width: 348
            height: 563
            source: "assets/Verification Method.png"

            Text {
                x: 0
                anchors.bottom: parent.top
                width: 348
                height: 60
                color: "#002E6E"
                opacity: 0.7
                text: qsTr("Verification Method")
                font.pixelSize: 23
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Fira Sans"
                font.styleName: "Bold"
                font.weight: 700
            }

            Image {
                id: methodOne
                x: 20
                y: 79
                width: 316
                height: 305
                source: "assets/MethodOne.png"

                MouseArea {
                    id: methodButton
                    x: 0
                    y: 0
                    width: 316
                    height: 150

                    property bool methodSelected: true
                    onClicked: {
                        methodSelected = !methodSelected
                        if(methodSelected === false) {
                            methodOne.source = "assets/MethodTwo.png"
                            methodButton.y = 175
                        } else {
                            methodOne.source = "assets/MethodOne.png"
                            methodButton.y = 0
                        }

                    }
                }
            }

            //continue
            MouseArea {
                x: 29
                y: 417
                width: 290
                height: 48

                onClicked: {
                    verificationMethod.visible = false
                    confirmYourIdentity.visible = true
                }
            }

            //complete later {
            MouseArea {
                x: 29
                y: 480
                width: 290
                height: 48

                onClicked: {
                    verificationMethod.visible = false
                    confirmYourIdentity.visible = true
                }
            }
        }

        //Confirm your Identity
        Image {
            visible: false
            id: confirmYourIdentity
            x: 14
            y: 148
            width: 348
            height: 563
            source: "assets/Confirm your Identity.png"

            Text {
                x: 0
                anchors.bottom: parent.top
                width: 348
                height: 60
                color: "#002E6E"
                opacity: 0.7
                text: qsTr("Confirm your Identity")
                font.pixelSize: 23
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Fira Sans"
                font.styleName: "Bold"
                font.weight: 700
            }

            //nz drivers license
            Rectangle {
                x: 22
                y: 130
                width: 304
                height: 47
                radius: 7
                color: "#ffffff"
                border.color: "#606D76"

                TextInput {
                    id: myLicense
                    x: 16
                    y: 0
                    width: 309 - 16
                    height: 50

                    color: "#BDBDBD"
                    text: qsTr("NZ Drivers License")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Inter"
                    font.weight: 500
                }
            }

            //first name
            Rectangle {
                x: 22
                y: 227
                width: 304
                height: 47
                radius: 7
                color: "#ffffff"
                border.color: "#606D76"

                TextInput {
                    id: myFirstName
                    x: 16
                    y: 0
                    width: 309 - 16
                    height: 50

                    color: "#BDBDBD"
                    text: qsTr("First Name")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Inter"
                    font.weight: 500
                }
            }

            //middle name
            Rectangle {
                x: 22
                y: 285
                width: 304
                height: 47
                radius: 7
                color: "#ffffff"
                border.color: "#606D76"

                TextInput {
                    id: myMiddleName
                    x: 16
                    y: 0
                    width: 309 - 16
                    height: 50

                    color: "#BDBDBD"
                    text: qsTr("Middle Name")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Inter"
                    font.weight: 500
                }
            }

            //last name
            Rectangle {
                x: 22
                y: 344
                width: 304
                height: 47
                radius: 7
                color: "#ffffff"
                border.color: "#606D76"

                TextInput {
                    id: myLastName
                    x: 16
                    y: 0
                    width: 309 - 16
                    height: 50

                    color: "#BDBDBD"
                    text: qsTr("Last Name")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Inter"
                    font.weight: 500
                }
            }

            //continue
            MouseArea {
                x: 29
                y: 417
                width: 290
                height: 48

                onClicked: function() {
                    if(myLicense.text !== "NZ Drivers License") {
                        if(myFirstName.text !== "First Name") {
                            if(myMiddleName.text !== "Middle Name") {
                                if(myLastName.text !== "Last Name") {
                                    confirmYourIdentity.visible = false
                                    terms.visible = true
                                }
                            }
                        }
                    }

                    myLicense.text = "NZ Drivers License"
                    myFirstName.text = "First Name"
                    myMiddleName.text = "Middle Name"
                    myLastName.text = "Last Name"

                    myLicense.color = "red"
                    myFirstName.color = "red"
                    myMiddleName.color = "red"
                    myLastName.color = "red"
                }
            }

            //back
            MouseArea {
                x: 29
                y: 480
                width: 290
                height: 48

                onClicked: {
                    stackView.push("SignUpPage.qml")
                }
            }
        }

        //Terms
        Image {
            visible: false
            id: terms
            x: 14
            y: 86
            width: 348
            height: 602
            source: "assets/Terms.png"

            Text {
                x: 0
                anchors.bottom: parent.top
                width: 348
                height: 60
                color: "#002E6E"
                opacity: 0.7
                text: qsTr("Terms")
                font.pixelSize: 23
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Fira Sans"
                font.styleName: "Bold"
                font.weight: 700
            }

            Image {
                id: boxTerms
                visible: false
                x: 20
                y: 343
                width: 21
                height: 21
                source: "assets/CheckBoxTerms.png"
            }

            MouseArea {
                x: 20
                y: 343
                width: 21
                height: 21

                onClicked: {
                    boxSelected = !boxSelected
                    if(boxSelected === true) {
                        boxTerms.visible = true
                    } else {
                        boxTerms.visible = false
                    }
                }
            }

            MouseArea {
                x: 29
                y: 466
                width: 290
                height: 48

                onClicked: {
                    if(boxSelected === true) {
                        stackView.push("App.qml")
                    }
                }
            }

            MouseArea {
                x: 29
                y: 528
                width: 290
                height: 48

                onClicked: {
                    stackView.push("PrivacyStatement.qml")
                }
            }
        }
    }
}
