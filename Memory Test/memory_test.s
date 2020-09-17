	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_g                      ## -- Begin function g
	.p2align	4, 0x90
_g:                                     ## @g
Lfunc_begin0:
	.file	1 "/Users/cesarangeles/Desktop/TDA_OT_2020/Collections/Arrays/Memory Test" "memory_test.c"
	.loc	1 13 0                  ## memory_test.c:13:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp0:
	.loc	1 14 6 prologue_end     ## memory_test.c:14:6
	movl	$4000, %edi             ## imm = 0xFA0
	callq	_malloc
	.loc	1 15 2                  ## memory_test.c:15:2
	popq	%rbp
	retq
Ltmp1:
Lfunc_end0:
	.cfi_endproc
                                        ## -- End function
	.globl	_f                      ## -- Begin function f
	.p2align	4, 0x90
_f:                                     ## @f
Lfunc_begin1:
	.loc	1 18 0                  ## memory_test.c:18:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
Ltmp2:
	.loc	1 19 5 prologue_end     ## memory_test.c:19:5
	movl	$2000, %edi             ## imm = 0x7D0
	callq	_malloc
	movq	%rax, -8(%rbp)          ## 8-byte Spill
	.loc	1 20 5                  ## memory_test.c:20:5
	callq	_g
	.loc	1 21 1                  ## memory_test.c:21:1
	addq	$16, %rsp
	popq	%rbp
	retq
Ltmp3:
Lfunc_end1:
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin2:
	.loc	1 24 0                  ## memory_test.c:24:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -100(%rbp)
Ltmp4:
	.loc	1 28 12 prologue_end    ## memory_test.c:28:12
	movl	$0, -104(%rbp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
Ltmp5:
	.loc	1 28 19 is_stmt 0       ## memory_test.c:28:19
	cmpl	$10, -104(%rbp)
Ltmp6:
	.loc	1 28 5                  ## memory_test.c:28:5
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
Ltmp7:
	.loc	1 29 16 is_stmt 1       ## memory_test.c:29:16
	movl	$1000, %edi             ## imm = 0x3E8
	callq	_malloc
	.loc	1 29 9 is_stmt 0        ## memory_test.c:29:9
	movslq	-104(%rbp), %rcx
	.loc	1 29 14                 ## memory_test.c:29:14
	movq	%rax, -96(%rbp,%rcx,8)
Ltmp8:
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	.loc	1 28 26 is_stmt 1       ## memory_test.c:28:26
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	.loc	1 28 5 is_stmt 0        ## memory_test.c:28:5
	jmp	LBB2_1
Ltmp9:
LBB2_4:
	.loc	1 33 5 is_stmt 1        ## memory_test.c:33:5
	callq	_f
	.loc	1 35 5                  ## memory_test.c:35:5
	callq	_g
Ltmp10:
	.loc	1 37 12                 ## memory_test.c:37:12
	movl	$0, -104(%rbp)
LBB2_5:                                 ## =>This Inner Loop Header: Depth=1
Ltmp11:
	.loc	1 37 19 is_stmt 0       ## memory_test.c:37:19
	cmpl	$10, -104(%rbp)
Ltmp12:
	.loc	1 37 5                  ## memory_test.c:37:5
	jge	LBB2_8
## %bb.6:                               ##   in Loop: Header=BB2_5 Depth=1
Ltmp13:
	.loc	1 38 14 is_stmt 1       ## memory_test.c:38:14
	movslq	-104(%rbp), %rax
	movq	-96(%rbp,%rax,8), %rax
	.loc	1 38 9 is_stmt 0        ## memory_test.c:38:9
	movq	%rax, %rdi
	callq	_free
Ltmp14:
## %bb.7:                               ##   in Loop: Header=BB2_5 Depth=1
	.loc	1 37 26 is_stmt 1       ## memory_test.c:37:26
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	.loc	1 37 5 is_stmt 0        ## memory_test.c:37:5
	jmp	LBB2_5
Ltmp15:
LBB2_8:
	.loc	1 0 5                   ## memory_test.c:0:5
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB2_10
## %bb.9:
	xorl	%eax, %eax
	.loc	1 41 5 is_stmt 1        ## memory_test.c:41:5
	addq	$112, %rsp
	popq	%rbp
	retq
LBB2_10:
	.loc	1 0 0 is_stmt 0         ## memory_test.c:0:0
	callq	___stack_chk_fail
	ud2
Ltmp16:
Lfunc_end2:
	.cfi_endproc
                                        ## -- End function
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 11.0.3 (clang-1103.0.32.62)" ## string offset=0
	.asciz	"memory_test.c"         ## string offset=48
	.asciz	"/Users/cesarangeles/Desktop/TDA_OT_2020/Collections/Arrays/Memory Test" ## string offset=62
	.asciz	"g"                     ## string offset=133
	.asciz	"f"                     ## string offset=135
	.asciz	"main"                  ## string offset=137
	.asciz	"int"                   ## string offset=142
	.asciz	"i"                     ## string offset=146
	.asciz	"a"                     ## string offset=148
	.asciz	"__ARRAY_SIZE_TYPE__"   ## string offset=150
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                       ## Abbreviation Code
	.byte	17                      ## DW_TAG_compile_unit
	.byte	1                       ## DW_CHILDREN_yes
	.byte	37                      ## DW_AT_producer
	.byte	14                      ## DW_FORM_strp
	.byte	19                      ## DW_AT_language
	.byte	5                       ## DW_FORM_data2
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	16                      ## DW_AT_stmt_list
	.byte	23                      ## DW_FORM_sec_offset
	.byte	27                      ## DW_AT_comp_dir
	.byte	14                      ## DW_FORM_strp
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	2                       ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	0                       ## DW_CHILDREN_no
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	3                       ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	4                       ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	5                       ## Abbreviation Code
	.byte	36                      ## DW_TAG_base_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	62                      ## DW_AT_encoding
	.byte	11                      ## DW_FORM_data1
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	6                       ## Abbreviation Code
	.byte	1                       ## DW_TAG_array_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	7                       ## Abbreviation Code
	.byte	33                      ## DW_TAG_subrange_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	55                      ## DW_AT_count
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	8                       ## Abbreviation Code
	.byte	15                      ## DW_TAG_pointer_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	9                       ## Abbreviation Code
	.byte	36                      ## DW_TAG_base_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	62                      ## DW_AT_encoding
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	0                       ## EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset0, Ldebug_info_end0-Ldebug_info_start0 ## Length of Unit
	.long	Lset0
Ldebug_info_start0:
	.short	4                       ## DWARF version number
.set Lset1, Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset1
	.byte	8                       ## Address Size (in bytes)
	.byte	1                       ## Abbrev [1] 0xb:0xa1 DW_TAG_compile_unit
	.long	0                       ## DW_AT_producer
	.short	12                      ## DW_AT_language
	.long	48                      ## DW_AT_name
.set Lset2, Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset2
	.long	62                      ## DW_AT_comp_dir
	.quad	Lfunc_begin0            ## DW_AT_low_pc
.set Lset3, Lfunc_end2-Lfunc_begin0     ## DW_AT_high_pc
	.long	Lset3
	.byte	2                       ## Abbrev [2] 0x2a:0x15 DW_TAG_subprogram
	.quad	Lfunc_begin0            ## DW_AT_low_pc
.set Lset4, Lfunc_end0-Lfunc_begin0     ## DW_AT_high_pc
	.long	Lset4
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	133                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	12                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
	.byte	2                       ## Abbrev [2] 0x3f:0x15 DW_TAG_subprogram
	.quad	Lfunc_begin1            ## DW_AT_low_pc
.set Lset5, Lfunc_end1-Lfunc_begin1     ## DW_AT_high_pc
	.long	Lset5
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	135                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	17                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
	.byte	3                       ## Abbrev [3] 0x54:0x38 DW_TAG_subprogram
	.quad	Lfunc_begin2            ## DW_AT_low_pc
.set Lset6, Lfunc_end2-Lfunc_begin2     ## DW_AT_high_pc
	.long	Lset6
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	137                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	23                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	140                     ## DW_AT_type
                                        ## DW_AT_external
	.byte	4                       ## Abbrev [4] 0x6d:0xf DW_TAG_variable
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\230\177"
	.long	146                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	25                      ## DW_AT_decl_line
	.long	140                     ## DW_AT_type
	.byte	4                       ## Abbrev [4] 0x7c:0xf DW_TAG_variable
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\240\177"
	.long	148                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	26                      ## DW_AT_decl_line
	.long	147                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	5                       ## Abbrev [5] 0x8c:0x7 DW_TAG_base_type
	.long	142                     ## DW_AT_name
	.byte	5                       ## DW_AT_encoding
	.byte	4                       ## DW_AT_byte_size
	.byte	6                       ## Abbrev [6] 0x93:0xc DW_TAG_array_type
	.long	159                     ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x98:0x6 DW_TAG_subrange_type
	.long	164                     ## DW_AT_type
	.byte	10                      ## DW_AT_count
	.byte	0                       ## End Of Children Mark
	.byte	8                       ## Abbrev [8] 0x9f:0x5 DW_TAG_pointer_type
	.long	140                     ## DW_AT_type
	.byte	9                       ## Abbrev [9] 0xa4:0x7 DW_TAG_base_type
	.long	150                     ## DW_AT_name
	.byte	8                       ## DW_AT_byte_size
	.byte	7                       ## DW_AT_encoding
	.byte	0                       ## End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_macinfo,regular,debug
Ldebug_macinfo:
	.byte	0                       ## End Of Macro List Mark
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	3                       ## Header Bucket Count
	.long	3                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	0                       ## Bucket 0
	.long	1                       ## Bucket 1
	.long	-1                      ## Bucket 2
	.long	177675                  ## Hash in Bucket 0
	.long	177676                  ## Hash in Bucket 1
	.long	2090499946              ## Hash in Bucket 1
.set Lset7, LNames1-Lnames_begin        ## Offset in Bucket 0
	.long	Lset7
.set Lset8, LNames2-Lnames_begin        ## Offset in Bucket 1
	.long	Lset8
.set Lset9, LNames0-Lnames_begin        ## Offset in Bucket 1
	.long	Lset9
LNames1:
	.long	135                     ## f
	.long	1                       ## Num DIEs
	.long	63
	.long	0
LNames2:
	.long	133                     ## g
	.long	1                       ## Num DIEs
	.long	42
	.long	0
LNames0:
	.long	137                     ## main
	.long	1                       ## Num DIEs
	.long	84
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	2                       ## Header Bucket Count
	.long	2                       ## Header Hash Count
	.long	20                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	3                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.short	3                       ## DW_ATOM_die_tag
	.short	5                       ## DW_FORM_data2
	.short	4                       ## DW_ATOM_type_flags
	.short	11                      ## DW_FORM_data1
	.long	0                       ## Bucket 0
	.long	1                       ## Bucket 1
	.long	193495088               ## Hash in Bucket 0
	.long	-594775205              ## Hash in Bucket 1
.set Lset10, Ltypes1-Ltypes_begin       ## Offset in Bucket 0
	.long	Lset10
.set Lset11, Ltypes0-Ltypes_begin       ## Offset in Bucket 1
	.long	Lset11
Ltypes1:
	.long	142                     ## int
	.long	1                       ## Num DIEs
	.long	140
	.short	36
	.byte	0
	.long	0
Ltypes0:
	.long	150                     ## __ARRAY_SIZE_TYPE__
	.long	1                       ## Num DIEs
	.long	164
	.short	36
	.byte	0
	.long	0

.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
