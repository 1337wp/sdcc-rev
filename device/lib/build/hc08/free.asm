;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:24 2018
;--------------------------------------------------------
	.module free
	.optsdcc -mhc08
	
	.area HOME (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT (CODE)
	.area GSFINAL (CODE)
	.area CSEG (CODE)
	.area XINIT
	.area CONST   (CODE)
	.area DSEG
	.area OSEG    (OVR)
	.area BSEG
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_find_memheader
	.globl __sdcc_prev_memheader
	.globl _free
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area DSEG
_free_sloc0_1_0:
	.ds 2
_free_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in  ram 
;--------------------------------------------------------
	.area OSEG    (OVR)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
__sdcc_prev_memheader::
	.ds 2
__sdcc_find_memheader_p_1_1:
	.ds 2
__sdcc_find_memheader_pthis_1_1:
	.ds 2
__sdcc_find_memheader_cur_header_1_1:
	.ds 2
_free_pthis_1_1:
	.ds 2
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME (CODE)
	.area GSINIT (CODE)
	.area GSFINAL (CODE)
	.area GSINIT (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME (CODE)
	.area HOME (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_find_memheader'
;------------------------------------------------------------
;p                         Allocated with name '__sdcc_find_memheader_p_1_1'
;pthis                     Allocated with name '__sdcc_find_memheader_pthis_1_1'
;cur_header                Allocated with name '__sdcc_find_memheader_cur_header_1_1'
;------------------------------------------------------------
;free.c:121: MEMHEADER __xdata * _sdcc_find_memheader(void __xdata * p)
;	-----------------------------------------
;	 function _sdcc_find_memheader
;	-----------------------------------------
__sdcc_find_memheader:
	sta	(__sdcc_find_memheader_p_1_1 + 1)
	stx	__sdcc_find_memheader_p_1_1
;free.c:126: if (!p)
	lda	(__sdcc_find_memheader_p_1_1 + 1)
	ora	__sdcc_find_memheader_p_1_1
	bne	00102$
00113$:
;free.c:127: return NULL;
	clrx
	clra
	rts
00102$:
;free.c:129: pthis -= 1; //to start of header
	lda	(__sdcc_find_memheader_p_1_1 + 1)
	sub	#0x04
	sta	(__sdcc_find_memheader_pthis_1_1 + 1)
	lda	__sdcc_find_memheader_p_1_1
	sbc	#0x00
	sta	__sdcc_find_memheader_pthis_1_1
;free.c:130: cur_header = _sdcc_first_memheader;
	lda	__sdcc_first_memheader
	sta	__sdcc_find_memheader_cur_header_1_1
	lda	(__sdcc_first_memheader + 1)
	sta	(__sdcc_find_memheader_cur_header_1_1 + 1)
;free.c:131: _sdcc_prev_memheader = NULL;
	clra
	sta	__sdcc_prev_memheader
	sta	(__sdcc_prev_memheader + 1)
;free.c:132: while (cur_header && pthis != cur_header)
00104$:
	lda	(__sdcc_find_memheader_cur_header_1_1 + 1)
	ora	__sdcc_find_memheader_cur_header_1_1
	beq	00106$
00114$:
	lda	(__sdcc_find_memheader_pthis_1_1 + 1)
	cmp	(__sdcc_find_memheader_cur_header_1_1 + 1)
	bne	00115$
	lda	__sdcc_find_memheader_pthis_1_1
	cmp	__sdcc_find_memheader_cur_header_1_1
	beq	00106$
00115$:
;free.c:134: _sdcc_prev_memheader = cur_header;
	lda	__sdcc_find_memheader_cur_header_1_1
	sta	__sdcc_prev_memheader
	lda	(__sdcc_find_memheader_cur_header_1_1 + 1)
	sta	(__sdcc_prev_memheader + 1)
;free.c:135: cur_header = cur_header->next;
	lda	__sdcc_find_memheader_cur_header_1_1
	ldx	(__sdcc_find_memheader_cur_header_1_1 + 1)
	psha
	pulh
	lda	,x
	aix	#1
	sta	__sdcc_find_memheader_cur_header_1_1
	lda	,x
	sta	(__sdcc_find_memheader_cur_header_1_1 + 1)
	bra	00104$
00106$:
;free.c:137: return (cur_header);
	ldx	__sdcc_find_memheader_cur_header_1_1
	lda	(__sdcc_find_memheader_cur_header_1_1 + 1)
00107$:
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'free'
;------------------------------------------------------------
;sloc0                     Allocated with name '_free_sloc0_1_0'
;sloc1                     Allocated with name '_free_sloc1_1_0'
;p                         Allocated to registers 
;pthis                     Allocated with name '_free_pthis_1_1'
;------------------------------------------------------------
;free.c:140: void free (void * p)
;	-----------------------------------------
;	 function free
;	-----------------------------------------
_free:
;free.c:146: pthis = _sdcc_find_memheader(p);
	jsr	__sdcc_find_memheader
	sta	(_free_pthis_1_1 + 1)
	stx	_free_pthis_1_1
;free.c:147: if (pthis) //For allocated pointers only!
	lda	(_free_pthis_1_1 + 1)
	ora	_free_pthis_1_1
	beq	00106$
00110$:
;free.c:149: if (!_sdcc_prev_memheader)
	lda	(__sdcc_prev_memheader + 1)
	ora	__sdcc_prev_memheader
	bne	00102$
00111$:
;free.c:151: pthis->len = 0;
	lda	(_free_pthis_1_1 + 1)
	add	#0x02
	sta	*(_free_sloc0_1_0 + 1)
	lda	_free_pthis_1_1
	adc	#0x00
	sta	*_free_sloc0_1_0
	ldhx	*_free_sloc0_1_0
	clra
	sta	,x
	aix	#1
	clra
	sta	,x
	rts
00102$:
;free.c:155: _sdcc_prev_memheader->next = pthis->next;
	lda	__sdcc_prev_memheader
	sta	*_free_sloc0_1_0
	lda	(__sdcc_prev_memheader + 1)
	sta	*(_free_sloc0_1_0 + 1)
	lda	_free_pthis_1_1
	ldx	(_free_pthis_1_1 + 1)
	psha
	pulh
	lda	,x
	aix	#1
	sta	*_free_sloc1_1_0
	lda	,x
	sta	*(_free_sloc1_1_0 + 1)
	ldhx	*_free_sloc0_1_0
	lda	*_free_sloc1_1_0
	sta	,x
	aix	#1
	lda	*(_free_sloc1_1_0 + 1)
	sta	,x
00106$:
	rts
	.area CSEG (CODE)
	.area CONST   (CODE)
	.area XINIT
	.area CABS    (ABS,CODE)
