#include "modding.h"
#include "recomputils.h"
#include "recompconfig.h"

#include <hd_code/macros.h>
#include <hd_code/functions.h>
#include <hd_code/variables.h>

/* simple C mod with hooking to demo that it works */

RECOMP_HOOK_RETURN("hdInitLevel") void hdInitLevel_hook(s32* param) {
    recomp_printf("hdInitLevel completed!");
}