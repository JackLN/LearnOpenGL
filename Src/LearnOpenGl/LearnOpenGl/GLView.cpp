#include "GLView.h"
#include "GLFWHandler.h"

GLView::GLView()
    :_delegate(nullptr)
    , _glfwWindow(nullptr)
{

}

GLView::~GLView()
{
    glfwTerminate();
}

void GLView::Init(const std::string& viewName)
{
    GLFWHandler::setGLView(this);

    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_RESIZABLE, GLFW_FALSE);

    _glfwWindow = glfwCreateWindow(800, 600, viewName.c_str(), nullptr, nullptr);
    glfwMakeContextCurrent(_glfwWindow);

    glfwSetKeyCallback(_glfwWindow, GLFWHandler::onGLFWKeyCallback);
    glfwSetMouseButtonCallback(_glfwWindow, GLFWHandler::onGLFWMouseCallBack);
    glfwSetCursorPosCallback(_glfwWindow, GLFWHandler::onGLFWMouseMoveCallBack);
    glfwSetScrollCallback(_glfwWindow, GLFWHandler::onGLFWMouseScrollCallback);

    //GLFW options
    //glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);


    /*glfwSetMouseButtonCallback(_glfwWindow, GLFWHandler::onGLFWMouseCallBack);
    glfwSetCursorPosCallback(_glfwWindow, GLFWHandler::onGLFWMouseMoveCallBack);
    glfwSetScrollCallback(_glfwWindow, GLFWHandler::onGLFWMouseScrollCallback);
    glfwSetCharCallback(_mainWindow, GLFWEventHandler::onGLFWCharCallback);
    glfwSetKeyCallback(_mainWindow, GLFWEventHandler::onGLFWKeyCallback);
    glfwSetWindowPosCallback(_mainWindow, GLFWEventHandler::onGLFWWindowPosCallback);
    glfwSetFramebufferSizeCallback(_mainWindow, GLFWEventHandler::onGLFWframebuffersize);
    glfwSetWindowSizeCallback(_mainWindow, GLFWEventHandler::onGLFWWindowSizeFunCallback);
    glfwSetWindowIconifyCallback(_mainWindow, GLFWEventHandler::onGLFWWindowIconifyCallback);*/

    glewExperimental = GL_TRUE;
    glewInit();

    glViewport(0, 0, 800, 600);
    glEnable(GL_DEPTH_TEST);
}

void GLView::onGLFWError(int errorID, const char* errorDesc)
{
    if (_delegate)
        _delegate->onGLFWError(errorID, errorDesc);
}

void GLView::onGLFWMouseCallBack(GLFWwindow* window, int button, int action, int modify)
{
    if (_delegate)
        _delegate->onGLFWMouseCallBack(window, button, action, modify);
}

void GLView::onGLFWMouseMoveCallBack(GLFWwindow* window, double x, double y)
{
    if (_delegate)
        _delegate->onGLFWMouseMoveCallBack(window, x, y);
}

void GLView::onGLFWMouseScrollCallback(GLFWwindow* window, double x, double y)
{
    if (_delegate)
        _delegate->onGLFWMouseScrollCallback(_glfwWindow, x, y);
}

void GLView::onGLFWKeyCallback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (_delegate)
        _delegate->onGLFWKeyCallback(window, key, scancode, action, mods);
}

void GLView::onGLFWCharCallback(GLFWwindow* window, unsigned int character)
{

}

void GLView::onGLFWWindowPosCallback(GLFWwindow* windows, int x, int y)
{

}

void GLView::onGLFWframebuffersize(GLFWwindow* window, int w, int h)
{

}

void GLView::onGLFWWindowSizeFunCallback(GLFWwindow *window, int width, int height)
{

}

void GLView::onGLFWWindowIconifyCallback(GLFWwindow* window, int iconified)
{

}

void GLView::HideCursor()
{
	glfwSetInputMode(_glfwWindow, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
}






