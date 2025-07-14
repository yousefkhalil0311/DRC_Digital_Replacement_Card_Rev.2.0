platform generate
bsp config stdin "psu_uart_1"
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
bsp config stdin "psu_coresight_0"
bsp config stdout "psu_coresight_0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
platform clean
platform generate
