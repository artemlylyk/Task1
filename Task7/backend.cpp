#include "backend.h"
#include <algorithm>

Backend::Backend(QObject *parent) :
    QObject(parent)
{
}

QString Backend::text()
{
    return m_text;
}

void Backend::setText(QString &text)
{
    std::reverse(text.begin(), text.end());

    m_text = text;
}
