# Form implementation generated from reading ui file 'nodeconfqtGUI.ui_swp'
#
# Created: Fri Jan 11 14:00:05 2013
#      by: The PerlQt User Interface Compiler (puic)
#
# WARNING! All changes made in this file will be lost!


use strict;
use utf8;


package nodeconfqtGUI;
use Qt;
use Qt::isa qw(Qt::Widget);
use Qt::attributes qw(
    tabWidget2
    tab
    pushButton1
    pushButton2
    groupBox5
    textLabel1_3
    textLabel1_2
    textLabel1_2_2_2
    textLabel1_2_2_3
    textLabel1_2_2_3_2
    textLabel1_3_2_2
    textLabel1_2_2_3_2_2
    textLabel1_3_2_2_2
    textLabel1_2_3_2_2
    textLabel1_4_2
    textLabel1_2_2
    lineEdit14
    lineEdit15
    lineEdit8
    lineEdit9
    lineEdit3
    lineEdit4
    lineEdit5
    lineEdit1
    textLabel1_2_3
    lineEdit6
    lineEdit7
    textLabel1_4
    lineEdit2
    lineEdit17
    lineEdit16
    textLabel1_3_2
    textLabel1_2_3_2
    textLabel2
    textLabel1
    lineEdit11
    lineEdit10
    lineEdit13
    lineEdit12
    tab_2
    groupBox4
    pushButton3
    pushButton1_2
    textLabel1_6
    dirLineEdit
    groupBox5_2
    textLabel1_3_3
    textLabel1_2_4
    textLabel1_2_2_2_2
    textLabel1_2_2_3_3
    textLabel1_3_2_2_3
    textLabel1_2_2_4
    textLabel1_4_3
    lineEdit1_2
    lineEdit2_2
    lineEdit3_2
    lineEdit4_2
    lineEdit5_2
    lineEdit6_2
    lineEdit7_2
    lineEdit9_2
    lineEdit10_2
    lineEdit11_2
    lineEdit12_2
    lineEdit13_2
    textLabel1_4_2_2_2
    textLabel1_4_2_2
    textLabel1_2_3_2_2_2
    textLabel1_2_2_3_2_3
    lineEdit14_2
    lineEdit16_2
    lineEdit15_2
    textLabel2_2
    textLabel1_2_3_2_3
    textLabel1_5
    textLabel1_2_3_3
    textLabel1_3_2_3
    lineEdit8_2
);



sub NEW
{
    shift->SUPER::NEW(@_[0..2]);

    if ( name() eq "unnamed" )
    {
        setName("nodeconfqtGUI" );
    }


    tabWidget2 = Qt::TabWidget(this, "tabWidget2");
    tabWidget2->setGeometry( Qt::Rect(20, 20, 520, 780) );

    tab = Qt::Widget(tabWidget2, "tab");

    pushButton1 = Qt::PushButton(tab, "pushButton1");
    pushButton1->setGeometry( Qt::Rect(380, 670, 110, 30) );

    pushButton2 = Qt::PushButton(tab, "pushButton2");
    pushButton2->setGeometry( Qt::Rect(270, 670, 90, 30) );

    groupBox5 = Qt::GroupBox(tab, "groupBox5");
    groupBox5->setGeometry( Qt::Rect(20, 20, 470, 600) );

    textLabel1_3 = Qt::Label(groupBox5, "textLabel1_3");
    textLabel1_3->setGeometry( Qt::Rect(20, 90, 68, 20) );

    textLabel1_2 = Qt::Label(groupBox5, "textLabel1_2");
    textLabel1_2->setGeometry( Qt::Rect(20, 60, 68, 20) );

    textLabel1_2_2_2 = Qt::Label(groupBox5, "textLabel1_2_2_2");
    textLabel1_2_2_2->setGeometry( Qt::Rect(20, 150, 68, 20) );

    textLabel1_2_2_3 = Qt::Label(groupBox5, "textLabel1_2_2_3");
    textLabel1_2_2_3->setGeometry( Qt::Rect(20, 280, 140, 20) );

    textLabel1_2_2_3_2 = Qt::Label(groupBox5, "textLabel1_2_2_3_2");
    textLabel1_2_2_3_2->setGeometry( Qt::Rect(20, 420, 140, 20) );

    textLabel1_3_2_2 = Qt::Label(groupBox5, "textLabel1_3_2_2");
    textLabel1_3_2_2->setGeometry( Qt::Rect(20, 390, 140, 20) );

    textLabel1_2_2_3_2_2 = Qt::Label(groupBox5, "textLabel1_2_2_3_2_2");
    textLabel1_2_2_3_2_2->setGeometry( Qt::Rect(20, 550, 140, 20) );

    textLabel1_3_2_2_2 = Qt::Label(groupBox5, "textLabel1_3_2_2_2");
    textLabel1_3_2_2_2->setGeometry( Qt::Rect(20, 520, 140, 20) );

    textLabel1_2_3_2_2 = Qt::Label(groupBox5, "textLabel1_2_3_2_2");
    textLabel1_2_3_2_2->setGeometry( Qt::Rect(20, 490, 130, 20) );

    textLabel1_4_2 = Qt::Label(groupBox5, "textLabel1_4_2");
    textLabel1_4_2->setGeometry( Qt::Rect(20, 460, 110, 20) );

    textLabel1_2_2 = Qt::Label(groupBox5, "textLabel1_2_2");
    textLabel1_2_2->setGeometry( Qt::Rect(20, 120, 68, 20) );

    lineEdit14 = Qt::LineEdit(groupBox5, "lineEdit14");
    lineEdit14->setGeometry( Qt::Rect(180, 460, 270, 21) );

    lineEdit15 = Qt::LineEdit(groupBox5, "lineEdit15");
    lineEdit15->setGeometry( Qt::Rect(180, 490, 270, 21) );

    lineEdit8 = Qt::LineEdit(groupBox5, "lineEdit8");
    lineEdit8->setGeometry( Qt::Rect(180, 250, 270, 21) );

    lineEdit9 = Qt::LineEdit(groupBox5, "lineEdit9");
    lineEdit9->setGeometry( Qt::Rect(180, 280, 270, 21) );

    lineEdit3 = Qt::LineEdit(groupBox5, "lineEdit3");
    lineEdit3->setGeometry( Qt::Rect(110, 90, 270, 21) );

    lineEdit4 = Qt::LineEdit(groupBox5, "lineEdit4");
    lineEdit4->setGeometry( Qt::Rect(110, 120, 270, 21) );

    lineEdit5 = Qt::LineEdit(groupBox5, "lineEdit5");
    lineEdit5->setGeometry( Qt::Rect(110, 150, 270, 21) );

    lineEdit1 = Qt::LineEdit(groupBox5, "lineEdit1");
    lineEdit1->setGeometry( Qt::Rect(110, 30, 270, 21) );

    textLabel1_2_3 = Qt::Label(groupBox5, "textLabel1_2_3");
    textLabel1_2_3->setGeometry( Qt::Rect(20, 190, 130, 20) );

    lineEdit6 = Qt::LineEdit(groupBox5, "lineEdit6");
    lineEdit6->setGeometry( Qt::Rect(180, 190, 270, 21) );

    lineEdit7 = Qt::LineEdit(groupBox5, "lineEdit7");
    lineEdit7->setGeometry( Qt::Rect(180, 220, 270, 21) );

    textLabel1_4 = Qt::Label(groupBox5, "textLabel1_4");
    textLabel1_4->setGeometry( Qt::Rect(20, 350, 130, 20) );

    lineEdit2 = Qt::LineEdit(groupBox5, "lineEdit2");
    lineEdit2->setGeometry( Qt::Rect(110, 60, 270, 21) );

    lineEdit17 = Qt::LineEdit(groupBox5, "lineEdit17");
    lineEdit17->setGeometry( Qt::Rect(180, 550, 270, 21) );

    lineEdit16 = Qt::LineEdit(groupBox5, "lineEdit16");
    lineEdit16->setGeometry( Qt::Rect(180, 520, 270, 21) );

    textLabel1_3_2 = Qt::Label(groupBox5, "textLabel1_3_2");
    textLabel1_3_2->setGeometry( Qt::Rect(20, 250, 144, 20) );

    textLabel1_2_3_2 = Qt::Label(groupBox5, "textLabel1_2_3_2");
    textLabel1_2_3_2->setGeometry( Qt::Rect(20, 320, 156, 20) );

    textLabel2 = Qt::Label(groupBox5, "textLabel2");
    textLabel2->setGeometry( Qt::Rect(20, 30, 84, 20) );

    textLabel1 = Qt::Label(groupBox5, "textLabel1");
    textLabel1->setGeometry( Qt::Rect(20, 220, 90, 20) );

    lineEdit11 = Qt::LineEdit(groupBox5, "lineEdit11");
    lineEdit11->setGeometry( Qt::Rect(180, 350, 270, 21) );

    lineEdit10 = Qt::LineEdit(groupBox5, "lineEdit10");
    lineEdit10->setGeometry( Qt::Rect(180, 320, 270, 21) );

    lineEdit13 = Qt::LineEdit(groupBox5, "lineEdit13");
    lineEdit13->setGeometry( Qt::Rect(180, 420, 270, 21) );

    lineEdit12 = Qt::LineEdit(groupBox5, "lineEdit12");
    lineEdit12->setGeometry( Qt::Rect(180, 390, 270, 21) );
    tabWidget2->insertTab( tab, "" );

    tab_2 = Qt::Widget(tabWidget2, "tab_2");

    groupBox4 = Qt::GroupBox(tab_2, "groupBox4");
    groupBox4->setGeometry( Qt::Rect(40, 610, 450, 120) );

    pushButton3 = Qt::PushButton(groupBox4, "pushButton3");
    pushButton3->setGeometry( Qt::Rect(220, 70, 100, 30) );

    pushButton1_2 = Qt::PushButton(groupBox4, "pushButton1_2");
    pushButton1_2->setGeometry( Qt::Rect(340, 70, 100, 30) );

    textLabel1_6 = Qt::Label(groupBox4, "textLabel1_6");
    textLabel1_6->setGeometry( Qt::Rect(10, 20, 171, 20) );

    dirLineEdit = Qt::LineEdit(groupBox4, "dirLineEdit");
    dirLineEdit->setGeometry( Qt::Rect(120, 20, 320, 23) );

    groupBox5_2 = Qt::GroupBox(tab_2, "groupBox5_2");
    groupBox5_2->setGeometry( Qt::Rect(10, 20, 480, 570) );

    textLabel1_3_3 = Qt::Label(groupBox5_2, "textLabel1_3_3");
    textLabel1_3_3->setGeometry( Qt::Rect(20, 90, 68, 20) );

    textLabel1_2_4 = Qt::Label(groupBox5_2, "textLabel1_2_4");
    textLabel1_2_4->setGeometry( Qt::Rect(20, 60, 68, 20) );

    textLabel1_2_2_2_2 = Qt::Label(groupBox5_2, "textLabel1_2_2_2_2");
    textLabel1_2_2_2_2->setGeometry( Qt::Rect(20, 150, 68, 20) );

    textLabel1_2_2_3_3 = Qt::Label(groupBox5_2, "textLabel1_2_2_3_3");
    textLabel1_2_2_3_3->setGeometry( Qt::Rect(20, 280, 140, 20) );

    textLabel1_3_2_2_3 = Qt::Label(groupBox5_2, "textLabel1_3_2_2_3");
    textLabel1_3_2_2_3->setGeometry( Qt::Rect(20, 390, 140, 20) );

    textLabel1_2_2_4 = Qt::Label(groupBox5_2, "textLabel1_2_2_4");
    textLabel1_2_2_4->setGeometry( Qt::Rect(20, 120, 68, 20) );

    textLabel1_4_3 = Qt::Label(groupBox5_2, "textLabel1_4_3");
    textLabel1_4_3->setGeometry( Qt::Rect(20, 350, 130, 20) );

    lineEdit1_2 = Qt::LineEdit(groupBox5_2, "lineEdit1_2");
    lineEdit1_2->setGeometry( Qt::Rect(110, 30, 270, 21) );

    lineEdit2_2 = Qt::LineEdit(groupBox5_2, "lineEdit2_2");
    lineEdit2_2->setGeometry( Qt::Rect(110, 60, 270, 21) );

    lineEdit3_2 = Qt::LineEdit(groupBox5_2, "lineEdit3_2");
    lineEdit3_2->setGeometry( Qt::Rect(110, 90, 270, 21) );

    lineEdit4_2 = Qt::LineEdit(groupBox5_2, "lineEdit4_2");
    lineEdit4_2->setGeometry( Qt::Rect(110, 120, 270, 21) );

    lineEdit5_2 = Qt::LineEdit(groupBox5_2, "lineEdit5_2");
    lineEdit5_2->setGeometry( Qt::Rect(110, 150, 270, 21) );

    lineEdit6_2 = Qt::LineEdit(groupBox5_2, "lineEdit6_2");
    lineEdit6_2->setGeometry( Qt::Rect(180, 190, 270, 21) );

    lineEdit7_2 = Qt::LineEdit(groupBox5_2, "lineEdit7_2");
    lineEdit7_2->setGeometry( Qt::Rect(180, 220, 270, 21) );

    lineEdit9_2 = Qt::LineEdit(groupBox5_2, "lineEdit9_2");
    lineEdit9_2->setGeometry( Qt::Rect(180, 280, 270, 21) );

    lineEdit10_2 = Qt::LineEdit(groupBox5_2, "lineEdit10_2");
    lineEdit10_2->setGeometry( Qt::Rect(180, 320, 270, 21) );

    lineEdit11_2 = Qt::LineEdit(groupBox5_2, "lineEdit11_2");
    lineEdit11_2->setGeometry( Qt::Rect(180, 350, 270, 21) );

    lineEdit12_2 = Qt::LineEdit(groupBox5_2, "lineEdit12_2");
    lineEdit12_2->setGeometry( Qt::Rect(180, 390, 270, 21) );

    lineEdit13_2 = Qt::LineEdit(groupBox5_2, "lineEdit13_2");
    lineEdit13_2->setGeometry( Qt::Rect(180, 420, 270, 21) );

    textLabel1_4_2_2_2 = Qt::Label(groupBox5_2, "textLabel1_4_2_2_2");
    textLabel1_4_2_2_2->setGeometry( Qt::Rect(20, 520, 110, 20) );

    textLabel1_4_2_2 = Qt::Label(groupBox5_2, "textLabel1_4_2_2");
    textLabel1_4_2_2->setGeometry( Qt::Rect(20, 460, 110, 20) );

    textLabel1_2_3_2_2_2 = Qt::Label(groupBox5_2, "textLabel1_2_3_2_2_2");
    textLabel1_2_3_2_2_2->setGeometry( Qt::Rect(20, 490, 130, 20) );

    textLabel1_2_2_3_2_3 = Qt::Label(groupBox5_2, "textLabel1_2_2_3_2_3");
    textLabel1_2_2_3_2_3->setGeometry( Qt::Rect(20, 420, 140, 20) );

    lineEdit14_2 = Qt::LineEdit(groupBox5_2, "lineEdit14_2");
    lineEdit14_2->setGeometry( Qt::Rect(180, 460, 270, 21) );

    lineEdit16_2 = Qt::LineEdit(groupBox5_2, "lineEdit16_2");
    lineEdit16_2->setGeometry( Qt::Rect(180, 520, 270, 21) );

    lineEdit15_2 = Qt::LineEdit(groupBox5_2, "lineEdit15_2");
    lineEdit15_2->setGeometry( Qt::Rect(180, 490, 270, 21) );

    textLabel2_2 = Qt::Label(groupBox5_2, "textLabel2_2");
    textLabel2_2->setGeometry( Qt::Rect(20, 30, 84, 20) );

    textLabel1_2_3_2_3 = Qt::Label(groupBox5_2, "textLabel1_2_3_2_3");
    textLabel1_2_3_2_3->setGeometry( Qt::Rect(20, 320, 156, 20) );

    textLabel1_5 = Qt::Label(groupBox5_2, "textLabel1_5");
    textLabel1_5->setGeometry( Qt::Rect(20, 220, 90, 20) );

    textLabel1_2_3_3 = Qt::Label(groupBox5_2, "textLabel1_2_3_3");
    textLabel1_2_3_3->setGeometry( Qt::Rect(20, 190, 130, 20) );

    textLabel1_3_2_3 = Qt::Label(groupBox5_2, "textLabel1_3_2_3");
    textLabel1_3_2_3->setGeometry( Qt::Rect(20, 250, 144, 20) );

    lineEdit8_2 = Qt::LineEdit(groupBox5_2, "lineEdit8_2");
    lineEdit8_2->setGeometry( Qt::Rect(180, 250, 270, 21) );
    tabWidget2->insertTab( tab_2, "" );
    languageChange();
    my $resize = Qt::Size(560, 819);
    $resize = $resize->expandedTo(minimumSizeHint());
    resize( $resize );
    clearWState( &Qt::WState_Polished );
}


#  Sets the strings of the subwidgets using the current
#  language.

sub languageChange
{
    setCaption(trUtf8("Nodeconfiguration") );
    pushButton1->setText( trUtf8("Save changes") );
    pushButton2->setText( trUtf8("Open file") );
    groupBox5->setTitle( "" );
    textLabel1_3->setText( trUtf8("Ownerid") );
    textLabel1_2->setText( trUtf8("Type") );
    textLabel1_2_2_2->setText( trUtf8("Port") );
    textLabel1_2_2_3->setText( trUtf8("Arm Manager Port") );
    textLabel1_2_2_3_2->setText( trUtf8("Object Manager") );
    textLabel1_3_2_2->setText( trUtf8("Object Manager Node") );
    textLabel1_2_2_3_2_2->setText( trUtf8("Config version") );
    textLabel1_3_2_2_2->setText( trUtf8("Default user") );
    textLabel1_2_3_2_2->setText( trUtf8("Debug level") );
    textLabel1_4_2->setText( trUtf8("Configuration DB") );
    textLabel1_2_2->setText( trUtf8("Address") );
    lineEdit8->setText( "" );
    lineEdit9->setText( "" );
    textLabel1_2_3->setText( trUtf8("Arm Manager Node") );
    lineEdit6->setText( "" );
    lineEdit7->setText( "" );
    textLabel1_4->setText( trUtf8("Templates Source") );
    textLabel1_3_2->setText( trUtf8("Arm Manager Address") );
    textLabel1_2_3_2->setText( trUtf8("Templates Source Node") );
    textLabel2->setText( trUtf8("Object name") );
    textLabel1->setText( trUtf8("Arm Manager") );
    tabWidget2->changeTab( tab, trUtf8("Single") );
    groupBox4->setTitle( "" );
    pushButton3->setText( trUtf8("Print all nodes") );
    pushButton1_2->setText( trUtf8("Save changes") );
    textLabel1_6->setText( trUtf8("Directory path:") );
    dirLineEdit->setText( "" );
    groupBox5_2->setTitle( trUtf8("Change property for all nodes in a directory:") );
    textLabel1_3_3->setText( trUtf8("Ownerid") );
    textLabel1_2_4->setText( trUtf8("Type") );
    textLabel1_2_2_2_2->setText( trUtf8("Port") );
    textLabel1_2_2_3_3->setText( trUtf8("Arm Manager Port") );
    textLabel1_3_2_2_3->setText( trUtf8("Object Manager Node") );
    textLabel1_2_2_4->setText( trUtf8("Address") );
    textLabel1_4_3->setText( trUtf8("Templates Source") );
    lineEdit6_2->setText( "" );
    lineEdit7_2->setText( "" );
    lineEdit9_2->setText( "" );
    textLabel1_4_2_2_2->setText( trUtf8("Default user") );
    textLabel1_4_2_2->setText( trUtf8("Configuration DB") );
    textLabel1_2_3_2_2_2->setText( trUtf8("Debug level") );
    textLabel1_2_2_3_2_3->setText( trUtf8("Object Manager") );
    textLabel2_2->setText( trUtf8("Object name") );
    textLabel1_2_3_2_3->setText( trUtf8("Templates Source Node") );
    textLabel1_5->setText( trUtf8("Arm Manager") );
    textLabel1_2_3_3->setText( trUtf8("Arm Manager Node") );
    textLabel1_3_2_3->setText( trUtf8("Arm Manager Address") );
    lineEdit8_2->setText( "" );
    tabWidget2->changeTab( tab_2, trUtf8("Directory") );
}


1;
