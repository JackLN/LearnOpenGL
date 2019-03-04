#pragma once

#include "define.h"
#include "Camera.h"
#include "GLView.h"

using namespace std;

class GLView;
class DemoBase : public GLViewDelegate
{
public:
	DemoBase();
	virtual ~DemoBase();
	virtual void init();

    virtual void onGLFWKeyCallback(GLFWwindow* window, int key, int scancode, int action, int mode);
    virtual void onGLFWMouseMoveCallBack(GLFWwindow* window, double xpos, double ypos);
    virtual void onGLFWMouseScrollCallback(GLFWwindow* window, double x, double y);

    virtual void do_movement();

protected:

    GLView* _view;
    Camera  _camera;

    GLfloat _deltaTime = 0.0f;
    GLfloat _lastFrame = 0.0f;

    bool _keys[1024];

    double _lastX = 400.0;
    double _lastY = 300.0;
    bool _firstMouse = true;

};

