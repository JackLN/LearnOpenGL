#pragma once
#include "TSingleton.h"

#include <string>

class FileUtils : public TSingleton<FileUtils>
{
public:
    std::string getFullFilePath(std::string file);
	std::string getFullShaderPath(std::string file);
public:
    FileUtils();
    virtual ~FileUtils();
    virtual void init();
};

#define FILE_FULL_PATH(_FILE_) FileUtils::getInstance()->getFullFilePath(_FILE_)

#define SHADRE_FULL_PATH(_FILE_) FileUtils::getInstance()->getFullShaderPath(_FILE_)