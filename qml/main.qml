import QtQuick 1.1
import com.nokia.symbian 1.1

PageStackWindow {
    id: window
    initialPage: MainPage {tools: toolBarLayout}
    showStatusBar: true
    showToolBar: true

    ToolBarLayout {
        id: toolBarLayout
        ToolButton {
            flat: true
            iconSource: "toolbar-back"
            onClicked: Qt.quit()
        }
    }
}
