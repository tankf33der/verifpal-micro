local config = import("micro/config")
local shell = import("micro/shell")
local log = import("micro/log")

function runme()
    local buf = bp.Buf
	 buf:Save()
    if buf:FileType() == "verifpal" then
        shell.RunInteractiveShell("verifpal verify .. " buf.Path, true, false)
    end
end

function init()
    config.TryBindKey("CtrlR", "lua:initlua.runme", true)
end
