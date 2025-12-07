# generate device tree sources
set XSA_PATH hw.xsa
set DST_DIR hw_project_sdt

# Remove existing directory
file delete -force ${DST_DIR}

set_dt_param -dir $DST_DIR
set_dt_param -xsa $XSA_PATH
set_dt_param -zocl enable
generate_sdt

exit
