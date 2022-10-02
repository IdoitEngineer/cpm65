; CP/M-65 Copyright © 2022 David Given
; This file is licensed under the terms of the 2-clause BSD license. Please
; see the COPYING file in the root project directory for the full text.

	.include "xfcb.inc"
	.include "cpm65.inc"

	.import BDOS
	.import xfcb_prepare

.export xfcb_erase
.proc xfcb_erase
	jsr xfcb_prepare
	ldy #bdos::delete_file
	jmp BDOS
.endproc


