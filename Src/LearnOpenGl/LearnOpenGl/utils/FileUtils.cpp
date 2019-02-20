#include "FileUtils.h"

FileUtils::FileUtils()
{

}

FileUtils::~FileUtils()
{

}

void FileUtils::init()
{

}

std::string FileUtils::getFullFilePath(std::string file)
{
    return "../../../res/" + file;
}

std::string FileUtils::getFullShaderPath(std::string file)
{
	return "../../../res/shaders/" + file;
}
