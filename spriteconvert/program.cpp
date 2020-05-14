#include <SDL2/SDL.h> 
#include <iostream>
#include <string>

using namespace std;

int main(int argc, char* argv[]) {

    //initialize SDL2
    if (SDL_Init() < 0) {
        SDL_LogError(SDL_LOG_CATEGORY_APPLICATION, "SDL_Init failed: %s", SDL_GetError());
        SDL_Quit();
        return 3;
    };

    
}
