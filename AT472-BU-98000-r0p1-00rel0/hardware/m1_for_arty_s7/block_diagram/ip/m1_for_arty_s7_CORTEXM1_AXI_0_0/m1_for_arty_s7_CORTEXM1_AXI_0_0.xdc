# DAP synchronisers.  Block is DAPDpEnSync and DAPDpSync
set_property ASYNC_REG TRUE [get_cells -hierarchical -regexp .*u_swj_dp.*sync_reg_reg]
set_property ASYNC_REG TRUE [get_cells -hierarchical -regexp .*u_swj_dp.*sync2_reg_reg]
# Note : Also some cells in nvic with the name sync_reg, and also sync2_reg[x]
set_property ASYNC_REG TRUE [get_cells -hierarchical -regexp .*u_cortexm1.*sync_reg_reg]
set_property ASYNC_REG TRUE [get_cells -hierarchical -regexp .*u_cortexm1.*sync2_reg_reg]
# The master - slave state machines need to be sequential
set_property FSM_ENCODING sequential [get_cells -hierarchical -regexp .*DAPAhbApSlv.*CurState_reg.*]
set_property FSM_ENCODING sequential [get_cells -hierarchical -regexp .*DAPAhbApMst.*CurState_reg.*]
# These are the other state machines within the DAP interface
# They still work when encoded as either one_hot or as auto.
# In working build, this got encoded as one_hot
# set_property FSM_ENCODING auto [get_cells -hierarchical -regexp .*DAPSwDpProtocol.*State_reg.*]
# In working build, this got encoded as sequential
# set_property FSM_ENCODING auto [get_cells -hierarchical -regexp .*DAPJtagDpProtocol.*JTAGcurr_reg.*]
# In working build, this got encoded as sequential
# Naming convention broken, the module is DAPSwDpApbIf, but the instance is just DAPDpApbIf
# set_property FSM_ENCODING auto [get_cells -hierarchical -regexp .*DAPDpApbIf.*APBcurr_reg.*]
