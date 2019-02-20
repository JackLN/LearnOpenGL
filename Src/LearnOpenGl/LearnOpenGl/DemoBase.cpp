#include "DemoBase.h"
#include "GLView.h"

DemoBase::DemoBase()
    :_view(nullptr)
{
    _view = new GLView();
}


DemoBase::~DemoBase()
{
    delete _view;
}

void DemoBase::init()
{
    
}
