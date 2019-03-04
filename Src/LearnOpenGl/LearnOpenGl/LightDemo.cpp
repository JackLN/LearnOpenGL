#include "LightDemo.h"

glm::vec3 lightPos(1.2f, 1.0f, 2.0f);

LightDemo::LightDemo()
{
}

LightDemo::~LightDemo()
{
}

void LightDemo::init()
{
    DemoBase::init();

    _view->Init("LightDemo");

    _view->HideCursor();

    // Set up vertex data (and buffer(s)) and attribute pointers
    GLfloat vertices[] = {
        -0.5f, -0.5f, -0.5f,
         0.5f, -0.5f, -0.5f,
         0.5f,  0.5f, -0.5f,
         0.5f,  0.5f, -0.5f,
        -0.5f,  0.5f, -0.5f,
        -0.5f, -0.5f, -0.5f,

        -0.5f, -0.5f,  0.5f,
         0.5f, -0.5f,  0.5f,
         0.5f,  0.5f,  0.5f,
         0.5f,  0.5f,  0.5f,
        -0.5f,  0.5f,  0.5f,
        -0.5f, -0.5f,  0.5f,

        -0.5f,  0.5f,  0.5f,
        -0.5f,  0.5f, -0.5f,
        -0.5f, -0.5f, -0.5f,
        -0.5f, -0.5f, -0.5f,
        -0.5f, -0.5f,  0.5f,
        -0.5f,  0.5f,  0.5f,

         0.5f,  0.5f,  0.5f,
         0.5f,  0.5f, -0.5f,
         0.5f, -0.5f, -0.5f,
         0.5f, -0.5f, -0.5f,
         0.5f, -0.5f,  0.5f,
         0.5f,  0.5f,  0.5f,

        -0.5f, -0.5f, -0.5f,
         0.5f, -0.5f, -0.5f,
         0.5f, -0.5f,  0.5f,
         0.5f, -0.5f,  0.5f,
        -0.5f, -0.5f,  0.5f,
        -0.5f, -0.5f, -0.5f,

        -0.5f,  0.5f, -0.5f,
         0.5f,  0.5f, -0.5f,
         0.5f,  0.5f,  0.5f,
         0.5f,  0.5f,  0.5f,
        -0.5f,  0.5f,  0.5f,
        -0.5f,  0.5f, -0.5f
    };

    GLuint VBO, containerVAO;
    glGenVertexArrays(1, &containerVAO);
    glGenBuffers(1, &VBO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    glBindVertexArray(containerVAO);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(GLfloat), (GLvoid*)0);
    glEnableVertexAttribArray(0);
    glBindVertexArray(0);

    GLuint lightVAO;
    glGenVertexArrays(1, &lightVAO);
    glBindVertexArray(lightVAO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(GLfloat), (GLvoid*)0);
    glEnableVertexAttribArray(0);
    glBindVertexArray(0);

    Shader shaderLight,shaderLamp;
    shaderLight.init(SHADRE_FULL_PATH("lightdemo.vsh"), SHADRE_FULL_PATH("lightdemo.fsh"));
    shaderLamp.init(SHADRE_FULL_PATH("lamp.vsh"), SHADRE_FULL_PATH("lamp.fsh"));

    while (!glfwWindowShouldClose(_view->GetGLFWWindow()))
    {
        GLfloat currentFrame = glfwGetTime();
        _deltaTime = currentFrame - _lastFrame;
        _lastFrame = currentFrame;

        glfwPollEvents();
        do_movement();

        glClearColor(0.1f, 0.1f, 0.1f, 0.1f);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        shaderLight.use();
        GLint objColor = glGetUniformLocation(shaderLight.getProgramID(), "objectColor");
        GLint lightColor = glGetUniformLocation(shaderLight.getProgramID(), "lightColor");
        glUniform3f(objColor, 1.0f, 0.5f, 0.31f);
        glUniform3f(lightColor, 1.0f, 0.5f, 1.0f);

        //create camera transform
        glm::mat4 view;
        view = _camera.GetViewMatrix();
        glm::mat4 projection = glm::perspective(_camera.Zoom, 800.f / 600.f, 0.1f, 100.f);

        GLint modelLoc = glGetUniformLocation(shaderLight.getProgramID(), "model");
        GLint viewLoc = glGetUniformLocation(shaderLight.getProgramID(), "view");
        GLint projectLoc = glGetUniformLocation(shaderLight.getProgramID(), "projection");

        glUniformMatrix4fv(viewLoc, 1, GL_FALSE, glm::value_ptr(view));
        glUniformMatrix4fv(projectLoc, 1, GL_FALSE, glm::value_ptr(projection));

        glBindVertexArray(containerVAO);
        glm::mat4 model;
        glUniformMatrix4fv(modelLoc, 1, GL_FALSE, glm::value_ptr(model));
        glDrawArrays(GL_TRIANGLES, 0, 36);
        glBindVertexArray(0);

        //lamp
        shaderLamp.use();
        modelLoc = glGetUniformLocation(shaderLamp.getProgramID(), "model");
        viewLoc = glGetUniformLocation(shaderLamp.getProgramID(), "view");
        projectLoc = glGetUniformLocation(shaderLamp.getProgramID(), "projection");

        glUniformMatrix4fv(viewLoc, 1, GL_FALSE, glm::value_ptr(view));
        glUniformMatrix4fv(projectLoc, 1, GL_FALSE, glm::value_ptr(projection));
        model = glm::mat4();
        model = glm::translate(model, lightPos);
        model = glm::scale(model, glm::vec3(0.2f));
        glUniformMatrix4fv(modelLoc, 1, GL_FALSE, glm::value_ptr(model));
        glBindVertexArray(lightVAO);
        glDrawArrays(GL_TRIANGLES, 0, 36);
        glBindVertexArray(0);


        glfwSwapBuffers(_view->GetGLFWWindow());

    }

    glfwTerminate();
}
