#include <QtWidgets/QApplication>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>

int main(int argc, char** argv)
{
    QApplication app(argc, argv);

    QMainWindow* pMainWindow = new QMainWindow();    
    
    QLabel* pLabel = new QLabel(pMainWindow);
    pLabel->setText("I am a label");

    pMainWindow->setCentralWidget(pLabel);

    pMainWindow->show();

    int retVal = app.exec();

    delete pLabel;
    delete pMainWindow;

    return retVal;
}