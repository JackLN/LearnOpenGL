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
    _view->SetDelegate(this);
    _camera = Camera(glm::vec3(0.0f, 0.0f, 3.0f));
}

void DemoBase::onGLFWKeyCallback(GLFWwindow* window, int key, int scancode, int action, int mode)
{
    if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
        glfwSetWindowShouldClose(_view->GetGLFWWindow(), GL_TRUE);
    if (key >= 0 && key < 1024)
    {
        if (action == GLFW_PRESS)
            _keys[key] = true;
        else if(action == GLFW_RELEASE)
            _keys[key] = false;
    }

}

void DemoBase::onGLFWMouseMoveCallBack(GLFWwindow* window, double xpos, double ypos)
{
    if (_firstMouse)
    {
        _firstMouse = false;
        _lastX = xpos;
        _lastY = ypos;
    }

    GLfloat offsetX = xpos - _lastX;
    GLfloat offsetY = _lastY - ypos;

    _lastX = xpos;
    _lastY = ypos;

    _camera.ProcessMouseMovement(offsetX, offsetY);

}

void DemoBase::onGLFWMouseScrollCallback(GLFWwindow* window, double x, double y)
{
    _camera.ProcessMouseScroll(y);
}

void DemoBase::do_movement()
{
    if (_keys[GLFW_KEY_W])
        _camera.ProcessKeyboard(FORWARD, _deltaTime);
    if (_keys[GLFW_KEY_A])
        _camera.ProcessKeyboard(LEFT, _deltaTime);
    if (_keys[GLFW_KEY_S])
        _camera.ProcessKeyboard(BACKWARD, _deltaTime);
    if (_keys[GLFW_KEY_D])
        _camera.ProcessKeyboard(RIGHT, _deltaTime);
}

