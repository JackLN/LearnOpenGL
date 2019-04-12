#pragma once
#include <iostream>
#include <thread>
#include <atomic>
#include <vector>

using namespace std;

template <typename T>
class RingBuffer
{
private:
    int _iMaxCount;
    T*  _pBuffer;
    atomic<int> _iReadIdx;
    atomic<int> _iWriteIdx;

public:

    RingBuffer() : _iMaxCount(51), _iReadIdx(0), _iWriteIdx(0)
    {
        _pBuffer = new T[_iMaxCount];
        memset(_pBuffer, 0, sizeof(_pBuffer[0]) * _iMaxCount);
    }

    RingBuffer(int count) : _iMaxCount(count + 1), _pBuffer(NULL), _iReadIdx(0), _iWriteIdx(0)
    {
        _pBuffer = new T[_iMaxCount];
        memset(_pBuffer, 0, sizeof(_pBuffer[0]) * _iMaxCount);
    }

    ~RingBuffer()
    {
        delete[] _pBuffer;
        _pBuffer = NULL;
    }

    inline int GetMaxSize() { return _iMaxCount; }
    inline int GetCurSize() { return abs(_iWriteIdx - _iReadIdx); }
    inline bool IsEmpty() { return _iReadIdx == _iWriteIdx; }
    inline bool IsFull() { return  _iReadIdx == ((_iWriteIdx + 1) % _iMaxCount); }
    inline void Clear() { _iReadIdx = _iWriteIdx = 0; memset(_pBuffer, 0, sizeof(_pBuffer[0])* _iMaxCount); }

    inline void Enqueue(T value)
    {
        while (IsFull()){ std::chrono::nanoseconds(500); }
        _pBuffer[_iWriteIdx] = value;
        _iWriteIdx = (_iWriteIdx + 1) % _iMaxCount;
    }

    inline bool Dequeue(T* value)
    {
        if (IsEmpty())
            return false;

        *value = _pBuffer[_iReadIdx];
        _iReadIdx = (_iReadIdx + 1) % _iMaxCount;
        return true;
    }
};

struct GfxCmd
{
public:
    virtual void Invoke(){};
};

struct GfxCmdSetRenderTarget : public GfxCmd
{
public:
    void* _pResPtr;
    GfxCmdSetRenderTarget(void* res) : _pResPtr(res){ }
    void Invoke()
    {
        printf("%s(%p);\n", szName, _pResPtr);
    }
private:
    const char* szName = "GfxCmdSetRenderTarget";
};

struct GfxCmdClearRenderTargetView : public GfxCmd
{
public:
    int r, g, b;
    GfxCmdClearRenderTargetView(int _r, int _g, int _b) : r(_r), g(_g), b(_b) {}
    void Invoke()
    {
        printf("%s(%d, %d, %d);\n", name, r, g, b);
        this_thread::sleep_for(std::chrono::milliseconds(250));
    }
private:
    const char* name = "GfxCmdClearRenderTargetView";
};

struct GfxCmdDraw : public GfxCmd
{
public:
    int topology;
    int vertCount;
    GfxCmdDraw(int _topology, int _vertCount) : topology(_topology),     vertCount(_vertCount) {}
    void Invoke()
    {
        printf("%s(%d, %d);\n", name, topology, vertCount);
    }
private:
    const char* name = "GfxCmdDraw";
};

class GameLoopDemo
{
public:
    GameLoopDemo();
    virtual ~GameLoopDemo();


    void init();
};