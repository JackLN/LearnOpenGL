#pragma once

#include "TSingleton.h"
#include <gl/glew.h>
#include <iostream>
#include <string>
#include <fstream>
#include <sstream>

class Shader
{
public:
	Shader();
	~Shader();
	void init(const GLchar* vertexFile, const GLchar* fragmentFile);
	void init(std::string& vertexFile, std::string& fragmentFile);
	void use();
	void checkCompileErrors(unsigned int shader, std::string type);

	void setBool(const std::string& name,bool value);
	void setInt(const std::string& name,int value);
	void setFloat(const std::string& name, float value);

    unsigned int getProgramID(){ return ID; }
protected:
	unsigned int ID;
};

class ShaderMgr : public TSingleton<ShaderMgr>
{
	
public:
	ShaderMgr();
	virtual ~ShaderMgr();
	void init();
};

