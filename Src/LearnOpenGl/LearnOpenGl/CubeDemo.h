#pragma once
#include "DemoBase.h"
#include <functional>
#include "GLView.h"

class CubeDemo : public DemoBase , public GLViewDelegate
{
public:
    CubeDemo();
    virtual ~CubeDemo();
    virtual void init();

    void do_movement();

public:

    virtual void onGLFWKeyCallback(GLFWwindow* window, int key, int scancode, int action, int mode);
    virtual void onGLFWMouseMoveCallBack(GLFWwindow* window, double xpos, double ypos);
	virtual void onGLFWMouseScrollCallback(GLFWwindow* window, double x, double y);

protected:
    GLfloat deltaTime = 0.0f;	// Time between current frame and last frame
    GLfloat lastFrame = 0.0f;  	// Time of last frame

    glm::vec3 cameraPos = glm::vec3(0.0f, 0.0f, 3.0f);
    glm::vec3 cameraFront = glm::vec3(0.0f, 0.0f, -1.0f);
    glm::vec3 cameraUp = glm::vec3(0.0f, 1.0f, 0.0f);
    GLfloat yaw = -90.0f;	// Yaw is initialized to -90.0 degrees since a yaw of 0.0 results in a direction vector pointing to the right (due to how Eular angles work) so we initially rotate a bit to the left.
    GLfloat pitch = 0.0f;
    GLfloat lastX = 800 / 2.0;
    GLfloat lastY = 400 / 2.0;
    bool keys[1024];
    bool firstMouse = true;
	float fov = 45.0f;
};
