#include "video/Video.hpp"
#include "audio/Audio.hpp"
#include "assets/Assets.hpp"
#include "logger/log.h"
#include "Level.hpp"
#include "Input.hpp"
#include "game-loop/GameLoop.hpp"
#include "other/Inventory.hpp"
#include "TextureBank.hpp"
#include "EntityRegistry.hpp"
#include <string>

#include <cstdlib>

static std::string gCustomLevelPath;
const std::string& get_custom_level_path() { return gCustomLevelPath; }

void init_singletons()
{
    Assets::init();
    Level::init();
    TextureBank::init();
    Input::init();
    Audio::init();
    Inventory::init();
    EntityRegistry::init();
}

void dispose_singletons()
{
    EntityRegistry::dispose();
    Inventory::dispose();
    Audio::dispose();
    Input::dispose();
    TextureBank::dispose();
    Level::dispose();
    Assets::dispose();
}

int start(int argc, char** argv)
{
    log_info("Started.");
    for (int i = 1; i < argc; ++i) {
    std::string a(argv[i]);
    const std::string prefix = "--custom-level=";
    if (a.rfind(prefix, 0) == 0) {
        gCustomLevelPath = a.substr(prefix.size());
    }
}
    init_singletons();

    if (!Assets::instance().load())
    {
        log_error("Failed to load assets.");
        return EXIT_FAILURE;
     }

    if (!Audio::instance().setup_audio())
    {
        log_error("Failed to setup audio.");
        return EXIT_FAILURE;
    }

    Video video;

    if (!video.setup_gl())
    {
        log_error("Failed to setup OpenGL.");
        return EXIT_FAILURE;
    }

    {
        GameLoop loop(video.get_viewport());
        video.run_loop(loop.get());
    }

    video.tear_down_gl();
    Audio::instance().tear_down_audio();

    dispose_singletons();
    log_info("Exiting peacefully.");
    return EXIT_SUCCESS;
}

#if defined(SPELUNKY_PSP_PLATFORM_PSP) || \
    defined(SPELUNKY_PSP_PLATFORM_ANDROID)
// Not mangling symbols so SDL could find SDL_main.
extern "C"
{
int SDL_main(int argc, char *argv[]) {
    return start(argc, argv);
}
}
#endif

#if defined(SPELUNKY_PSP_PLATFORM_LINUX) || \
    defined(SPELUNKY_PSP_PLATFORM_WINDOWS) || \
    defined(SPELUNKY_PSP_PLATFORM_DARWIN)

int main(int argc, char** argv)
{
    return start(argc, argv);
}

#endif
