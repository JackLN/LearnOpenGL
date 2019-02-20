#pragma once
#include "TSingleton.h"

class ResCache : public TSingleton<ResCache>
{
public:
    ResCache();
    virtual ~ResCache();
    virtual void init();

};
