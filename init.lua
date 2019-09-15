function runme()
    local buf = CurView().Buf -- The current buffer
	buf:Save()
    if buf:FileType() == "verifpal" then
		HandleShellCommand("verifpal verify .. " buf.Path, true, true)
    end
end
BindKey("CtrlR", "init.runme")
