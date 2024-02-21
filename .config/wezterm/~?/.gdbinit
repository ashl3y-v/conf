tui enable
tui new-layout mylayout {-horizontal src 3 asm 3 regs 2} 2 status 0 cmd 1
layout mylayout
set debuginfod enabled on
set print pretty on
set print static-members on
set tui border-mode bold-standout
set tui compact-source on
set tui tab-width 4
