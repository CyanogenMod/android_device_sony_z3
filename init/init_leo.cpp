/*
 * Copyright (C) 2008 The Android Open Source Project
 * Copyright (C) 2014 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <stdlib.h>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

#include <sys/system_properties.h>

// Constants: dsds phoneid length
#define DSDS_PHONEID_LEN 43

static void set_dsds_props()
{
    property_set("persist.radio.ignore_dom_time", "120");
    property_set("persist.multisim.config", "dsds");
    property_set("persist.radio.disable_flexmap", "1");
    property_set("persist.radio.multisim.config", "dsds");
    property_set("ro.telephony.default_network", "9,1");
    property_set("ro.multisim.set_audio_params", "true");
    property_set("ro.telephony.ril.config","simactivation");
}

static void set_single_props()
{
    property_set("ro.telephony.default_network", "9");
}

static void set_common_props()
{
    property_set("ro.sf.lcd_density","480");
    property_set("ro.usb.pid_suffix","1BA");
    property_set("ro.use_data_netmgrd","true");
}

static void import_kernel_nv(char *name, __attribute__((unused)) bool foo)
{
    char *value = strchr(name, '=');
    int name_len = strlen(name);

    if (value == 0) return;
    *value++ = 0;
    if (name_len == 0) return;

    if (strcmp(name, "oemandroidboot.phoneid") == 0) {
        if (strlen(value) == DSDS_PHONEID_LEN) {
            set_dsds_props();
        } else {
            set_single_props();
        }
    }
}

void vendor_load_properties()
{
    set_common_props();
    import_kernel_cmdline(0, import_kernel_nv);
}
