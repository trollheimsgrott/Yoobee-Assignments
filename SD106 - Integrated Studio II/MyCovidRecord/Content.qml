import QtQuick 2.15

Item {
    property alias requestPass: requestPass

    id: myContent
    height: 1257

    property bool profileSelected: false
    property bool vaccineSelected: false
    property bool resultsSelected: false

    ProfileDropdown {
        id: profileDropdown
        x: 4
        visible: false
    }

    Profile {
        id: profile

        profileButton.onClicked: {
            profileSelected = !profileSelected
            if(profileSelected == true) {
                vaccines.y = 555
                results.y = 666
                requestPass.y = 779
                help.y = 1003
                logOut.y = 1114
                privacy.y = 1174

                vaccineDropdown.visible = false
                resultsDropdown.visible = false
                profileDropdown.visible = true

                profile.profile.border.width = 4
                vaccines.vaccines.border.width = 0
                results.results.border.width = 0

                vaccineSelected = false
                resultsSelected = false

                myContent.height = 1701

            } else {
                vaccines.y = 111
                results.y = 222
                requestPass.y = 335
                help.y = 559
                logOut.y = 670
                privacy.y = 730

                profileDropdown.visible = false
                profile.profile.border.width = 0
                myContent.height = 1257
            }
        }
    }

    VaccineDropdown {
        id: vaccineDropdown
        x: 4
        y: 111
        visible: false
    }

    Vaccines {
        id: vaccines
        y: 111

        vaccineButton.onClicked: {
            vaccineSelected = !vaccineSelected
            if(vaccineSelected == true) {
                vaccines.y = 111
                results.y = 634
                requestPass.y = 747
                help.y = 971
                logOut.y = 1082
                privacy.y = 1142

                vaccineDropdown.visible = true
                resultsDropdown.visible = false
                profileDropdown.visible = false

                profile.profile.border.width = 0
                vaccines.vaccines.border.width = 4
                results.results.border.width = 0

                profileSelected = false
                resultsSelected = false

                myContent.height = 1669

            } else {
                vaccines.y = 111
                results.y = 222
                requestPass.y = 335
                help.y = 559
                logOut.y = 670
                privacy.y = 730

                vaccineDropdown.visible = false
                vaccines.vaccines.border.width = 0
                myContent.height = 1257
            }
        }
    }

    ResultsDropdown {
        id: resultsDropdown
        x: 4
        y: 222
        visible: false
    }

    Results {
        id: results
        y: 222

        resultsButton.onClicked: {
            resultsSelected = !resultsSelected
            if(resultsSelected == true) {
                vaccines.y = 111
                results.y = 222
                requestPass.y = 670
                help.y = 894
                logOut.y = 1005
                privacy.y = 1065

                vaccineDropdown.visible = false
                resultsDropdown.visible = true
                profileDropdown.visible = false

                profile.profile.border.width = 0
                vaccines.vaccines.border.width = 0
                results.results.border.width = 4

                profileSelected = false
                vaccineSelected = false

                myContent.height = 1592

            } else {
                vaccines.y = 111
                results.y = 222
                requestPass.y = 335
                help.y = 559
                logOut.y = 670
                privacy.y = 730

                resultsDropdown.visible = false
                results.results.border.width = 0
                myContent.height = 1257
            }
        }
    }

    RequestPass {
        id: requestPass
        y: 335
    }

    Image {
        id: help
        y: 559
        width: 349
        height: 101
        source: "assets/Help.png"
        fillMode: Image.PreserveAspectFit

        MouseArea {
            x: 0
            y: 0
            width: 349
            height: 101

            onClicked: {
                stackView.push("Help.qml")
            }
        }
    }

    Image {
        id: logOut
        x: 9
        y: 670
        width: 331
        height: 53
        source: "assets/Thin Button.png"
        fillMode: Image.PreserveAspectFit

        Text {
            x: 0
            y: 0
            width: 331
            height: 53
            color: "#ffffff"
            text: qsTr("Log Out")
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Bold
            font.family: "Fira Sans"
        }

        MouseArea {
            x: 0
            y: 0
            width: 331
            height: 53

            onClicked: {
                stackView.push("LoginPage.qml")
            }
        }
    }

    Image {
        id: privacy
        x: -13
        y: 730
        width: 375
        height: 379
        source: "assets/Privacy.png"
        fillMode: Image.PreserveAspectFit
    }
}
