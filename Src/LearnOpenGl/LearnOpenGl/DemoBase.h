#pragma once

#include "define.h"

using namespace std;

class GLView;
class DemoBase
{
public:
	DemoBase();
	virtual ~DemoBase();
	virtual void init();

protected:

    GLView* _view;

};

