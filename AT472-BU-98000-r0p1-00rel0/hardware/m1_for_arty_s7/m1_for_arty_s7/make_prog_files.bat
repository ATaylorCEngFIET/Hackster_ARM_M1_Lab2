@REM -----------------------------------------------------------------------------
@REM  The confidential and proprietary information contained in this file may
@REM  only be used by a person authorised under and to the extent permitted
@REM  by a subsisting licensing agreement from ARM limited.
@REM
@REM             (C) COPYRIGHT 2018 ARM limited.
@REM                 ALL RIGHTS RESERVED
@REM
@REM  This entire notice must be reproduced on all copies of this file
@REM  and copies of this file may only be made by a person if such person is
@REM  permitted to do so under the terms of a subsisting license agreement
@REM  from ARM limited.
@REM
@REM       SVN Information
@REM
@REM       Checked In          : $Date$
@REM
@REM       Revision            : $Revision$
@REM
@REM       Release Information : Cortex-M1 DesignStart-r0p1-00rel0
@REM                             
@REM -----------------------------------------------------------------------------
@REM Create MCS file for base board QSPI flash memory
@REM Requires existing bit file to convert
@REM Has to call Vivado in batch mode, then run TCL script


call vivado -mode batch -source make_prog_files.tcl -notrace
