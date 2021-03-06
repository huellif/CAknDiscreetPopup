import QtQuick 1.1
import com.nokia.symbian 1.1
CommonDialog {
id: root
property bool __isClosing: false
height: 200
titleText: "Create short CAknDiscreetPopup"
privateCloseIcon: true
content: Item {
anchors.fill: parent
height: 350
TextField {
focus: true
objectName: "title"
id: titleobject
placeholderText: "Enter title"
anchors.top: parent.top
anchors.horizontalCenter: parent.horizontalCenter
anchors.margins: platformStyle.paddingMedium
width: parent.width - 20
}
TextField {
id: contentobject
focus: false
objectName: "content"
width: parent.width - 20
placeholderText: "Enter content"
anchors.top: titleobject.bottom
anchors.horizontalCenter: parent.horizontalCenter
}
Button {
id: go1
anchors.top: contentobject.bottom
anchors.horizontalCenter: parent.horizontalCenter
anchors.margins: platformStyle.paddingMedium
text: "launch"
width: parent.width - 20
onClicked: {Helper.shortpopup_dynamic(contentobject.text,titleobject.text)
root.destroy()
}
}
}
Component.onCompleted: open()
onStatusChanged: {
        if (status === DialogStatus.Closing) __isClosing = true
        else if (status === DialogStatus.Closed && __isClosing) root.destroy()
    }
}
