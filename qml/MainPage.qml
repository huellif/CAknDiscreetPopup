import QtQuick 1.1
import com.nokia.symbian 1.1

Page {
    id: mainPage

    Column{

        Button {
            text: "Long popup_fixed"
            onClicked: Helper.longpopup()
        }

        Button {
            text: "Short popup_fixed"
            onClicked: Helper.shortpopup()
        }
        Button {
            text: "Long popup content from QtQuick"
            onClicked: Helper.longpopup_dynamic("hallo", "test")
        }

        Button {
            text: "Short popup content from QtQuick"
            onClicked: Helper.shortpopup_dynamic("hallo", "test")
        }
        Button {
            text: "Long popup dynamic content"
            property Component __Dynamic_long: null
            onClicked:{ if (!__Dynamic_long) __Dynamic_long = Qt.createComponent("Dynamic_long.qml")
                __Dynamic_long.createObject(mainPage)}
        }

        Button {
            text: "Short popup dynamic content"
            property Component __Dynamic_short: null
            onClicked:{ if (!__Dynamic_short) __Dynamic_short = Qt.createComponent("Dynamic_short.qml")
                __Dynamic_short.createObject(mainPage)}
        }
    }
}
