#ifndef HELPER_H
#define HELPER_H
#include <QObject>
#include <akndiscreetpopup.h>
#include <avkon.hrh>



class Helper : public QObject
{
    Q_OBJECT
public:
    Helper(QObject *parent = 0) : QObject(parent){ }

    Q_INVOKABLE void longpopup(){
        TRAP_IGNORE(CAknDiscreetPopup::ShowGlobalPopupL((_L("Hello,")), (_L("I am a 3 second popup.")),KAknsIIDNone, KNullDesC, 0, 0, KAknDiscreetPopupDurationLong));
    }

    Q_INVOKABLE void shortpopup(){
        TRAP_IGNORE(CAknDiscreetPopup::ShowGlobalPopupL((_L("Hello,")), (_L("I am a 1.5 second popup.")),KAknsIIDNone, KNullDesC));
    }

    Q_INVOKABLE void longpopup_dynamic(QString title, QString content){
        TPtrC16 stitle(reinterpret_cast<const TUint16*>(title.utf16()));
        TPtrC16 scontent(reinterpret_cast<const TUint16*>(content.utf16()));
        TRAP_IGNORE(CAknDiscreetPopup::ShowGlobalPopupL(stitle, scontent,KAknsIIDNone, KNullDesC, 0, 0, KAknDiscreetPopupDurationLong));
    }
    Q_INVOKABLE void shortpopup_dynamic(QString title, QString content){
        TPtrC16 stitle(reinterpret_cast<const TUint16*>(title.utf16()));
        TPtrC16 scontent(reinterpret_cast<const TUint16*>(content.utf16()));
        TRAP_IGNORE(CAknDiscreetPopup::ShowGlobalPopupL(stitle, scontent,KAknsIIDNone, KNullDesC));
    }
};

#endif // HELPER_H
