import common

def FullOTA_InstallEnd(info):
  info.script.Mount("/system")
  info.script.AppendExtra('assert(run_program("/system/bin/patch_firmware.sh") == 0);')
  info.script.Unmount("/system")
