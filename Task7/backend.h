#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QString>
#include <qqml.h>

class Backend : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString text READ text WRITE setText)
    QML_ELEMENT

public:
    explicit Backend(QObject *parent = nullptr);

    QString text();
    void setText(QString &text);

private:
    QString m_text;
};

#endif // BACKEND_H
