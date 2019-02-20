#pragma once

#include "define.h"

class GLViewDelegate
{
public:
    virtual void onGLFWError(int errorID, const char* errorDesc) {};
    virtual void onGLFWMouseCallBack(GLFWwindow* window, int button, int action, int modify) {};
    virtual void onGLFWMouseMoveCallBack(GLFWwindow* window, double x, double y) {};
    virtual void onGLFWMouseScrollCallback(GLFWwindow* window, double x, double y) {};
    virtual void onGLFWKeyCallback(GLFWwindow* window, int key, int scancode, int action, int mods) {};
    virtual void onGLFWCharCallback(GLFWwindow* window, unsigned int character) {};
    virtual void onGLFWWindowPosCallback(GLFWwindow* windows, int x, int y) {};
    virtual void onGLFWframebuffersize(GLFWwindow* window, int w, int h) {};
    virtual void onGLFWWindowSizeFunCallback(GLFWwindow *window, int width, int height) {};
    virtual void onGLFWWindowIconifyCallback(GLFWwindow* window, int iconified) {};
};

class GLView
{
public:
    GLView();
    virtual ~GLView();

    void Init(const std::string& viewName);
    
    // GLFW callbacks
    void onGLFWError(int errorID, const char* errorDesc);
    void onGLFWMouseCallBack(GLFWwindow* window, int button, int action, int modify);
    void onGLFWMouseMoveCallBack(GLFWwindow* window, double x, double y);
    void onGLFWMouseScrollCallback(GLFWwindow* window, double x, double y);
    void onGLFWKeyCallback(GLFWwindow* window, int key, int scancode, int action, int mods);
    void onGLFWCharCallback(GLFWwindow* window, unsigned int character);
    void onGLFWWindowPosCallback(GLFWwindow* windows, int x, int y);
    void onGLFWframebuffersize(GLFWwindow* window, int w, int h);
    void onGLFWWindowSizeFunCallback(GLFWwindow *window, int width, int height);
    void onGLFWWindowIconifyCallback(GLFWwindow* window, int iconified);

    void SetDelegate(GLViewDelegate* del){ _delegate = del; }

    GLFWwindow* GetGLFWWindow(){ return _glfwWindow; }

	void HideCursor();

protected:

    GLViewDelegate* _delegate;
    GLFWwindow*     _glfwWindow;
};