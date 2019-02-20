#pragma once

// GLEW
#define GLEW_STATIC
#include "GL/glew.h"
//

// GLFW
#include <GLFW/glfw3.h>
#include <iostream>

//

#define STB_IMAGE_IMPLEMENTATION
//#include "stb_image.h"
#include "FileUtils.h"
#include "ShaderMgr.h"

#include "glm/glm.hpp"
#include "glm/gtc/matrix_transform.hpp"
#include "glm/gtc/type_ptr.hpp"

#define STATA_DEMO_TEST(_DEMO_) \
	_DEMO_ *demo = new _DEMO_(); \
	demo->init();
