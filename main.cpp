#include <QtGui/QApplication>
#include "qmlapplicationviewer.h"
#include <QDeclarativeView>
#include <QDeclarativeContext>
#include "helper.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    QmlApplicationViewer viewer;
        viewer.setAttribute(Qt::WA_LockPortraitOrientation);
        Helper helper;
        viewer.setResizeMode(QDeclarativeView::SizeRootObjectToView);
        viewer.rootContext()->setContextProperty("Helper", &helper);
        viewer.setAttribute(Qt::WA_OpaquePaintEvent);
        viewer.setAttribute(Qt::WA_NoSystemBackground);
        viewer.viewport()->setAttribute(Qt::WA_OpaquePaintEvent);
        viewer.viewport()->setAttribute(Qt::WA_NoSystemBackground);
        viewer.setSource(QUrl("qrc:/qml/main.qml"));
    viewer.showFullScreen();

    return app->exec();
}
