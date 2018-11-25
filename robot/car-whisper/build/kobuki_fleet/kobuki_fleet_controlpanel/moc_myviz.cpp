/****************************************************************************
** Meta object code from reading C++ file 'myviz.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/kobuki_fleet/kobuki_fleet_controlpanel/src/myviz.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'myviz.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_MyViz[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
       6,   16,   16,   16, 0x0a,
      17,   53,   16,   16, 0x0a,
      59,   53,   16,   16, 0x0a,
      92,   16,   16,   16, 0x0a,
     108,   16,   16,   16, 0x0a,
     120,   16,   16,   16, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_MyViz[] = {
    "MyViz\0callRos()\0\0refreshInformation(ros::TimerEvent)\0"
    "event\0publishVelocity(ros::TimerEvent)\0"
    "createNewTask()\0killRobot()\0respawnRobot()\0"
};

void MyViz::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        MyViz *_t = static_cast<MyViz *>(_o);
        switch (_id) {
        case 0: _t->callRos(); break;
        case 1: _t->refreshInformation((*reinterpret_cast< const ros::TimerEvent(*)>(_a[1]))); break;
        case 2: _t->publishVelocity((*reinterpret_cast< const ros::TimerEvent(*)>(_a[1]))); break;
        case 3: _t->createNewTask(); break;
        case 4: _t->killRobot(); break;
        case 5: _t->respawnRobot(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData MyViz::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject MyViz::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_MyViz,
      qt_meta_data_MyViz, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &MyViz::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *MyViz::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *MyViz::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_MyViz))
        return static_cast<void*>(const_cast< MyViz*>(this));
    return QWidget::qt_metacast(_clname);
}

int MyViz::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
