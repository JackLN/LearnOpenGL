#include "GameLoopTest.h"

void UpdateSimulationThread(RingBuffer<GfxCmd*>& gfxCmdList)
{
    // Update gameplay here.
    // Determine what to draw based on the new game state below.
    // The graphics commands will be queued up on the render thread
    // which will execute the graphics API (I.E. OpenGL/DirectX/Vulcan/etc) calls.
    gfxCmdList.Enqueue(new GfxCmdSetRenderTarget{ (void*)0x1 });
    gfxCmdList.Enqueue(new GfxCmdClearRenderTargetView{ 255, 0, 245 });
    gfxCmdList.Enqueue(new GfxCmdDraw{ 1, 10 });
}

void UpdateRenderThread(RingBuffer<GfxCmd*>& gfxCmdList)
{
    GfxCmd* gfxCmd = 0x0;
    if (gfxCmdList.Dequeue(&gfxCmd))
    {
        gfxCmd->Invoke();
        delete gfxCmd;
    }
}

GameLoopDemo::GameLoopDemo()
{

}

GameLoopDemo::~GameLoopDemo()
{

}

void GameLoopDemo::init()
{
    RingBuffer<GfxCmd*> gfxCmdList(3);
    atomic<int> counter = 0;
    atomic<bool> quit = false;

    while (1)
    {
        quit = false;
        counter = 0;
        gfxCmdList.Clear();
        thread simulationThread = thread([&gfxCmdList, &counter, &quit]
        {
            UpdateSimulationThread(gfxCmdList);
            quit = true;
        });
        thread renderThread = thread([&gfxCmdList, &quit]
        {
            while (!(gfxCmdList.IsEmpty() && quit))
            {
                UpdateRenderThread(gfxCmdList);
            }
        });

        simulationThread.join();
        renderThread.join();
        cout << "----------\n";
    }
    
}

