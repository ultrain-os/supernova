(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$iiji (func (param i32 i64 i32) (result i32)))
 (type $FUNCSIG$vji (func (param i64 i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$vjjjj (func (param i64 i64 i64 i64)))
 (type $FUNCSIG$iij (func (param i32 i64) (result i32)))
 (type $FUNCSIG$iijj (func (param i32 i64 i64) (result i32)))
 (type $FUNCSIG$j (func (result i64)))
 (type $FUNCSIG$ji (func (param i32) (result i64)))
 (type $FUNCSIG$vijj (func (param i32 i64 i64)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$vijiiiiiiiiiiiijj (func (param i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)))
 (type $FUNCSIG$ijjjj (func (param i64 i64 i64 i64) (result i32)))
 (type $FUNCSIG$vij (func (param i32 i64)))
 (type $FUNCSIG$ijjjjii (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$vijiiiiiij (func (param i32 i64 i32 i32 i32 i32 i32 i32 i64)))
 (type $FUNCSIG$vijjiiiijj (func (param i32 i64 i64 i32 i32 i32 i32 i64 i64)))
 (type $FUNCSIG$vijii (func (param i32 i64 i32 i32)))
 (type $FUNCSIG$vijji (func (param i32 i64 i64 i32)))
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$jij (func (param i32 i64) (result i64)))
 (type $FUNCSIG$jijj (func (param i32 i64 i64) (result i64)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$vjjii (func (param i64 i64 i32 i32)))
 (type $FUNCSIG$iijjii (func (param i32 i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iijii (func (param i32 i64 i32 i32) (result i32)))
 (type $FUNCSIG$iiijj (func (param i32 i32 i64 i64) (result i32)))
 (type $FUNCSIG$viiiii (func (param i32 i32 i32 i32 i32)))
 (type $FUNCSIG$dd (func (param f64) (result f64)))
 (type $FUNCSIG$idi (func (param f64 i32) (result i32)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$iid (func (param i32 f64) (result i32)))
 (type $FUNCSIG$iijijiji (func (param i32 i64 i32 i64 i32 i64 i32) (result i32)))
 (type $FUNCSIG$dii (func (param i32 i32) (result f64)))
 (type $FUNCSIG$iiiiiii (func (param i32 i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$iiiiiiii (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort))
 (import "env" "ultrainio_assert" (func $~lib/env/ultrainio_assert (param i32 i32)))
 (import "env" "ts_log_print_s" (func $~lib/ultrain-ts-lib/src/log/env.ts_log_print_s (param i32)))
 (import "env" "ts_log_print_i" (func $~lib/ultrain-ts-lib/src/log/env.ts_log_print_i (param i64 i32)))
 (import "env" "ts_log_done" (func $~lib/ultrain-ts-lib/src/log/env.ts_log_done))
 (import "env" "current_receiver" (func $~lib/env/current_receiver (result i64)))
 (import "env" "action_data_size" (func $~lib/ultrain-ts-lib/internal/action.d/env.action_data_size (result i32)))
 (import "env" "read_action_data" (func $~lib/ultrain-ts-lib/internal/action.d/env.read_action_data (param i32 i32) (result i32)))
 (import "env" "current_sender" (func $~lib/ultrain-ts-lib/internal/action.d/env.current_sender (result i64)))
 (import "env" "db_find_i64" (func $~lib/env/db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_store_i64" (func $~lib/env/db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $~lib/env/db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "db_get_i64" (func $~lib/env/db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "set_result_int" (func $~lib/ultrain-ts-lib/src/return/env.set_result_int (param i64)))
 (import "env" "send_inline" (func $~lib/ultrain-ts-lib/internal/action.d/env.send_inline (param i32 i32)))
 (import "env" "set_result_str" (func $~lib/ultrain-ts-lib/src/return/env.set_result_str (param i32)))
 (import "env" "current_time" (func $~lib/ultrain-ts-lib/internal/system.d/env.current_time (result i64)))
 (memory $0 1)
 (data (i32.const 8) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 56) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 112) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (data (i32.const 160) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 216) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00")
 (data (i32.const 256) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00 \00")
 (data (i32.const 280) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00!\00")
 (data (i32.const 304) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\"\00")
 (data (i32.const 328) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00#\00")
 (data (i32.const 352) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00$\00")
 (data (i32.const 376) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00%\00")
 (data (i32.const 400) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00&\00")
 (data (i32.const 424) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\'\00")
 (data (i32.const 448) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00(\00")
 (data (i32.const 472) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00)\00")
 (data (i32.const 496) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00*\00")
 (data (i32.const 520) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00+\00")
 (data (i32.const 544) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00,\00")
 (data (i32.const 568) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-\00")
 (data (i32.const 592) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00.\00")
 (data (i32.const 616) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00/\00")
 (data (i32.const 640) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000\00")
 (data (i32.const 664) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\001\00")
 (data (i32.const 688) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\002\00")
 (data (i32.const 712) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\003\00")
 (data (i32.const 736) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\004\00")
 (data (i32.const 760) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\005\00")
 (data (i32.const 784) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\006\00")
 (data (i32.const 808) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\007\00")
 (data (i32.const 832) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\008\00")
 (data (i32.const 856) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\009\00")
 (data (i32.const 880) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00:\00")
 (data (i32.const 904) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00;\00")
 (data (i32.const 928) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00<\00")
 (data (i32.const 952) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00=\00")
 (data (i32.const 976) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00>\00")
 (data (i32.const 1000) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00?\00")
 (data (i32.const 1024) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00@\00")
 (data (i32.const 1048) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00A\00")
 (data (i32.const 1072) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00B\00")
 (data (i32.const 1096) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00C\00")
 (data (i32.const 1120) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00D\00")
 (data (i32.const 1144) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00E\00")
 (data (i32.const 1168) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00F\00")
 (data (i32.const 1192) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00G\00")
 (data (i32.const 1216) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00H\00")
 (data (i32.const 1240) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00I\00")
 (data (i32.const 1264) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00J\00")
 (data (i32.const 1288) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00K\00")
 (data (i32.const 1312) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00L\00")
 (data (i32.const 1336) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00M\00")
 (data (i32.const 1360) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00N\00")
 (data (i32.const 1384) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00O\00")
 (data (i32.const 1408) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00P\00")
 (data (i32.const 1432) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00Q\00")
 (data (i32.const 1456) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00R\00")
 (data (i32.const 1480) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00T\00")
 (data (i32.const 1504) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00U\00")
 (data (i32.const 1528) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00V\00")
 (data (i32.const 1552) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00W\00")
 (data (i32.const 1576) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00X\00")
 (data (i32.const 1600) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00Y\00")
 (data (i32.const 1624) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00Z\00")
 (data (i32.const 1648) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00[\00")
 (data (i32.const 1672) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\\\00")
 (data (i32.const 1696) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00]\00")
 (data (i32.const 1720) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00^\00")
 (data (i32.const 1744) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00_\00")
 (data (i32.const 1768) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00`\00")
 (data (i32.const 1792) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a\00")
 (data (i32.const 1816) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b\00")
 (data (i32.const 1840) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00c\00")
 (data (i32.const 1864) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00d\00")
 (data (i32.const 1888) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00e\00")
 (data (i32.const 1912) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00f\00")
 (data (i32.const 1936) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00g\00")
 (data (i32.const 1960) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00h\00")
 (data (i32.const 1984) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00i\00")
 (data (i32.const 2008) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00j\00")
 (data (i32.const 2032) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00k\00")
 (data (i32.const 2056) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00l\00")
 (data (i32.const 2080) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00m\00")
 (data (i32.const 2104) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00n\00")
 (data (i32.const 2128) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00o\00")
 (data (i32.const 2152) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00p\00")
 (data (i32.const 2176) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00q\00")
 (data (i32.const 2200) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00r\00")
 (data (i32.const 2224) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00s\00")
 (data (i32.const 2248) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00t\00")
 (data (i32.const 2272) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00u\00")
 (data (i32.const 2296) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00v\00")
 (data (i32.const 2320) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00w\00")
 (data (i32.const 2344) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00x\00")
 (data (i32.const 2368) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00y\00")
 (data (i32.const 2392) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00z\00")
 (data (i32.const 2416) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00{\00")
 (data (i32.const 2440) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00|\00")
 (data (i32.const 2464) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00}\00")
 (data (i32.const 2488) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00~\00")
 (data (i32.const 2512) "|\01\00\00\01\00\00\00\00\00\00\00|\01\00\00\10\01\00\00(\01\00\00@\01\00\00X\01\00\00p\01\00\00\88\01\00\00\a0\01\00\00\b8\01\00\00\d0\01\00\00\e8\01\00\00\00\02\00\00\18\02\00\000\02\00\00H\02\00\00`\02\00\00x\02\00\00\90\02\00\00\a8\02\00\00\c0\02\00\00\d8\02\00\00\f0\02\00\00\08\03\00\00 \03\00\008\03\00\00P\03\00\00h\03\00\00\80\03\00\00\98\03\00\00\b0\03\00\00\c8\03\00\00\e0\03\00\00\f8\03\00\00\10\04\00\00(\04\00\00@\04\00\00X\04\00\00p\04\00\00\88\04\00\00\a0\04\00\00\b8\04\00\00\d0\04\00\00\e8\04\00\00\00\05\00\00\18\05\00\000\05\00\00H\05\00\00`\05\00\00x\05\00\00\90\05\00\00\a8\05\00\00\c0\05\00\00\c0\05\00\00\d8\05\00\00\f0\05\00\00\08\06\00\00 \06\00\008\06\00\00P\06\00\00h\06\00\00\80\06\00\00\98\06\00\00\b0\06\00\00\c8\06\00\00\e0\06\00\00\f8\06\00\00\10\07\00\00(\07\00\00@\07\00\00X\07\00\00p\07\00\00\88\07\00\00\a0\07\00\00\b8\07\00\00\d0\07\00\00\e8\07\00\00\00\08\00\00\18\08\00\000\08\00\00H\08\00\00`\08\00\00x\08\00\00\90\08\00\00\a8\08\00\00\c0\08\00\00\d8\08\00\00\f0\08\00\00\08\t\00\00 \t\00\008\t\00\00P\t\00\00h\t\00\00\80\t\00\00\98\t\00\00\b0\t\00\00\c8\t\00\00")
 (data (i32.const 2912) "\10\00\00\00\01\00\00\00\04\00\00\00\10\00\00\00\e0\t\00\00\e0\t\00\00|\01\00\00_\00\00\00")
 (data (i32.const 2944) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00U\00G\00A\00S\00")
 (data (i32.const 2968) "V\00\00\00\01\00\00\00\01\00\00\00V\00\00\00l\00e\00n\00g\00t\00h\00 \00o\00f\00 \00_\00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \007\00.\00")
 (data (i32.const 3072) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 3120) "`\00\00\00\01\00\00\00\01\00\00\00`\00\00\00s\00t\00r\00i\00n\00g\00_\00t\00o\00_\00_\00s\00y\00m\00b\00o\00l\00 \00f\00a\00i\00l\00e\00d\00 \00f\00o\00r\00 \00n\00o\00t\00 \00s\00u\00p\00o\00o\00r\00t\00 \00c\00o\00d\00e\00 \00:\00 \00")
 (data (i32.const 3232) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3248) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3264) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3280) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3296) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3312) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3328) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 3376) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 3432) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 3544) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 3592) "|\00\00\00\01\00\00\00\01\00\00\00|\00\00\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\000\001\002\003\004\005\006\007\008\009\00")
 (data (i32.const 3736) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00g\00l\00o\00b\00a\00l\00")
 (data (i32.const 3768) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00t\00b\00.\00u\00n\00i\00t\00")
 (data (i32.const 3800) "\b0\00\00\00\01\00\00\00\01\00\00\00\b0\00\00\00n\00a\00m\00e\00 \00s\00t\00r\00i\00n\00g\00 \00c\00o\00n\00t\00a\00i\00n\00s\00 \00i\00n\00v\00a\00l\00i\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00,\00 \00o\00n\00l\00y\00 \00\'\00.\001\002\003\004\005\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\'\00 \00s\00u\00p\00o\00r\00t\00s\00.\00")
 (data (i32.const 3992) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00t\00b\00.\00i\00t\00e\00m\00")
 (data (i32.const 4024) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00t\00b\00.\00r\00i\00d\00")
 (data (i32.const 4056) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00t\00b\00.\00u\00n\00i\00t\00i\00n\00f\00o\00")
 (data (i32.const 4096) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00t\00b\00.\00i\00t\00e\00m\00i\00n\00f\00o\00")
 (data (i32.const 4136) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00t\00b\00.\00s\00t\00a\00g\00e\00")
 (data (i32.const 4168) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00t\00b\00.\00u\00s\00e\00r\00")
 (data (i32.const 4200) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00o\00n\00e\00r\00r\00o\00r\00")
 (data (i32.const 4232) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00a\00d\00d\00U\00n\00i\00t\00")
 (data (i32.const 4264) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00c\00o\00n\00t\00r\00a\00c\00t\00 \00o\00w\00n\00e\00r\00 \00o\00n\00l\00y\00")
 (data (i32.const 4320) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00u\00n\00i\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s\00")
 (data (i32.const 4376) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00a\00d\00d\00I\00t\00e\00m\00")
 (data (i32.const 4408) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00i\00t\00e\00m\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s\00")
 (data (i32.const 4464) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00s\00e\00t\00B\00a\00t\00t\00l\00e\00I\00n\00S\00t\00a\00g\00e\00")
 (data (i32.const 4512) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00i\00n\00p\00u\00t\00")
 (data (i32.const 4560) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00t\00b\00.\00s\00t\00a\00g\00e\00b\00a\00t\00")
 (data (i32.const 4600) "n\00\00\00\01\00\00\00\01\00\00\00n\00\00\00o\00b\00j\00e\00c\00t\00 \00p\00a\00s\00s\00e\00d\00 \00t\00o\00 \00m\00o\00d\00i\00f\00y\00 \00i\00s\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00i\00n\00 \00t\00h\00i\00s\00 \00D\00B\00M\00a\00n\00a\00g\00e\00r\00.\00")
 (data (i32.const 4728) "h\00\00\00\01\00\00\00\01\00\00\00h\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00m\00o\00d\00i\00f\00y\00 \00o\00b\00j\00e\00c\00t\00s\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00o\00f\00 \00a\00n\00o\00t\00h\00e\00r\00 \00c\00o\00n\00t\00r\00a\00c\00t\00.\00")
 (data (i32.const 4848) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00s\00e\00t\00S\00t\00a\00g\00e\00")
 (data (i32.const 4880) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00s\00t\00a\00r\00t\00")
 (data (i32.const 4912) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 4928) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00u\00s\00e\00r\00 \00e\00x\00i\00s\00t\00s\00")
 (data (i32.const 4968) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4984) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5000) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5016) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5032) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5048) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00i\00s\00S\00t\00a\00r\00t\00e\00d\00")
 (data (i32.const 5088) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00c\00a\00n\00P\00l\00a\00y\00")
 (data (i32.const 5120) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00t\00b\00.\00s\00t\00a\00g\00e\00p\00r\00o\00g\00")
 (data (i32.const 5160) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00g\00e\00t\00P\00r\00o\00g\00r\00e\00s\00s\00")
 (data (i32.const 5200) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00f\00i\00n\00i\00s\00h\00S\00t\00a\00g\00e\00B\00a\00t\00t\00l\00e\00")
 (data (i32.const 5256) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00b\00u\00y\00F\00r\00o\00m\00P\00l\00a\00t\00f\00o\00r\00m\00")
 (data (i32.const 5304) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00u\00n\00i\00t\00 \00e\00x\00i\00s\00t\00s\00")
 (data (i32.const 5344) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00a\00l\00r\00e\00a\00d\00y\00 \00h\00a\00v\00e\00 \00u\00n\00i\00t\00")
 (data (i32.const 5400) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00n\00e\00e\00d\00 \00t\00o\00 \00p\00a\00y\00 \00e\00n\00o\00u\00g\00h\00")
 (data (i32.const 5456) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00a\00c\00t\00i\00v\00e\00")
 (data (i32.const 5488) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00t\00r\00a\00n\00s\00f\00e\00r\00")
 (data (i32.const 5520) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00u\00t\00r\00i\00o\00.\00t\00o\00k\00e\00n\00")
 (data (i32.const 5560) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5576) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5592) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5608) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00g\00e\00t\00M\00y\00U\00n\00i\00t\00I\00d\00A\00r\00r\00a\00y\00")
 (data (i32.const 5656) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00[\00]\00")
 (data (i32.const 5680) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l\00")
 (data (i32.const 5704) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00g\00e\00t\00M\00y\00U\00n\00i\00t\00B\00y\00I\00d\00")
 (data (i32.const 5752) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00h\00a\00v\00e\00 \00u\00n\00i\00t\00")
 (data (i32.const 5792) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00u\00n\00i\00t\00I\00n\00f\00o\00 \00e\00x\00i\00s\00t\00s\00")
 (data (i32.const 5840) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00g\00e\00t\00M\00y\00I\00t\00e\00m\00R\00I\00d\00A\00r\00r\00a\00y\00")
 (data (i32.const 5896) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00g\00e\00t\00M\00y\00I\00t\00e\00m\00B\00y\00R\00I\00d\00")
 (data (i32.const 5944) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00i\00t\00e\00m\00I\00n\00f\00o\00 \00e\00x\00i\00s\00t\00s\00")
 (data (i32.const 5992) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00i\00t\00e\00m\00 \00e\00x\00i\00s\00t\00s\00")
 (data (i32.const 6032) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00b\00a\00t\00t\00l\00e\00W\00i\00t\00h\00S\00t\00a\00g\00e\00")
 (data (i32.const 6080) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00U\00N\00I\00T\00_\00L\00I\00M\00I\00T\00")
 (data (i32.const 6120) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00U\00s\00e\00r\00 \00e\00x\00i\00s\00t\00s\00")
 (data (i32.const 6160) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00U\00n\00i\00t\00 \00e\00x\00i\00s\00t\00s\00")
 (data (i32.const 6200) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 6216) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 6232) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00I\00T\00E\00M\00_\00L\00I\00M\00I\00T\00")
 (data (i32.const 6272) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00S\00t\00a\00g\00e\00B\00a\00t\00t\00l\00e\00 \00e\00x\00i\00s\00t\00s\00")
 (data (i32.const 6328) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00N\00P\00C\00 \00a\00m\00o\00u\00n\00t\00")
 (data (i32.const 6368) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\000\00.\000\00")
 (data (i32.const 6392) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00N\00a\00N\00")
 (data (i32.const 6416) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 6456) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 6488) "\b8\02\00\00\01\00\00\00\00\00\00\00\b8\02\00\00\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 7200) "\10\00\00\00\01\00\00\00\08\00\00\00\10\00\00\00h\19\00\00h\19\00\00\b8\02\00\00W\00\00\00")
 (data (i32.const 7232) "\ae\00\00\00\01\00\00\00\00\00\00\00\ae\00\00\00<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 7424) "\10\00\00\00\01\00\00\008\00\00\00\10\00\00\00P\1c\00\00P\1c\00\00\ae\00\00\00W\00\00\00")
 (data (i32.const 7456) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 7512) "\10\00\00\00\01\00\00\009\00\00\00\10\00\00\000\1d\00\000\1d\00\00(\00\00\00\n\00\00\00")
 (data (i32.const 7544) "\90\01\00\00\01\00\00\00\00\00\00\00\90\01\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 7960) "\10\00\00\00\01\00\00\009\00\00\00\10\00\00\00\88\1d\00\00\88\1d\00\00\90\01\00\00d\00\00\00")
 (data (i32.const 7992) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 8008) ":\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\13\01\00\00\02\00\00\00\10\00\00\00\00\00\00\003\00\00\00\02\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\93\04\00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\12\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00S\00\00\00\02\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\00\00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00S\04\00\00\02\00\00\00\93\00\00\00\02\00\00\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/ultrain-ts-lib/src/log/Log (mut i32) (i32.const 0))
 (global $~lib/ultrain-ts-lib/src/utils/PrintableChar i32 (i32.const 2928))
 (global $~lib/ultrain-ts-lib/src/asset/CHAR_A i32 (i32.const 65))
 (global $~lib/ultrain-ts-lib/src/asset/CHAR_Z i32 (i32.const 90))
 (global $~lib/ultrain-ts-lib/src/asset/SYS (mut i64) (i64.const 0))
 (global $~lib/ultrain-ts-lib/src/asset/SYS_NAME (mut i64) (i64.const 0))
 (global $~lib/ultrain-ts-lib/src/asset/MAX_AMOUNT i64 (i64.const 4611686018427387903))
 (global $~lib/ultrain-ts-lib/src/events/TYPE_STRING i32 (i32.const 1))
 (global $~lib/ultrain-ts-lib/src/events/TYPE_BOOL i32 (i32.const 2))
 (global $~lib/ultrain-ts-lib/src/events/TYPE_U64 i32 (i32.const 4))
 (global $~lib/ultrain-ts-lib/src/events/TYPE_STRING_ARRAY i32 (i32.const 8))
 (global $~lib/ultrain-ts-lib/src/events/TYPE_BOOL_ARRAY i32 (i32.const 16))
 (global $~lib/ultrain-ts-lib/src/events/TYPE_U64_ARRAY i32 (i32.const 17))
 (global $~lib/ultrain-ts-lib/src/events/EventObject (mut i32) (i32.const 0))
 (global $~lib/ultrain-ts-lib/src/time/block_interval_ms i32 (i32.const 500))
 (global $~lib/ultrain-ts-lib/src/time/block_timestamp_epoch i64 (i64.const 946684800000))
 (global $~lib/ultrain-ts-lib/src/time/SecondsPerDay i32 (i32.const 86400))
 (global $~lib/ultrain-ts-lib/src/time/SecondsPerYear i32 (i32.const 31536000))
 (global $contract/helper/MAX_ENERGY i32 (i32.const 5))
 (global $contract/helper/ALPHABET i32 (i32.const 3608))
 (global $contract/data_in_memory/ITEM_LIMIT i32 (i32.const 3))
 (global $contract/battle/UNIT_LIMIT i32 (i32.const 3))
 (global $contract/battle/ITEM_LIMIT i32 (i32.const 3))
 (global $contract/battle/MAX_ENERGY i32 (i32.const 5))
 (global $contract/game/UNIT_LIMIT i32 (i32.const 3))
 (global $contract/game/ITEM_LIMIT i32 (i32.const 3))
 (global $contract/game/MAX_ENERGY i32 (i32.const 5))
 (global $contract/game/global i32 (i32.const 3752))
 (global $~lib/util/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/util/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp (mut i32) (i32.const 0))
 (global $~lib/util/number/_K (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp_pow (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 8008))
 (global $~lib/heap/__heap_base i32 (i32.const 8476))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/tlsf/__alloc))
 (export "__retain" (func $~lib/rt/pure/__retain))
 (export "__release" (func $~lib/rt/pure/__release))
 (export "__collect" (func $~lib/rt/pure/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "apply" (func $contract/game/apply))
 (start $start)
 (func $~lib/rt/tlsf/removeBlock (; 17 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  local.get $3
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $3
   i32.const 1073741808
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $4
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $5
  else   
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.set $4
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $5
   local.get $4
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $4
  end
  local.get $4
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $5
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=16
  local.set $6
  local.get $1
  i32.load offset=20
  local.set $7
  local.get $6
  if
   local.get $6
   local.get $7
   i32.store offset=20
  end
  local.get $7
  if
   local.get $7
   local.get $6
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.set $10
  local.get $4
  local.set $9
  local.get $5
  local.set $8
  local.get $10
  local.get $9
  i32.const 4
  i32.shl
  local.get $8
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.set $11
   local.get $4
   local.set $10
   local.get $5
   local.set $9
   local.get $7
   local.set $8
   local.get $11
   local.get $10
   i32.const 4
   i32.shl
   local.get $9
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $8
   i32.store offset=96
   local.get $7
   i32.eqz
   if
    local.get $0
    local.set $9
    local.get $4
    local.set $8
    local.get $9
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $9
    local.get $0
    local.set $8
    local.get $4
    local.set $11
    local.get $9
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $9
    local.set $10
    local.get $8
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    local.get $10
    i32.store offset=4
    local.get $9
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (; 18 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  local.get $1
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 16
  i32.add
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $4
  local.get $4
  i32.load
  local.set $5
  local.get $5
  i32.const 1
  i32.and
  if
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $3
   local.get $3
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    i32.const 3
    i32.and
    local.get $3
    i32.or
    local.tee $2
    i32.store
    local.get $1
    local.set $6
    local.get $6
    i32.const 16
    i32.add
    local.get $6
    i32.load
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.set $4
    local.get $4
    i32.load
    local.set $5
   end
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   local.set $6
   local.get $6
   i32.const 4
   i32.sub
   i32.load
   local.set $6
   local.get $6
   i32.load
   local.set $3
   local.get $3
   i32.const 1
   i32.and
   i32.eqz
   if
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $7
   local.get $7
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $6
    local.get $3
    i32.const 3
    i32.and
    local.get $7
    i32.or
    local.tee $2
    i32.store
    local.get $6
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $8
  local.get $8
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $8
   i32.const 1073741808
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $8
  i32.add
  local.get $4
  i32.eq
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $8
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $9
   local.get $8
   i32.const 4
   i32.shr_u
   local.set $10
  else   
   i32.const 31
   local.get $8
   i32.clz
   i32.sub
   local.set $9
   local.get $8
   local.get $9
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $10
   local.get $9
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $9
  end
  local.get $9
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $10
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $7
  local.get $9
  local.set $3
  local.get $10
  local.set $6
  local.get $7
  local.get $3
  i32.const 4
  i32.shl
  local.get $6
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $11
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $11
  i32.store offset=20
  local.get $11
  if
   local.get $11
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.set $12
  local.get $9
  local.set $7
  local.get $10
  local.set $3
  local.get $1
  local.set $6
  local.get $12
  local.get $7
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.set $13
  local.get $9
  local.set $12
  local.get $0
  local.set $3
  local.get $9
  local.set $6
  local.get $3
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $10
  i32.shl
  i32.or
  local.set $7
  local.get $13
  local.get $12
  i32.const 2
  i32.shl
  i32.add
  local.get $7
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (; 19 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  local.get $2
  i32.le_u
  if (result i32)
   local.get $1
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  if (result i32)
   local.get $2
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  if
   local.get $1
   local.get $4
   i32.const 16
   i32.add
   i32.ge_u
   i32.eqz
   if
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
    local.get $4
    i32.load
    local.set $5
   else    
    nop
   end
  else   
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $6
  local.get $6
  i32.const 48
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 2
  i32.const 16
  i32.mul
  i32.sub
  local.set $7
  local.get $1
  local.set $8
  local.get $8
  local.get $7
  i32.const 1
  i32.or
  local.get $5
  i32.const 2
  i32.and
  i32.or
  i32.store
  local.get $8
  i32.const 0
  i32.store offset=16
  local.get $8
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $6
  i32.add
  i32.const 16
  i32.sub
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  i32.store
  local.get $0
  local.set $9
  local.get $4
  local.set $3
  local.get $9
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $8
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
 )
 (func $~lib/rt/tlsf/initializeRoot (; 20 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $0
  memory.size
  local.set $1
  local.get $0
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $2
  local.get $2
  local.get $1
  i32.gt_s
  if (result i32)
   local.get $2
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else   
   i32.const 0
  end
  if
   unreachable
  end
  local.get $0
  local.set $3
  local.get $3
  i32.const 0
  i32.store
  local.get $3
  local.set $5
  i32.const 0
  local.set $4
  local.get $5
  local.get $4
  i32.store offset=1568
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 23
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $3
    local.set $7
    local.get $5
    local.set $6
    i32.const 0
    local.set $4
    local.get $7
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store offset=4
    block $break|1
     i32.const 0
     local.set $7
     loop $loop|1
      local.get $7
      i32.const 16
      i32.lt_u
      i32.eqz
      br_if $break|1
      local.get $3
      local.set $9
      local.get $5
      local.set $8
      local.get $7
      local.set $6
      i32.const 0
      local.set $4
      local.get $9
      local.get $8
      i32.const 4
      i32.shl
      local.get $6
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $4
      i32.store offset=96
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $loop|1
     end
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.get $0
  i32.const 1572
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $3
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (; 21 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $1
  i32.const 16
  local.tee $2
  local.get $1
  local.get $2
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (; 22 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $2
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $3
  else   
   local.get $1
   i32.const 536870904
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
   else    
    local.get $1
   end
   local.set $4
   i32.const 31
   local.get $4
   i32.clz
   i32.sub
   local.set $2
   local.get $4
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
  end
  local.get $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $5
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $6
  i32.const 0
  local.set $7
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $5
   local.get $5
   i32.eqz
   if
    i32.const 0
    local.set $7
   else    
    local.get $5
    i32.ctz
    local.set $2
    local.get $0
    local.set $8
    local.get $2
    local.set $4
    local.get $8
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    local.get $6
    i32.eqz
    if
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.set $9
    local.get $2
    local.set $8
    local.get $6
    i32.ctz
    local.set $4
    local.get $9
    local.get $8
    i32.const 4
    i32.shl
    local.get $4
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    local.set $7
   end
  else   
   local.get $0
   local.set $9
   local.get $2
   local.set $8
   local.get $6
   i32.ctz
   local.set $4
   local.get $9
   local.get $8
   i32.const 4
   i32.shl
   local.get $4
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   local.set $7
  end
  local.get $7
 )
 (func $~lib/rt/tlsf/growMemory (; 23 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  memory.size
  local.set $2
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $3
  local.get $2
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $3
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $7
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  local.get $7
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (; 24 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $4
  local.get $4
  i32.const 32
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else   
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   i32.store
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.load
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (; 25 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $2
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/searchBlock
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/growMemory
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.set $3
   local.get $3
   i32.eqz
   if
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.ge_u
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (; 26 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.set $2
  local.get $2
  i32.eqz
  if
   call $~lib/rt/tlsf/initializeRoot
   global.get $~lib/rt/tlsf/ROOT
   local.set $2
  end
  local.get $2
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  local.set $3
  local.get $3
  local.get $1
  i32.store offset=8
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/increment (; 27 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  i32.eq
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (; 28 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/increment
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/freeBlock (; 29 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/__typeinfo (; 30 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
  local.set $1
  local.get $0
  local.get $1
  i32.load
  i32.gt_u
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.const 8
  i32.mul
  i32.add
  i32.load
 )
 (func $~lib/util/memory/memcpy (; 31 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $1
     i32.const 3
     i32.and
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $continue|0
   end
   unreachable
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     local.get $2
     i32.const 16
     i32.ge_u
     i32.eqz
     br_if $break|1
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     i32.const 4
     i32.add
     local.get $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 8
     i32.add
     local.get $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 12
     i32.add
     local.get $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $continue|1
    end
    unreachable
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $3
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      block $break|3
       loop $continue|3
        local.get $2
        i32.const 17
        i32.ge_u
        i32.eqz
        br_if $break|3
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.set $4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 4
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 12
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $continue|3
       end
       unreachable
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $3
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     block $break|4
      loop $continue|4
       local.get $2
       i32.const 18
       i32.ge_u
       i32.eqz
       br_if $break|4
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.set $4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 4
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 12
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $continue|4
      end
      unreachable
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $3
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    block $break|5
     loop $continue|5
      local.get $2
      i32.const 19
      i32.ge_u
      i32.eqz
      br_if $break|5
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.set $4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 4
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.set $4
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 12
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $continue|5
     end
     unreachable
    end
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (; 32 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $4
   local.get $3
   i32.add
   local.get $5
   i32.le_u
   if (result i32)
    i32.const 1
   else    
    local.get $5
    local.get $3
    i32.add
    local.get $4
    i32.le_u
   end
   if
    local.get $5
    local.get $4
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $5
   local.get $4
   i32.lt_u
   if
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|0
      loop $continue|0
       local.get $5
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|0
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       local.tee $6
       i32.const 1
       i32.add
       local.set $5
       local.get $6
       local.get $4
       local.tee $6
       i32.const 1
       i32.add
       local.set $4
       local.get $6
       i32.load8_u
       i32.store8
       br $continue|0
      end
      unreachable
     end
     block $break|1
      loop $continue|1
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|1
       local.get $5
       local.get $4
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $continue|1
      end
      unreachable
     end
    end
    block $break|2
     loop $continue|2
      local.get $3
      i32.eqz
      br_if $break|2
      local.get $5
      local.tee $6
      i32.const 1
      i32.add
      local.set $5
      local.get $6
      local.get $4
      local.tee $6
      i32.const 1
      i32.add
      local.set $4
      local.get $6
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $continue|2
     end
     unreachable
    end
   else    
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|3
      loop $continue|3
       local.get $5
       local.get $3
       i32.add
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|3
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
      unreachable
     end
     block $break|4
      loop $continue|4
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|4
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       local.get $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
      unreachable
     end
    end
    block $break|5
     loop $continue|5
      local.get $3
      i32.eqz
      br_if $break|5
      local.get $5
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $4
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/rt/tlsf/__free (; 33 ;) (type $FUNCSIG$vi) (param $0 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/pure/growRoots (; 34 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/pure/ROOTS
  local.set $0
  global.get $~lib/rt/pure/CUR
  local.get $0
  i32.sub
  local.set $1
  local.get $1
  i32.const 2
  i32.mul
  local.tee $2
  i32.const 64
  i32.const 2
  i32.shl
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  local.set $4
  local.get $4
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $5
  local.get $5
  local.get $0
  local.get $1
  call $~lib/memory/memory.copy
  local.get $0
  if
   local.get $0
   call $~lib/rt/tlsf/__free
  end
  local.get $5
  global.set $~lib/rt/pure/ROOTS
  local.get $5
  local.get $1
  i32.add
  global.set $~lib/rt/pure/CUR
  local.get $5
  local.get $4
  i32.add
  global.set $~lib/rt/pure/END
 )
 (func $~lib/rt/pure/appendRoot (; 35 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  global.get $~lib/rt/pure/CUR
  local.set $1
  local.get $1
  global.get $~lib/rt/pure/END
  i32.ge_u
  if
   call $~lib/rt/pure/growRoots
   global.get $~lib/rt/pure/CUR
   local.set $1
  end
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/rt/pure/decrement (; 36 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.and
  local.set $2
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   i32.const 1
   call $~lib/rt/__visit_members
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
   if
    global.get $~lib/rt/tlsf/ROOT
    local.get $0
    call $~lib/rt/tlsf/freeBlock
   else    
    local.get $0
    i32.const -2147483648
    i32.const 0
    i32.or
    i32.const 0
    i32.or
    i32.store offset=4
   end
  else   
   local.get $2
   i32.const 0
   i32.gt_u
   i32.eqz
   if
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/__typeinfo
   i32.const 16
   i32.and
   i32.eqz
   if
    local.get $0
    i32.const -2147483648
    i32.const 805306368
    i32.or
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
    local.get $1
    i32.const -2147483648
    i32.and
    i32.eqz
    if
     local.get $0
     call $~lib/rt/pure/appendRoot
    end
   else    
    local.get $0
    local.get $1
    i32.const 268435455
    i32.const -1
    i32.xor
    i32.and
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
   end
  end
 )
 (func $~lib/rt/pure/__release (; 37 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/rt/pure/markGray (; 38 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.ne
  if
   local.get $0
   local.get $1
   i32.const 1879048192
   i32.const -1
   i32.xor
   i32.and
   i32.const 268435456
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 2
   call $~lib/rt/__visit_members
  end
 )
 (func $~lib/rt/pure/scanBlack (; 39 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1879048192
  i32.const -1
  i32.xor
  i32.and
  i32.const 0
  i32.or
  i32.store offset=4
  local.get $0
  i32.const 16
  i32.add
  i32.const 4
  call $~lib/rt/__visit_members
 )
 (func $~lib/rt/pure/scan (; 40 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.eq
  if
   local.get $1
   i32.const 268435455
   i32.and
   i32.const 0
   i32.gt_u
   if
    local.get $0
    call $~lib/rt/pure/scanBlack
   else    
    local.get $0
    local.get $1
    i32.const 1879048192
    i32.const -1
    i32.xor
    i32.and
    i32.const 536870912
    i32.or
    i32.store offset=4
    local.get $0
    i32.const 16
    i32.add
    i32.const 3
    call $~lib/rt/__visit_members
   end
  end
 )
 (func $~lib/rt/pure/collectWhite (; 41 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 536870912
  i32.eq
  if (result i32)
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  if
   local.get $0
   local.get $1
   i32.const 1879048192
   i32.const -1
   i32.xor
   i32.and
   i32.const 0
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 5
   call $~lib/rt/__visit_members
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  end
 )
 (func $~lib/rt/pure/__collect (; 42 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/pure/ROOTS
  local.set $0
  local.get $0
  local.set $1
  block $break|0
   local.get $1
   local.set $2
   global.get $~lib/rt/pure/CUR
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    i32.load offset=4
    local.set $5
    local.get $5
    i32.const 1879048192
    i32.and
    i32.const 805306368
    i32.eq
    if (result i32)
     local.get $5
     i32.const 268435455
     i32.and
     i32.const 0
     i32.gt_u
    else     
     i32.const 0
    end
    if
     local.get $4
     call $~lib/rt/pure/markGray
     local.get $1
     local.get $4
     i32.store
     local.get $1
     i32.const 4
     i32.add
     local.set $1
    else     
     local.get $5
     i32.const 1879048192
     i32.and
     i32.const 0
     i32.eq
     if (result i32)
      local.get $5
      i32.const 268435455
      i32.and
      i32.eqz
     else      
      i32.const 0
     end
     if
      global.get $~lib/rt/tlsf/ROOT
      local.get $4
      call $~lib/rt/tlsf/freeBlock
     else      
      local.get $4
      local.get $5
      i32.const -2147483648
      i32.const -1
      i32.xor
      i32.and
      i32.store offset=4
     end
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  local.get $1
  global.set $~lib/rt/pure/CUR
  block $break|1
   local.get $0
   local.set $5
   loop $loop|1
    local.get $5
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|1
    local.get $5
    i32.load
    call $~lib/rt/pure/scan
    local.get $5
    i32.const 4
    i32.add
    local.set $5
    br $loop|1
   end
   unreachable
  end
  block $break|2
   local.get $0
   local.set $5
   loop $loop|2
    local.get $5
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|2
    local.get $5
    i32.load
    local.set $4
    local.get $4
    local.get $4
    i32.load offset=4
    i32.const -2147483648
    i32.const -1
    i32.xor
    i32.and
    i32.store offset=4
    local.get $4
    call $~lib/rt/pure/collectWhite
    local.get $5
    i32.const 4
    i32.add
    local.set $5
    br $loop|2
   end
   unreachable
  end
  local.get $0
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/ultrain-ts-lib/src/log/Logger#constructor (; 43 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 3
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
 )
 (func $start:~lib/ultrain-ts-lib/src/log (; 44 ;) (type $FUNCSIG$v)
  i32.const 0
  call $~lib/ultrain-ts-lib/src/log/Logger#constructor
  global.set $~lib/ultrain-ts-lib/src/log/Log
 )
 (func $~lib/string/String#get:length (; 45 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String.UTF8.byteLength (; 46 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.set $2
  local.get $2
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.add
  local.set $3
  local.get $1
  if (result i32)
   i32.const 1
  else   
   i32.const 0
  end
  local.set $4
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load16_u
    local.set $5
    local.get $5
    i32.const 128
    i32.lt_u
    if
     local.get $1
     if (result i32)
      local.get $5
      i32.eqz
     else      
      i32.const 0
     end
     if
      br $break|0
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     local.get $2
     i32.const 2
     i32.add
     local.set $2
    else     
     local.get $5
     i32.const 2048
     i32.lt_u
     if
      local.get $4
      i32.const 2
      i32.add
      local.set $4
      local.get $2
      i32.const 2
      i32.add
      local.set $2
     else      
      local.get $5
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      if (result i32)
       local.get $2
       i32.const 2
       i32.add
       local.get $3
       i32.lt_u
      else       
       i32.const 0
      end
      if
       local.get $2
       i32.load16_u offset=2
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        local.get $4
        i32.const 4
        i32.add
        local.set $4
        br $continue|0
       end
      end
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      local.get $4
      i32.const 3
      i32.add
      local.set $4
     end
    end
    br $continue|0
   end
   unreachable
  end
  local.get $4
  local.set $5
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $~lib/rt/tlsf/reallocateBlock (; 47 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  call $~lib/rt/tlsf/prepareSize
  local.set $3
  local.get $1
  i32.load
  local.set $4
  local.get $4
  i32.const 1
  i32.and
  i32.eqz
  if (result i32)
   local.get $1
   i32.load offset=4
   i32.const 268435455
   i32.const -1
   i32.xor
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i32.const -4
  i32.and
  i32.le_u
  if
   local.get $0
   local.get $1
   local.get $3
   call $~lib/rt/tlsf/prepareBlock
   local.get $1
   local.get $2
   i32.store offset=12
   local.get $1
   return
  end
  local.get $1
  local.set $5
  local.get $5
  i32.const 16
  i32.add
  local.get $5
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $6
  local.get $6
  i32.load
  local.set $7
  local.get $7
  i32.const 1
  i32.and
  if
   local.get $4
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $7
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $5
   local.get $5
   local.get $3
   i32.ge_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $4
    i32.const 3
    i32.and
    local.get $5
    i32.or
    i32.store
    local.get $1
    local.get $2
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    call $~lib/rt/tlsf/prepareBlock
    local.get $1
    return
   end
  end
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  local.set $8
  local.get $8
  local.get $1
  i32.load offset=8
  i32.store offset=8
  local.get $8
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  local.get $4
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  local.get $8
 )
 (func $~lib/rt/tlsf/__realloc (; 48 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.sub
  local.get $1
  call $~lib/rt/tlsf/reallocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/string/String.UTF8.encode (; 49 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.set $2
  local.get $0
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.add
  local.set $3
  local.get $0
  local.get $1
  call $~lib/string/String.UTF8.byteLength
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $4
  local.set $5
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load16_u
    local.set $6
    local.get $6
    i32.const 128
    i32.lt_u
    if
     local.get $1
     if (result i32)
      local.get $6
      i32.eqz
     else      
      i32.const 0
     end
     if
      br $break|0
     end
     local.get $5
     local.get $6
     i32.store8
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     local.get $2
     i32.const 2
     i32.add
     local.set $2
    else     
     local.get $6
     i32.const 2048
     i32.lt_u
     if
      local.get $5
      local.get $6
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      i32.store8
      local.get $5
      local.get $6
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get $5
      i32.const 2
      i32.add
      local.set $5
      local.get $2
      i32.const 2
      i32.add
      local.set $2
     else      
      local.get $6
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      if (result i32)
       local.get $2
       i32.const 2
       i32.add
       local.get $3
       i32.lt_u
      else       
       i32.const 0
      end
      if
       local.get $2
       i32.load16_u offset=2
       local.set $7
       local.get $7
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        i32.const 65536
        local.get $6
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.add
        local.get $7
        i32.const 1023
        i32.and
        i32.add
        local.set $6
        local.get $5
        local.get $6
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.store8
        local.get $5
        local.get $6
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        local.get $5
        local.get $6
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=2
        local.get $5
        local.get $6
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=3
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        local.get $5
        i32.const 4
        i32.add
        local.set $5
        br $continue|0
       end
      end
      local.get $5
      local.get $6
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      i32.store8
      local.get $5
      local.get $6
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get $5
      local.get $6
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      local.get $5
      i32.const 3
      i32.add
      local.set $5
     end
    end
    br $continue|0
   end
   unreachable
  end
  local.get $1
  if
   local.get $2
   local.get $3
   i32.le_u
   i32.eqz
   if
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   local.get $5
   local.get $4
   i32.sub
   i32.const 1
   i32.add
   call $~lib/rt/tlsf/__realloc
   local.set $4
   local.get $5
   i32.const 0
   i32.store8
  else   
   local.get $2
   local.get $3
   i32.eq
   i32.eqz
   if
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $4
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $0
  call $~lib/rt/pure/__release
  local.get $6
 )
 (func $~lib/env/ultrain_assert (; 50 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  if
   i32.const 0
   local.get $1
   i32.const 0
   call $~lib/string/String.UTF8.encode
   local.tee $2
   call $~lib/env/ultrainio_assert
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/string/String#charCodeAt (; 51 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const -1
   return
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $~lib/ultrain-ts-lib/src/log/Logger#s (; 52 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 1
  call $~lib/string/String.UTF8.encode
  local.set $2
  local.get $2
  call $~lib/ultrain-ts-lib/src/log/env.ts_log_print_s
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/ultrain-ts-lib/src/log/Logger#i (; 53 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  local.get $1
  local.get $2
  call $~lib/ultrain-ts-lib/src/log/env.ts_log_print_i
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/ultrain-ts-lib/src/log/Logger#flush (; 54 ;) (type $FUNCSIG$vi) (param $0 i32)
  call $~lib/ultrain-ts-lib/src/log/env.ts_log_done
 )
 (func $~lib/ultrain-ts-lib/src/asset/StringToSymbol (; 55 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/string/String#get:length
  local.set $2
  local.get $2
  i32.const 255
  i32.and
  i32.const 7
  i32.le_u
  i32.const 2984
  call $~lib/env/ultrain_assert
  i64.const 0
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $2
    i32.const 255
    i32.and
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $4
    i32.const 255
    i32.and
    call $~lib/string/String#charCodeAt
    i32.const 255
    i32.and
    local.set $5
    local.get $5
    i32.const 65
    i32.lt_u
    if (result i32)
     i32.const 1
    else     
     local.get $5
     i32.const 90
     i32.gt_u
    end
    if
     global.get $~lib/ultrain-ts-lib/src/log/Log
     i32.const 3136
     call $~lib/ultrain-ts-lib/src/log/Logger#s
     local.tee $6
     local.get $5
     i64.extend_i32_u
     i32.const 16
     call $~lib/ultrain-ts-lib/src/log/Logger#i
     local.tee $7
     call $~lib/ultrain-ts-lib/src/log/Logger#flush
     local.get $6
     call $~lib/rt/pure/__release
     local.get $7
     call $~lib/rt/pure/__release
    else     
     local.get $3
     local.get $5
     i64.extend_i32_u
     i64.const 8
     local.get $4
     i32.const 1
     i32.add
     i32.const 255
     i32.and
     i64.extend_i32_u
     i64.mul
     i64.shl
     i64.or
     local.set $3
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.get $0
  i32.const 255
  i32.and
  i64.extend_i32_u
  i64.or
  local.set $3
  local.get $3
  local.set $8
  local.get $1
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $start:~lib/ultrain-ts-lib/src/asset (; 56 ;) (type $FUNCSIG$v)
  call $start:~lib/ultrain-ts-lib/src/log
  i32.const 4
  i32.const 2960
  call $~lib/ultrain-ts-lib/src/asset/StringToSymbol
  global.set $~lib/ultrain-ts-lib/src/asset/SYS
  global.get $~lib/ultrain-ts-lib/src/asset/SYS
  i64.const 8
  i64.shr_u
  global.set $~lib/ultrain-ts-lib/src/asset/SYS_NAME
 )
 (func $start:~lib/ultrain-ts-lib/src/action (; 57 ;) (type $FUNCSIG$v)
  call $start:~lib/ultrain-ts-lib/src/asset
 )
 (func $~lib/rt/__allocArray (; 58 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $0
  local.get $1
  i32.shl
  local.set $5
  local.get $5
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $4
  local.get $6
  call $~lib/rt/pure/__retain
  i32.store
  local.get $4
  local.get $6
  i32.store offset=4
  local.get $4
  local.get $5
  i32.store offset=8
  local.get $4
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $6
   local.get $3
   local.get $5
   call $~lib/memory/memory.copy
  end
  local.get $4
 )
 (func $~lib/ultrain-ts-lib/lib/map/Map<~lib/string/String,~lib/string/String>#constructor (; 59 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 6
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 4
  i32.const 3248
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 4
  i32.const 3264
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $0
  local.set $1
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/ultrain-ts-lib/lib/map/Map<~lib/string/String,u64>#constructor (; 60 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 7
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 4
  i32.const 3280
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  i32.const 0
  i32.const 3
  i32.const 8
  i32.const 3296
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $0
  local.set $1
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/ultrain-ts-lib/lib/map/Map<~lib/string/String,u8>#constructor (; 61 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 9
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 4
  i32.const 3312
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  i32.const 0
  i32.const 0
  i32.const 10
  i32.const 3328
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $0
  local.set $1
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/memory/memory.fill (; 62 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 1
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 1
   i32.add
   local.get $4
   i32.store8
   local.get $5
   i32.const 2
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 2
   i32.sub
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 3
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 3
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $7
   local.get $5
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 4
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 8
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 12
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 8
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 12
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 16
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 20
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 24
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 28
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 24
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 20
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 16
   i32.sub
   local.get $7
   i32.store
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $7
   i64.extend_i32_u
   local.get $7
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $8
   block $break|0
    loop $continue|0
     local.get $3
     i32.const 32
     i32.ge_u
     i32.eqz
     br_if $break|0
     local.get $5
     local.get $8
     i64.store
     local.get $5
     i32.const 8
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 16
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 24
     i32.add
     local.get $8
     i64.store
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $continue|0
    end
    unreachable
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 63 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   drop
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (; 64 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 4
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#constructor (; 65 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 12
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/ultrain-ts-lib/lib/arraymap/ArrayMap<~lib/string/String,~lib/string/String>#constructor (; 66 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 11
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $3
  local.get $2
  i32.load
  call $~lib/rt/pure/__release
  local.get $3
  i32.store
  local.get $0
  local.tee $3
  i32.const 0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#constructor
  local.set $2
  local.get $3
  i32.load offset=4
  call $~lib/rt/pure/__release
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $~lib/array/Array<~lib/array/Array<u64>>#constructor (; 67 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 14
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/ultrain-ts-lib/lib/arraymap/ArrayMap<~lib/string/String,u64>#constructor (; 68 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 13
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $3
  local.get $2
  i32.load
  call $~lib/rt/pure/__release
  local.get $3
  i32.store
  local.get $0
  local.tee $3
  i32.const 0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<u64>>#constructor
  local.set $2
  local.get $3
  i32.load offset=4
  call $~lib/rt/pure/__release
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#constructor (; 69 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 16
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/ultrain-ts-lib/lib/arraymap/ArrayMap<~lib/string/String,u8>#constructor (; 70 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 15
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $3
  local.get $2
  i32.load
  call $~lib/rt/pure/__release
  local.get $3
  i32.store
  local.get $0
  local.tee $3
  i32.const 0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<u8>>#constructor
  local.set $2
  local.get $3
  i32.load offset=4
  call $~lib/rt/pure/__release
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $~lib/ultrain-ts-lib/src/events/_EventObject#constructor (; 71 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 5
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/ultrain-ts-lib/lib/map/Map<~lib/string/String,~lib/string/String>#constructor
  i32.store
  local.get $0
  i32.const 0
  call $~lib/ultrain-ts-lib/lib/map/Map<~lib/string/String,u64>#constructor
  i32.store offset=4
  local.get $0
  i32.const 0
  call $~lib/ultrain-ts-lib/lib/map/Map<~lib/string/String,u8>#constructor
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/ultrain-ts-lib/lib/arraymap/ArrayMap<~lib/string/String,~lib/string/String>#constructor
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/ultrain-ts-lib/lib/arraymap/ArrayMap<~lib/string/String,u64>#constructor
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/ultrain-ts-lib/lib/arraymap/ArrayMap<~lib/string/String,u8>#constructor
  i32.store offset=20
  local.get $0
 )
 (func $start:~lib/ultrain-ts-lib/src/events (; 72 ;) (type $FUNCSIG$v)
  i32.const 0
  call $~lib/ultrain-ts-lib/src/events/_EventObject#constructor
  global.set $~lib/ultrain-ts-lib/src/events/EventObject
 )
 (func $start:contract/game (; 73 ;) (type $FUNCSIG$v)
  call $start:~lib/ultrain-ts-lib/src/action
  call $start:~lib/ultrain-ts-lib/src/events
 )
 (func $~lib/ultrain-ts-lib/src/contract/Contract#constructor (; 74 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 18
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  local.get $1
  i64.store
  local.get $0
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/Unit>#constructor (; 75 ;) (type $FUNCSIG$iijj) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 22
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  local.get $1
  i64.store
  local.get $0
  call $~lib/env/current_receiver
  i64.store offset=8
  local.get $0
  local.get $2
  i64.store offset=16
  local.get $0
 )
 (func $~lib/ultrain-ts-lib/lib/name/char_to_symbol (; 76 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i32.const 255
  i32.and
  i32.const 97
  i32.ge_u
  if (result i32)
   local.get $0
   i32.const 255
   i32.and
   i32.const 122
   i32.le_u
  else   
   i32.const 0
  end
  if
   local.get $0
   i32.const 97
   i32.sub
   i32.const 6
   i32.add
   i32.const 255
   i32.and
   i64.extend_i32_u
   return
  end
  local.get $0
  i32.const 255
  i32.and
  i32.const 49
  i32.ge_u
  if (result i32)
   local.get $0
   i32.const 255
   i32.and
   i32.const 53
   i32.le_u
  else   
   i32.const 0
  end
  if
   local.get $0
   i32.const 49
   i32.sub
   i32.const 1
   i32.add
   i32.const 255
   i32.and
   i64.extend_i32_u
   return
  end
  local.get $0
  i32.const 255
  i32.and
  i32.const 46
  i32.eq
  if
   i64.const 0
   return
  end
  i32.const 0
  i32.const 3816
  call $~lib/env/ultrain_assert
  i64.const 0
 )
 (func $~lib/ultrain-ts-lib/lib/name/N (; 77 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/string/String#get:length
  local.set $1
  i64.const 0
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    i32.const 12
    i32.le_u
    i32.eqz
    br_if $break|0
    i64.const 0
    local.set $4
    local.get $3
    local.get $1
    i32.lt_u
    if (result i32)
     local.get $3
     i32.const 12
     i32.le_u
    else     
     i32.const 0
    end
    if
     local.get $0
     local.get $3
     call $~lib/string/String#charCodeAt
     i32.const 255
     i32.and
     call $~lib/ultrain-ts-lib/lib/name/char_to_symbol
     local.set $4
    end
    local.get $3
    i32.const 12
    i32.lt_u
    if
     local.get $4
     i64.const 31
     i64.and
     local.set $4
     local.get $4
     i64.const 64
     i64.const 5
     local.get $3
     i32.const 1
     i32.add
     i64.extend_i32_u
     i64.mul
     i64.sub
     i64.shl
     local.set $4
    else     
     local.get $4
     i64.const 15
     i64.and
     local.set $4
    end
    local.get $2
    local.get $4
    i64.or
    local.set $2
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $2
  local.set $4
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/ultrain-ts-lib/src/account/NAME (; 78 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  (local $1 i64)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/ultrain-ts-lib/lib/name/N
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/Item>#constructor (; 79 ;) (type $FUNCSIG$iijj) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 24
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  local.get $1
  i64.store
  local.get $0
  call $~lib/env/current_receiver
  i64.store offset=8
  local.get $0
  local.get $2
  i64.store offset=16
  local.get $0
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/RID>#constructor (; 80 ;) (type $FUNCSIG$iijj) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 26
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  local.get $1
  i64.store
  local.get $0
  call $~lib/env/current_receiver
  i64.store offset=8
  local.get $0
  local.get $2
  i64.store offset=16
  local.get $0
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/UnitInfo>#constructor (; 81 ;) (type $FUNCSIG$iijj) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 28
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  local.get $1
  i64.store
  local.get $0
  call $~lib/env/current_receiver
  i64.store offset=8
  local.get $0
  local.get $2
  i64.store offset=16
  local.get $0
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/ItemInfo>#constructor (; 82 ;) (type $FUNCSIG$iijj) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 30
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  local.get $1
  i64.store
  local.get $0
  call $~lib/env/current_receiver
  i64.store offset=8
  local.get $0
  local.get $2
  i64.store offset=16
  local.get $0
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/Stage>#constructor (; 83 ;) (type $FUNCSIG$iijj) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 32
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  local.get $1
  i64.store
  local.get $0
  call $~lib/env/current_receiver
  i64.store offset=8
  local.get $0
  local.get $2
  i64.store offset=16
  local.get $0
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/User>#constructor (; 84 ;) (type $FUNCSIG$iijj) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 37
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  local.get $1
  i64.store
  local.get $0
  call $~lib/env/current_receiver
  i64.store offset=8
  local.get $0
  local.get $2
  i64.store offset=16
  local.get $0
 )
 (func $contract/game/Game#constructor (; 85 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 40
   i32.const 20
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  call $~lib/ultrain-ts-lib/src/contract/Contract#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  i32.const 0
  i32.store offset=24
  local.get $0
  i32.const 0
  i32.store offset=28
  local.get $0
  i32.const 0
  i32.store offset=32
  local.get $0
  i32.const 0
  i32.store offset=36
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 3784
  call $~lib/ultrain-ts-lib/src/account/NAME
  global.get $contract/game/global
  call $~lib/ultrain-ts-lib/src/account/NAME
  call $~lib/dbmanager/DBManager<contract/data_in_db/Unit>#constructor
  local.set $3
  local.get $2
  i32.load offset=12
  call $~lib/rt/pure/__release
  local.get $3
  i32.store offset=12
  local.get $0
  local.tee $3
  i32.const 0
  i32.const 4008
  call $~lib/ultrain-ts-lib/src/account/NAME
  global.get $contract/game/global
  call $~lib/ultrain-ts-lib/src/account/NAME
  call $~lib/dbmanager/DBManager<contract/data_in_db/Item>#constructor
  local.set $2
  local.get $3
  i32.load offset=16
  call $~lib/rt/pure/__release
  local.get $2
  i32.store offset=16
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 4040
  call $~lib/ultrain-ts-lib/src/account/NAME
  global.get $contract/game/global
  call $~lib/ultrain-ts-lib/src/account/NAME
  call $~lib/dbmanager/DBManager<contract/data_in_db/RID>#constructor
  local.set $3
  local.get $2
  i32.load offset=20
  call $~lib/rt/pure/__release
  local.get $3
  i32.store offset=20
  local.get $0
  local.tee $3
  i32.const 0
  i32.const 4072
  call $~lib/ultrain-ts-lib/src/account/NAME
  global.get $contract/game/global
  call $~lib/ultrain-ts-lib/src/account/NAME
  call $~lib/dbmanager/DBManager<contract/data_in_db/UnitInfo>#constructor
  local.set $2
  local.get $3
  i32.load offset=24
  call $~lib/rt/pure/__release
  local.get $2
  i32.store offset=24
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 4112
  call $~lib/ultrain-ts-lib/src/account/NAME
  global.get $contract/game/global
  call $~lib/ultrain-ts-lib/src/account/NAME
  call $~lib/dbmanager/DBManager<contract/data_in_db/ItemInfo>#constructor
  local.set $3
  local.get $2
  i32.load offset=28
  call $~lib/rt/pure/__release
  local.get $3
  i32.store offset=28
  local.get $0
  local.tee $3
  i32.const 0
  i32.const 4152
  call $~lib/ultrain-ts-lib/src/account/NAME
  global.get $contract/game/global
  call $~lib/ultrain-ts-lib/src/account/NAME
  call $~lib/dbmanager/DBManager<contract/data_in_db/Stage>#constructor
  local.set $2
  local.get $3
  i32.load offset=32
  call $~lib/rt/pure/__release
  local.get $2
  i32.store offset=32
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 4184
  call $~lib/ultrain-ts-lib/src/account/NAME
  global.get $contract/game/global
  call $~lib/ultrain-ts-lib/src/account/NAME
  call $~lib/dbmanager/DBManager<contract/data_in_db/User>#constructor
  local.set $3
  local.get $2
  i32.load offset=36
  call $~lib/rt/pure/__release
  local.get $3
  i32.store offset=36
  local.get $0
 )
 (func $~lib/ultrain-ts-lib/lib/name_ex/NameEx#constructor (; 86 ;) (type $FUNCSIG$iijj) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 19
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  local.get $1
  i64.store
  local.get $0
  local.get $2
  i64.store offset=8
  local.get $0
 )
 (func $~lib/ultrain-ts-lib/src/contract/Contract#setActionName (; 87 ;) (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.tee $3
  i32.const 0
  local.get $1
  local.get $2
  call $~lib/ultrain-ts-lib/lib/name_ex/NameEx#constructor
  local.set $4
  local.get $3
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $4
  i32.store offset=8
 )
 (func $~lib/ultrain-ts-lib/src/contract/Contract#get:receiver (; 88 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load
 )
 (func $~lib/ultrain-ts-lib/src/contract/Contract#get:action (; 89 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  call $~lib/rt/pure/__retain
 )
 (func $~lib/ultrain-ts-lib/lib/name_ex/char_to_symbol_ex (; 90 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i32.const 255
  i32.and
  i32.const 46
  i32.eq
  if
   i64.const 0
   return
  end
  local.get $0
  i32.const 255
  i32.and
  i32.const 95
  i32.eq
  if
   i64.const 1
   return
  end
  local.get $0
  i32.const 255
  i32.and
  i32.const 48
  i32.ge_u
  if (result i32)
   local.get $0
   i32.const 255
   i32.and
   i32.const 57
   i32.le_u
  else   
   i32.const 0
  end
  if
   local.get $0
   i32.const 48
   i32.sub
   i32.const 2
   i32.add
   i32.const 255
   i32.and
   i64.extend_i32_u
   return
  end
  local.get $0
  i32.const 255
  i32.and
  i32.const 97
  i32.ge_u
  if (result i32)
   local.get $0
   i32.const 255
   i32.and
   i32.const 122
   i32.le_u
  else   
   i32.const 0
  end
  if
   local.get $0
   i32.const 97
   i32.sub
   i32.const 12
   i32.add
   i32.const 255
   i32.and
   i64.extend_i32_u
   return
  end
  local.get $0
  i32.const 255
  i32.and
  i32.const 65
  i32.ge_u
  if (result i32)
   local.get $0
   i32.const 255
   i32.and
   i32.const 90
   i32.le_u
  else   
   i32.const 0
  end
  if
   local.get $0
   i32.const 65
   i32.sub
   i32.const 38
   i32.add
   i32.const 255
   i32.and
   i64.extend_i32_u
   return
  end
  i64.const 255
 )
 (func $~lib/ultrain-ts-lib/lib/name_ex/NEX (; 91 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  i64.const 0
  i64.const 0
  call $~lib/ultrain-ts-lib/lib/name_ex/NameEx#constructor
  local.set $1
  i64.const 0
  local.set $2
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $4
    call $~lib/string/String#charCodeAt
    call $~lib/ultrain-ts-lib/lib/name_ex/char_to_symbol_ex
    local.set $5
    local.get $4
    i32.const 9
    i32.le_s
    if
     local.get $2
     local.get $5
     i64.const 6
     local.get $4
     i64.extend_i32_s
     i64.mul
     i64.shl
     i64.or
     local.set $2
    else     
     local.get $4
     i32.const 10
     i32.eq
     if
      local.get $5
      i64.const 15
      i64.and
      local.set $6
      local.get $2
      local.get $6
      i64.const 6
      local.get $4
      i64.extend_i32_s
      i64.mul
      i64.shl
      i64.or
      local.set $2
      local.get $1
      local.get $2
      i64.store offset=8
      local.get $5
      i64.const 48
      i64.and
      i64.const 4
      i64.shr_u
      local.set $7
      local.get $7
      local.set $2
     else      
      local.get $2
      local.get $5
      i64.const 6
      local.get $4
      i32.const 11
      i32.sub
      i64.extend_i32_s
      i64.mul
      i64.const 2
      i64.add
      i64.shl
      i64.or
      local.set $2
     end
    end
    local.get $3
    i32.const 10
    i32.le_s
    if
     local.get $1
     local.get $2
     i64.store offset=8
    else     
     local.get $1
     local.get $2
     i64.store
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $1
  local.set $4
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/ultrain-ts-lib/lib/name_ex/NameEx._eq (; 92 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.load
  local.get $1
  i64.load
  i64.eq
  if (result i32)
   local.get $0
   i64.load offset=8
   local.get $1
   i64.load offset=8
   i64.eq
  else   
   i32.const 0
  end
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/ultrain-ts-lib/src/contract/Contract#filterAction (; 93 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/ultrain-ts-lib/src/contract/Contract#get:receiver
  local.get $1
  i64.eq
  if (result i32)
   i32.const 1
  else   
   local.get $0
   call $~lib/ultrain-ts-lib/src/contract/Contract#get:action
   local.tee $2
   i32.const 4216
   call $~lib/ultrain-ts-lib/lib/name_ex/NEX
   local.tee $3
   call $~lib/ultrain-ts-lib/lib/name_ex/NameEx._eq
   local.set $4
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
  end
 )
 (func $~lib/ultrain-ts-lib/src/contract/Contract#onInit (; 94 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 95 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 39
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#get:buffer (; 96 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/datastream/DataStream#constructor (; 97 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 38
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  local.tee $3
  local.get $1
  local.tee $4
  local.get $3
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   drop
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/ultrain-ts-lib/src/contract/DataStreamFromCurrentAction (; 98 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  call $~lib/ultrain-ts-lib/internal/action.d/env.action_data_size
  local.set $0
  i32.const 0
  local.get $0
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  local.get $1
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $2
  local.get $0
  call $~lib/ultrain-ts-lib/internal/action.d/env.read_action_data
  drop
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $3
  local.get $0
  call $~lib/datastream/DataStream#constructor
  local.set $4
  local.get $4
  local.set $5
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $~lib/ultrain-ts-lib/src/contract/Contract#getDataStream (; 99 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  call $~lib/ultrain-ts-lib/src/contract/DataStreamFromCurrentAction
 )
 (func $~lib/ultrain-ts-lib/src/contract/Contract#isAction (; 100 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=8
  local.get $1
  call $~lib/ultrain-ts-lib/lib/name_ex/NEX
  local.tee $2
  call $~lib/ultrain-ts-lib/lib/name_ex/NameEx._eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/datastream/DataStream#read<u64> (; 101 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  (local $1 i64)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  i32.add
  i64.load
  local.set $1
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const 8
  i32.add
  i32.store offset=8
  local.get $1
 )
 (func $~lib/datastream/DataStream#read<u16> (; 102 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  i32.add
  i32.load16_u
  local.set $1
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.add
  i32.store offset=8
  local.get $1
 )
 (func $~lib/ultrain-ts-lib/src/action/Action.sender.get:sender (; 103 ;) (type $FUNCSIG$j) (result i64)
  call $~lib/ultrain-ts-lib/internal/action.d/env.current_sender
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/Unit>#find (; 104 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $1
  call $~lib/env/db_find_i64
  local.set $2
  local.get $2
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/Unit>#exists (; 105 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/dbmanager/DBManager<contract/data_in_db/Unit>#find
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   i32.const 0
  else   
   i32.const 1
  end
 )
 (func $contract/data_in_db/Unit#constructor (; 106 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 68
   i32.const 21
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i32.const 0
  i32.store16 offset=8
  local.get $0
  i32.const 0
  i32.store16 offset=10
  local.get $0
  i32.const 0
  i32.store16 offset=12
  local.get $0
  i32.const 0
  i32.store16 offset=14
  local.get $0
  i32.const 0
  i32.store16 offset=16
  local.get $0
  i32.const 0
  i32.store16 offset=18
  local.get $0
  i32.const 0
  i32.store16 offset=20
  local.get $0
  i32.const 0
  i32.store16 offset=22
  local.get $0
  i32.const 0
  i32.store16 offset=24
  local.get $0
  i32.const 0
  i32.store16 offset=26
  local.get $0
  i32.const 0
  i32.store16 offset=28
  local.get $0
  i32.const 0
  i32.store16 offset=30
  local.get $0
  i64.const 0
  i64.store offset=32
  local.get $0
  i64.const 0
  i64.store offset=40
  local.get $0
  i64.const 0
  i64.store offset=48
  local.get $0
  i64.const 0
  i64.store offset=56
  local.get $0
  i32.const 0
  i32.store offset=64
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 107 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 1073741808
  i32.gt_u
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $2
  local.get $2
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 108 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
 )
 (func $~lib/datastream/DataStream#isMeasureMode (; 109 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 0
  i32.eq
 )
 (func $~lib/datastream/DataStream#write<u64> (; 110 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $0
  call $~lib/datastream/DataStream#isMeasureMode
  i32.eqz
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=8
   i32.add
   local.get $1
   i64.store
  end
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const 8
  i32.add
  i32.store offset=8
 )
 (func $~lib/datastream/DataStream#write<u16> (; 111 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/datastream/DataStream#isMeasureMode
  i32.eqz
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=8
   i32.add
   local.get $1
   i32.store16
  end
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.add
  i32.store offset=8
 )
 (func $~lib/datastream/DataStream#write<u32> (; 112 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/datastream/DataStream#isMeasureMode
  i32.eqz
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=8
   i32.add
   local.get $1
   i32.store
  end
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const 4
  i32.add
  i32.store offset=8
 )
 (func $contract/data_in_db/Unit#serialize (; 113 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  local.get $0
  i64.load
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i32.load16_u offset=8
  call $~lib/datastream/DataStream#write<u16>
  local.get $1
  local.get $0
  i32.load16_u offset=10
  call $~lib/datastream/DataStream#write<u16>
  local.get $1
  local.get $0
  i32.load16_u offset=12
  call $~lib/datastream/DataStream#write<u16>
  local.get $1
  local.get $0
  i32.load16_u offset=14
  call $~lib/datastream/DataStream#write<u16>
  local.get $1
  local.get $0
  i32.load16_u offset=16
  call $~lib/datastream/DataStream#write<u16>
  local.get $1
  local.get $0
  i32.load16_u offset=18
  call $~lib/datastream/DataStream#write<u16>
  local.get $1
  local.get $0
  i32.load16_u offset=20
  call $~lib/datastream/DataStream#write<u16>
  local.get $1
  local.get $0
  i32.load16_u offset=22
  call $~lib/datastream/DataStream#write<u16>
  local.get $1
  local.get $0
  i32.load16_u offset=24
  call $~lib/datastream/DataStream#write<u16>
  local.get $1
  local.get $0
  i32.load16_u offset=26
  call $~lib/datastream/DataStream#write<u16>
  local.get $1
  local.get $0
  i32.load16_u offset=28
  call $~lib/datastream/DataStream#write<u16>
  local.get $1
  local.get $0
  i32.load16_u offset=30
  call $~lib/datastream/DataStream#write<u16>
  local.get $1
  local.get $0
  i64.load offset=32
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i64.load offset=40
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i64.load offset=48
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i64.load offset=56
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i32.load offset=64
  call $~lib/datastream/DataStream#write<u32>
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/datastream/DataStream.measure<contract/data_in_db/Unit> (; 114 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  i32.const 0
  call $~lib/datastream/DataStream#constructor
  local.set $2
  local.get $0
  local.get $2
  call $contract/data_in_db/Unit#serialize
  local.get $2
  i32.load offset=8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $contract/data_in_db/Unit#primaryKey (; 115 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/Unit>#emplace (; 116 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/datastream/DataStream.measure<contract/data_in_db/Unit>
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/typedarray/Uint8Array#constructor
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $4
  local.get $2
  call $~lib/datastream/DataStream#constructor
  local.set $5
  local.get $1
  local.get $5
  call $contract/data_in_db/Unit#serialize
  local.get $1
  call $contract/data_in_db/Unit#primaryKey
  local.set $6
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $6
  local.get $5
  i32.load
  local.get $5
  i32.load offset=8
  call $~lib/env/db_store_i64
  drop
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $contract/game/Game#addUnit (; 117 ;) (type $FUNCSIG$vijiiiiiiiiiiiijj) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (param $8 i32) (param $9 i32) (param $10 i32) (param $11 i32) (param $12 i32) (param $13 i32) (param $14 i64) (param $15 i64)
  (local $16 i32)
  (local $17 i32)
  call $~lib/ultrain-ts-lib/src/action/Action.sender.get:sender
  local.get $0
  call $~lib/ultrain-ts-lib/src/contract/Contract#get:receiver
  i64.eq
  i32.const 4280
  call $~lib/env/ultrain_assert
  local.get $0
  i32.load offset=12
  local.get $1
  call $~lib/dbmanager/DBManager<contract/data_in_db/Unit>#exists
  local.set $16
  local.get $16
  i32.eqz
  i32.const 4336
  call $~lib/env/ultrain_assert
  i32.const 0
  call $contract/data_in_db/Unit#constructor
  local.set $17
  local.get $17
  local.get $1
  i64.store
  local.get $17
  local.get $2
  i32.store16 offset=8
  local.get $17
  local.get $3
  i32.store16 offset=10
  local.get $17
  local.get $4
  i32.store16 offset=12
  local.get $17
  local.get $5
  i32.store16 offset=14
  local.get $17
  local.get $6
  i32.store16 offset=16
  local.get $17
  local.get $7
  i32.store16 offset=18
  local.get $17
  local.get $8
  i32.store16 offset=20
  local.get $17
  local.get $9
  i32.store16 offset=22
  local.get $17
  local.get $10
  i32.store16 offset=24
  local.get $17
  local.get $11
  i32.store16 offset=26
  local.get $17
  local.get $12
  i32.store16 offset=28
  local.get $17
  local.get $13
  i32.store16 offset=30
  local.get $17
  local.get $14
  i64.store offset=48
  local.get $17
  local.get $15
  i64.store offset=56
  local.get $17
  local.get $12
  i32.store16 offset=28
  local.get $17
  local.get $13
  i32.store16 offset=30
  local.get $17
  local.get $14
  i64.store offset=48
  local.get $17
  local.get $15
  i64.store offset=56
  local.get $17
  i32.const 0
  i32.store offset=64
  local.get $0
  i32.load offset=12
  local.get $17
  call $~lib/dbmanager/DBManager<contract/data_in_db/Unit>#emplace
  local.get $17
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/Item>#find (; 118 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $1
  call $~lib/env/db_find_i64
  local.set $2
  local.get $2
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/Item>#exists (; 119 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/dbmanager/DBManager<contract/data_in_db/Item>#find
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   i32.const 0
  else   
   i32.const 1
  end
 )
 (func $contract/data_in_db/Item#constructor (; 120 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 32
   i32.const 23
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i32.const 0
  i32.store16 offset=8
  local.get $0
  i32.const 0
  i32.store16 offset=10
  local.get $0
  i32.const 0
  i32.store16 offset=12
  local.get $0
  i32.const 0
  i32.store16 offset=14
  local.get $0
  i32.const 0
  i32.store16 offset=16
  local.get $0
  i32.const 0
  i32.store16 offset=18
  local.get $0
  i64.const 0
  i64.store offset=24
  local.get $0
 )
 (func $contract/data_in_db/Item#serialize (; 121 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  local.get $0
  i64.load
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i32.load16_u offset=8
  call $~lib/datastream/DataStream#write<u16>
  local.get $1
  local.get $0
  i32.load16_u offset=10
  call $~lib/datastream/DataStream#write<u16>
  local.get $1
  local.get $0
  i32.load16_u offset=12
  call $~lib/datastream/DataStream#write<u16>
  local.get $1
  local.get $0
  i32.load16_u offset=14
  call $~lib/datastream/DataStream#write<u16>
  local.get $1
  local.get $0
  i32.load16_u offset=16
  call $~lib/datastream/DataStream#write<u16>
  local.get $1
  local.get $0
  i32.load16_u offset=18
  call $~lib/datastream/DataStream#write<u16>
  local.get $1
  local.get $0
  i64.load offset=24
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/datastream/DataStream.measure<contract/data_in_db/Item> (; 122 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  i32.const 0
  call $~lib/datastream/DataStream#constructor
  local.set $2
  local.get $0
  local.get $2
  call $contract/data_in_db/Item#serialize
  local.get $2
  i32.load offset=8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $contract/data_in_db/Item#primaryKey (; 123 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/Item>#emplace (; 124 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/datastream/DataStream.measure<contract/data_in_db/Item>
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/typedarray/Uint8Array#constructor
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $4
  local.get $2
  call $~lib/datastream/DataStream#constructor
  local.set $5
  local.get $1
  local.get $5
  call $contract/data_in_db/Item#serialize
  local.get $1
  call $contract/data_in_db/Item#primaryKey
  local.set $6
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $6
  local.get $5
  i32.load
  local.get $5
  i32.load offset=8
  call $~lib/env/db_store_i64
  drop
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $contract/game/Game#addItem (; 125 ;) (type $FUNCSIG$vijiiiiiij) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (param $8 i64)
  (local $9 i32)
  (local $10 i32)
  call $~lib/ultrain-ts-lib/src/action/Action.sender.get:sender
  local.get $0
  call $~lib/ultrain-ts-lib/src/contract/Contract#get:receiver
  i64.eq
  i32.const 4280
  call $~lib/env/ultrain_assert
  local.get $0
  i32.load offset=16
  local.get $1
  call $~lib/dbmanager/DBManager<contract/data_in_db/Item>#exists
  local.set $9
  local.get $9
  i32.eqz
  i32.const 4424
  call $~lib/env/ultrain_assert
  i32.const 0
  call $contract/data_in_db/Item#constructor
  local.set $10
  local.get $10
  local.get $1
  i64.store
  local.get $10
  local.get $2
  i32.store16 offset=8
  local.get $10
  local.get $3
  i32.store16 offset=10
  local.get $10
  local.get $4
  i32.store16 offset=12
  local.get $10
  local.get $5
  i32.store16 offset=14
  local.get $10
  local.get $6
  i32.store16 offset=16
  local.get $10
  local.get $7
  i32.store16 offset=18
  local.get $10
  local.get $8
  i64.store offset=24
  local.get $0
  i32.load offset=16
  local.get $10
  call $~lib/dbmanager/DBManager<contract/data_in_db/Item>#emplace
  local.get $10
  call $~lib/rt/pure/__release
 )
 (func $~lib/datastream/DataStream#read<u8> (; 126 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  i32.add
  i32.load8_u
  local.set $1
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.add
  i32.store offset=8
  local.get $1
 )
 (func $~lib/datastream/DataStream#readVarint32 (; 127 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  local.set $1
  i32.const 0
  local.set $2
  loop $continue|0
   local.get $0
   call $~lib/datastream/DataStream#read<u8>
   local.set $3
   local.get $1
   local.get $3
   i32.const 127
   i32.and
   i32.const 7
   local.get $2
   local.tee $4
   i32.const 1
   i32.add
   local.set $2
   local.get $4
   i32.mul
   i32.shl
   i32.or
   local.set $1
   local.get $3
   i32.const 128
   i32.and
   br_if $continue|0
  end
  local.get $1
 )
 (func $~lib/array/Array<u64>#constructor (; 128 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 8
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/ensureSize (; 129 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=8
  local.set $3
  local.get $1
  local.get $3
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741808
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $4
   local.get $1
   local.get $2
   i32.shl
   local.set $5
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/__realloc
   local.set $6
   local.get $6
   local.get $3
   i32.add
   i32.const 0
   local.get $5
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $6
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $6
    call $~lib/rt/pure/__retain
    i32.store
    local.get $0
    local.get $6
    i32.store offset=4
   end
   local.get $0
   local.get $5
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<u64>#push (; 130 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 3
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 3
  i32.shl
  i32.add
  local.get $1
  i64.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
 )
 (func $~lib/datastream/DataStream#readVector<u64> (; 131 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/datastream/DataStream#readVarint32
  local.set $1
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 0
   call $~lib/array/Array<u64>#constructor
   return
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u64>#constructor
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $0
    call $~lib/datastream/DataStream#read<u64>
    call $~lib/array/Array<u64>#push
    drop
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $2
 )
 (func $~lib/array/Array<u8>#constructor (; 132 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 10
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<u8>#push (; 133 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 0
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 0
  i32.shl
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
 )
 (func $~lib/datastream/DataStream#readVector<u8> (; 134 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/datastream/DataStream#readVarint32
  local.set $1
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 0
   call $~lib/array/Array<u8>#constructor
   return
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u8>#constructor
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $0
    call $~lib/datastream/DataStream#read<u8>
    call $~lib/array/Array<u8>#push
    drop
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $2
 )
 (func $~lib/array/Array<u16>#constructor (; 135 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 34
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 1
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<u16>#push (; 136 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 1
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 1
  i32.shl
  i32.add
  local.get $1
  i32.store16
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
 )
 (func $~lib/datastream/DataStream#readVector<u16> (; 137 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/datastream/DataStream#readVarint32
  local.set $1
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 0
   call $~lib/array/Array<u16>#constructor
   return
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<u16>#constructor
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $0
    call $~lib/datastream/DataStream#read<u16>
    call $~lib/array/Array<u16>#push
    drop
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $2
 )
 (func $~lib/array/Array<u64>#get:length (; 138 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u8>#get:length (; 139 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u16>#get:length (; 140 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/StageBattle>#constructor (; 141 ;) (type $FUNCSIG$iijj) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 41
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  local.get $1
  i64.store
  local.get $0
  call $~lib/env/current_receiver
  i64.store offset=8
  local.get $0
  local.get $2
  i64.store offset=16
  local.get $0
 )
 (func $contract/data_in_db/StageBattle#constructor (; 142 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 40
   i32.const 40
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  i64.const 0
  i64.store offset=24
  local.get $0
  i64.const 0
  i64.store offset=32
  local.get $0
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/StageBattle>#find (; 143 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $1
  call $~lib/env/db_find_i64
  local.set $2
  local.get $2
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/StageBattle>#exists (; 144 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/dbmanager/DBManager<contract/data_in_db/StageBattle>#find
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   i32.const 0
  else   
   i32.const 1
  end
 )
 (func $contract/data_in_db/StageBattle#primaryKey (; 145 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load
 )
 (func $~lib/datastream/DataStream#write<u8> (; 146 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/datastream/DataStream#isMeasureMode
  i32.eqz
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=8
   i32.add
   local.get $1
   i32.store8
  end
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.add
  i32.store offset=8
 )
 (func $~lib/datastream/DataStream#writeVarint32 (; 147 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  loop $continue|0
   local.get $1
   i32.const 127
   i32.and
   local.set $2
   local.get $1
   i32.const 7
   i32.shr_u
   local.set $1
   local.get $2
   local.get $1
   i32.const 0
   i32.gt_u
   if (result i32)
    i32.const 1
   else    
    i32.const 0
   end
   i32.const 7
   i32.shl
   i32.or
   local.set $2
   local.get $0
   local.get $2
   call $~lib/datastream/DataStream#write<u8>
   local.get $1
   br_if $continue|0
  end
 )
 (func $~lib/array/Array<u64>#__unchecked_get (; 148 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<u64>#__get (; 149 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u64>#__unchecked_get
 )
 (func $~lib/datastream/DataStream#writeVector<u64> (; 150 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/array/Array<u64>#get:length
  local.set $2
  local.get $0
  local.get $2
  call $~lib/datastream/DataStream#writeVarint32
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $1
    local.get $3
    call $~lib/array/Array<u64>#__get
    call $~lib/datastream/DataStream#write<u64>
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<u8>#__unchecked_get (; 151 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_u
 )
 (func $~lib/array/Array<u8>#__get (; 152 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.shr_u
  i32.ge_u
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#__unchecked_get
 )
 (func $~lib/datastream/DataStream#writeVector<u8> (; 153 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/array/Array<u8>#get:length
  local.set $2
  local.get $0
  local.get $2
  call $~lib/datastream/DataStream#writeVarint32
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $1
    local.get $3
    call $~lib/array/Array<u8>#__get
    call $~lib/datastream/DataStream#write<u8>
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<u16>#__unchecked_get (; 154 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $~lib/array/Array<u16>#__get (; 155 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u16>#__unchecked_get
 )
 (func $~lib/datastream/DataStream#writeVector<u16> (; 156 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/array/Array<u16>#get:length
  local.set $2
  local.get $0
  local.get $2
  call $~lib/datastream/DataStream#writeVarint32
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $1
    local.get $3
    call $~lib/array/Array<u16>#__get
    call $~lib/datastream/DataStream#write<u16>
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $contract/data_in_db/StageBattle#serialize (; 157 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  local.get $0
  i64.load
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i32.load offset=8
  call $~lib/datastream/DataStream#writeVector<u64>
  local.get $1
  local.get $0
  i32.load offset=12
  call $~lib/datastream/DataStream#writeVector<u8>
  local.get $1
  local.get $0
  i32.load offset=16
  call $~lib/datastream/DataStream#writeVector<u64>
  local.get $1
  local.get $0
  i32.load offset=20
  call $~lib/datastream/DataStream#writeVector<u16>
  local.get $1
  local.get $0
  i64.load offset=24
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i64.load offset=32
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/datastream/DataStream.measure<contract/data_in_db/StageBattle> (; 158 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  i32.const 0
  call $~lib/datastream/DataStream#constructor
  local.set $2
  local.get $0
  local.get $2
  call $contract/data_in_db/StageBattle#serialize
  local.get $2
  i32.load offset=8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/StageBattle>#modify (; 159 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $contract/data_in_db/StageBattle#primaryKey
  call $~lib/dbmanager/DBManager<contract/data_in_db/StageBattle>#find
  local.set $2
  local.get $2
  i32.const 0
  i32.ge_s
  i32.const 4616
  call $~lib/env/ultrain_assert
  local.get $0
  i64.load offset=8
  call $~lib/env/current_receiver
  i64.eq
  i32.const 4744
  call $~lib/env/ultrain_assert
  local.get $1
  call $~lib/datastream/DataStream.measure<contract/data_in_db/StageBattle>
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $4
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  local.get $3
  call $~lib/datastream/DataStream#constructor
  local.set $6
  local.get $1
  local.get $6
  call $contract/data_in_db/StageBattle#serialize
  local.get $2
  local.get $0
  i64.load offset=8
  local.get $6
  i32.load
  local.get $6
  i32.load offset=8
  call $~lib/env/db_update_i64
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/StageBattle>#emplace (; 160 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/datastream/DataStream.measure<contract/data_in_db/StageBattle>
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/typedarray/Uint8Array#constructor
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $4
  local.get $2
  call $~lib/datastream/DataStream#constructor
  local.set $5
  local.get $1
  local.get $5
  call $contract/data_in_db/StageBattle#serialize
  local.get $1
  call $contract/data_in_db/StageBattle#primaryKey
  local.set $6
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $6
  local.get $5
  i32.load
  local.get $5
  i32.load offset=8
  call $~lib/env/db_store_i64
  drop
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $contract/game/Game#setBattleInStage (; 161 ;) (type $FUNCSIG$vijjiiiijj) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i64) (param $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $4
  call $~lib/rt/pure/__retain
  drop
  local.get $5
  call $~lib/rt/pure/__retain
  drop
  local.get $6
  call $~lib/rt/pure/__retain
  drop
  call $~lib/ultrain-ts-lib/src/action/Action.sender.get:sender
  local.get $0
  call $~lib/ultrain-ts-lib/src/contract/Contract#get:receiver
  i64.eq
  i32.const 4280
  call $~lib/env/ultrain_assert
  local.get $3
  call $~lib/array/Array<u64>#get:length
  global.get $contract/game/UNIT_LIMIT
  i32.eq
  i32.const 4528
  call $~lib/env/ultrain_assert
  local.get $4
  call $~lib/array/Array<u8>#get:length
  global.get $contract/game/UNIT_LIMIT
  i32.eq
  i32.const 4528
  call $~lib/env/ultrain_assert
  local.get $5
  call $~lib/array/Array<u64>#get:length
  local.get $6
  call $~lib/array/Array<u16>#get:length
  i32.eq
  i32.const 4528
  call $~lib/env/ultrain_assert
  i32.const 0
  i32.const 4576
  call $~lib/ultrain-ts-lib/src/account/NAME
  local.get $1
  call $~lib/dbmanager/DBManager<contract/data_in_db/StageBattle>#constructor
  local.set $9
  i32.const 0
  call $contract/data_in_db/StageBattle#constructor
  local.set $10
  local.get $10
  local.get $2
  i64.store
  local.get $10
  local.tee $11
  local.get $3
  local.tee $12
  local.get $11
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   drop
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store offset=8
  local.get $10
  local.tee $12
  local.get $4
  local.tee $11
  local.get $12
  i32.load offset=12
  local.tee $12
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   drop
   local.get $12
   call $~lib/rt/pure/__release
  end
  local.get $11
  i32.store offset=12
  local.get $10
  local.tee $11
  local.get $5
  local.tee $12
  local.get $11
  i32.load offset=16
  local.tee $11
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   drop
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store offset=16
  local.get $10
  local.tee $12
  local.get $6
  local.tee $11
  local.get $12
  i32.load offset=20
  local.tee $12
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   drop
   local.get $12
   call $~lib/rt/pure/__release
  end
  local.get $11
  i32.store offset=20
  local.get $10
  local.get $7
  i64.store offset=24
  local.get $10
  local.get $8
  i64.store offset=32
  local.get $9
  local.get $2
  call $~lib/dbmanager/DBManager<contract/data_in_db/StageBattle>#exists
  local.set $11
  local.get $11
  if
   local.get $9
   local.get $10
   call $~lib/dbmanager/DBManager<contract/data_in_db/StageBattle>#modify
  else   
   local.get $9
   local.get $10
   call $~lib/dbmanager/DBManager<contract/data_in_db/StageBattle>#emplace
  end
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $contract/data_in_db/Stage#constructor (; 162 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 17
   i32.const 31
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i32.const 0
  i32.store8 offset=16
  local.get $0
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/Stage>#find (; 163 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $1
  call $~lib/env/db_find_i64
  local.set $2
  local.get $2
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/Stage>#exists (; 164 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/dbmanager/DBManager<contract/data_in_db/Stage>#find
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   i32.const 0
  else   
   i32.const 1
  end
 )
 (func $contract/data_in_db/Stage#primaryKey (; 165 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load
 )
 (func $contract/data_in_db/Stage#serialize (; 166 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  local.get $0
  i64.load
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i64.load offset=8
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i32.load8_u offset=16
  call $~lib/datastream/DataStream#write<u8>
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/datastream/DataStream.measure<contract/data_in_db/Stage> (; 167 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  i32.const 0
  call $~lib/datastream/DataStream#constructor
  local.set $2
  local.get $0
  local.get $2
  call $contract/data_in_db/Stage#serialize
  local.get $2
  i32.load offset=8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/Stage>#modify (; 168 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $contract/data_in_db/Stage#primaryKey
  call $~lib/dbmanager/DBManager<contract/data_in_db/Stage>#find
  local.set $2
  local.get $2
  i32.const 0
  i32.ge_s
  i32.const 4616
  call $~lib/env/ultrain_assert
  local.get $0
  i64.load offset=8
  call $~lib/env/current_receiver
  i64.eq
  i32.const 4744
  call $~lib/env/ultrain_assert
  local.get $1
  call $~lib/datastream/DataStream.measure<contract/data_in_db/Stage>
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $4
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  local.get $3
  call $~lib/datastream/DataStream#constructor
  local.set $6
  local.get $1
  local.get $6
  call $contract/data_in_db/Stage#serialize
  local.get $2
  local.get $0
  i64.load offset=8
  local.get $6
  i32.load
  local.get $6
  i32.load offset=8
  call $~lib/env/db_update_i64
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/Stage>#emplace (; 169 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/datastream/DataStream.measure<contract/data_in_db/Stage>
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/typedarray/Uint8Array#constructor
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $4
  local.get $2
  call $~lib/datastream/DataStream#constructor
  local.set $5
  local.get $1
  local.get $5
  call $contract/data_in_db/Stage#serialize
  local.get $1
  call $contract/data_in_db/Stage#primaryKey
  local.set $6
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $6
  local.get $5
  i32.load
  local.get $5
  i32.load offset=8
  call $~lib/env/db_store_i64
  drop
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $contract/game/Game#setStage (; 170 ;) (type $FUNCSIG$vijji) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  call $~lib/ultrain-ts-lib/src/action/Action.sender.get:sender
  local.get $0
  call $~lib/ultrain-ts-lib/src/contract/Contract#get:receiver
  i64.eq
  i32.const 4280
  call $~lib/env/ultrain_assert
  i32.const 0
  call $contract/data_in_db/Stage#constructor
  local.set $4
  local.get $4
  local.get $1
  i64.store
  local.get $4
  local.get $2
  i64.store offset=8
  local.get $4
  local.get $3
  i32.store8 offset=16
  local.get $0
  i32.load offset=32
  local.get $1
  call $~lib/dbmanager/DBManager<contract/data_in_db/Stage>#exists
  local.set $5
  local.get $5
  if
   local.get $0
   i32.load offset=32
   local.get $4
   call $~lib/dbmanager/DBManager<contract/data_in_db/Stage>#modify
  else   
   local.get $0
   i32.load offset=32
   local.get $4
   call $~lib/dbmanager/DBManager<contract/data_in_db/Stage>#emplace
  end
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $contract/data_in_db/User#constructor (; 171 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 44
   i32.const 33
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  i32.const 0
  i32.store offset=24
  local.get $0
  i32.const 0
  i32.store offset=28
  local.get $0
  i32.const 0
  i32.store offset=32
  local.get $0
  i32.const 0
  i32.store offset=36
  local.get $0
  i32.const 0
  i32.store offset=40
  local.get $0
 )
 (func $~lib/datastream/DataStream#read<u32> (; 172 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  i32.add
  i32.load
  local.set $1
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const 4
  i32.add
  i32.store offset=8
  local.get $1
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (; 173 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  local.set $3
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $4
  local.get $3
  i32.ge_u
  i32.eqz
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $5
  local.get $5
  local.set $6
  block $break|0
   loop $continue|0
    local.get $3
    local.get $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $3
    local.tee $7
    i32.const 1
    i32.add
    local.set $3
    local.get $7
    i32.load8_u
    local.set $7
    local.get $7
    i32.const 128
    i32.lt_u
    if
     local.get $2
     if (result i32)
      local.get $7
      i32.eqz
     else      
      i32.const 0
     end
     if
      br $break|0
     end
     local.get $6
     local.get $7
     i32.store16
     local.get $6
     i32.const 2
     i32.add
     local.set $6
    else     
     local.get $7
     i32.const 191
     i32.gt_u
     if (result i32)
      local.get $7
      i32.const 224
      i32.lt_u
     else      
      i32.const 0
     end
     if
      local.get $4
      local.get $3
      i32.sub
      i32.const 1
      i32.lt_u
      if
       br $break|0
      end
      local.get $6
      local.get $7
      i32.const 31
      i32.and
      i32.const 6
      i32.shl
      local.get $3
      local.tee $8
      i32.const 1
      i32.add
      local.set $3
      local.get $8
      i32.load8_u
      i32.const 63
      i32.and
      i32.or
      i32.store16
      local.get $6
      i32.const 2
      i32.add
      local.set $6
     else      
      local.get $7
      i32.const 239
      i32.gt_u
      if (result i32)
       local.get $7
       i32.const 365
       i32.lt_u
      else       
       i32.const 0
      end
      if
       local.get $4
       local.get $3
       i32.sub
       i32.const 3
       i32.lt_u
       if
        br $break|0
       end
       local.get $7
       i32.const 7
       i32.and
       i32.const 18
       i32.shl
       local.get $3
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 12
       i32.shl
       i32.or
       local.get $3
       i32.load8_u offset=1
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       local.get $3
       i32.load8_u offset=2
       i32.const 63
       i32.and
       i32.or
       i32.const 65536
       i32.sub
       local.set $7
       local.get $3
       i32.const 3
       i32.add
       local.set $3
       local.get $6
       i32.const 55296
       local.get $7
       i32.const 10
       i32.shr_u
       i32.add
       i32.store16
       local.get $6
       i32.const 56320
       local.get $7
       i32.const 1023
       i32.and
       i32.add
       i32.store16 offset=2
       local.get $6
       i32.const 4
       i32.add
       local.set $6
      else       
       local.get $4
       local.get $3
       i32.sub
       i32.const 2
       i32.lt_u
       if
        br $break|0
       end
       local.get $6
       local.get $7
       i32.const 15
       i32.and
       i32.const 12
       i32.shl
       local.get $3
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       local.get $3
       i32.load8_u offset=1
       i32.const 63
       i32.and
       i32.or
       i32.store16
       local.get $3
       i32.const 2
       i32.add
       local.set $3
       local.get $6
       i32.const 2
       i32.add
       local.set $6
      end
     end
    end
    br $continue|0
   end
   unreachable
  end
  local.get $5
  local.get $6
  local.get $5
  i32.sub
  call $~lib/rt/tlsf/__realloc
  call $~lib/rt/pure/__retain
 )
 (func $~lib/datastream/DataStream#readString (; 174 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/datastream/DataStream#readVarint32
  local.set $1
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 4928
   call $~lib/rt/pure/__retain
   return
  end
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint8Array#constructor
  local.set $2
  local.get $2
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $3
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  i32.add
  local.get $1
  call $~lib/memory/memory.copy
  local.get $0
  local.get $0
  i32.load offset=8
  local.get $1
  i32.add
  i32.store offset=8
  local.get $2
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $4
  local.get $1
  i32.const 0
  call $~lib/string/String.UTF8.decodeUnsafe
  local.set $5
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $~lib/array/Array<contract/data_in_db/Duel>#constructor (; 175 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 36
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $1
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $contract/data_in_db/Duel#deserialize (; 176 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store
  local.get $0
  local.tee $2
  local.get $1
  call $~lib/datastream/DataStream#readString
  local.set $3
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $3
  i32.store offset=8
  local.get $0
  local.tee $3
  local.get $1
  call $~lib/datastream/DataStream#readString
  local.set $2
  local.get $3
  i32.load offset=12
  call $~lib/rt/pure/__release
  local.get $2
  i32.store offset=12
  local.get $0
  local.tee $2
  local.get $1
  call $~lib/datastream/DataStream#readString
  local.set $3
  local.get $2
  i32.load offset=16
  call $~lib/rt/pure/__release
  local.get $3
  i32.store offset=16
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<contract/data_in_db/Duel>#push (; 177 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/datastream/DataStream#readComplexVector<contract/data_in_db/Duel> (; 178 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/datastream/DataStream#readVarint32
  local.set $1
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 0
   call $~lib/array/Array<contract/data_in_db/Duel>#constructor
   return
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<contract/data_in_db/Duel>#constructor
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|0
    i32.const 20
    i32.const 35
    call $~lib/rt/tlsf/__alloc
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $4
    call $~lib/rt/pure/__retain
    local.set $5
    local.get $5
    local.get $0
    call $contract/data_in_db/Duel#deserialize
    local.get $2
    local.get $5
    call $~lib/array/Array<contract/data_in_db/Duel>#push
    drop
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  local.get $2
 )
 (func $contract/data_in_db/User#deserialize (; 179 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store
  local.get $0
  local.tee $2
  local.get $1
  call $~lib/datastream/DataStream#readVector<u16>
  local.set $3
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $3
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u32>
  i32.store offset=12
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u32>
  i32.store offset=16
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u32>
  i32.store offset=20
  local.get $0
  local.tee $3
  local.get $1
  call $~lib/datastream/DataStream#readVector<u64>
  local.set $2
  local.get $3
  i32.load offset=24
  call $~lib/rt/pure/__release
  local.get $2
  i32.store offset=24
  local.get $0
  local.tee $2
  local.get $1
  call $~lib/datastream/DataStream#readVector<u64>
  local.set $3
  local.get $2
  i32.load offset=28
  call $~lib/rt/pure/__release
  local.get $3
  i32.store offset=28
  local.get $0
  local.tee $3
  local.get $1
  call $~lib/datastream/DataStream#readVector<u64>
  local.set $2
  local.get $3
  i32.load offset=32
  call $~lib/rt/pure/__release
  local.get $2
  i32.store offset=32
  local.get $0
  local.tee $2
  local.get $1
  call $~lib/datastream/DataStream#readString
  local.set $3
  local.get $2
  i32.load offset=36
  call $~lib/rt/pure/__release
  local.get $3
  i32.store offset=36
  local.get $0
  local.tee $3
  local.get $1
  call $~lib/datastream/DataStream#readComplexVector<contract/data_in_db/Duel>
  local.set $2
  local.get $3
  i32.load offset=40
  call $~lib/rt/pure/__release
  local.get $2
  i32.store offset=40
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/User>#loadObjectByPrimaryIterator (; 180 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/env/db_get_i64
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $4
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  local.get $3
  call $~lib/datastream/DataStream#constructor
  local.set $6
  local.get $1
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $7
  local.get $3
  call $~lib/env/db_get_i64
  drop
  local.get $2
  local.get $6
  call $contract/data_in_db/User#deserialize
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/User>#get (; 181 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $1
  call $~lib/env/db_find_i64
  local.set $3
  local.get $3
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   local.set $4
   local.get $2
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $0
  local.get $3
  local.get $2
  call $~lib/dbmanager/DBManager<contract/data_in_db/User>#loadObjectByPrimaryIterator
  i32.const 1
  local.set $4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/datastream/DataStream#writeString (; 182 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 0
  call $~lib/string/String.UTF8.byteLength
  local.set $2
  local.get $0
  local.get $2
  call $~lib/datastream/DataStream#writeVarint32
  local.get $2
  i32.const 0
  i32.eq
  if
   local.get $1
   call $~lib/rt/pure/__release
   return
  end
  local.get $0
  call $~lib/datastream/DataStream#isMeasureMode
  i32.eqz
  if
   local.get $1
   i32.const 0
   call $~lib/string/String.UTF8.encode
   local.tee $3
   local.set $4
   local.get $0
   i32.load
   local.get $0
   i32.load offset=8
   i32.add
   local.get $4
   local.get $2
   call $~lib/memory/memory.copy
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $0
  i32.load offset=8
  local.get $2
  i32.add
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<contract/data_in_db/Duel>#get:length (; 183 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<contract/data_in_db/Duel>#__unchecked_get (; 184 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<contract/data_in_db/Duel>#__get (; 185 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<contract/data_in_db/Duel>#__unchecked_get
 )
 (func $contract/data_in_db/Duel#serialize (; 186 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  local.get $0
  i64.load
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i32.load offset=8
  call $~lib/datastream/DataStream#writeString
  local.get $1
  local.get $0
  i32.load offset=12
  call $~lib/datastream/DataStream#writeString
  local.get $1
  local.get $0
  i32.load offset=16
  call $~lib/datastream/DataStream#writeString
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/datastream/DataStream#writeComplexVector<contract/data_in_db/Duel> (; 187 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/array/Array<contract/data_in_db/Duel>#get:length
  local.set $2
  local.get $0
  local.get $2
  call $~lib/datastream/DataStream#writeVarint32
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $3
    call $~lib/array/Array<contract/data_in_db/Duel>#__get
    local.tee $4
    local.get $0
    call $contract/data_in_db/Duel#serialize
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $contract/data_in_db/User#serialize (; 188 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  local.get $0
  i64.load
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i32.load offset=8
  call $~lib/datastream/DataStream#writeVector<u16>
  local.get $1
  local.get $0
  i32.load offset=12
  call $~lib/datastream/DataStream#write<u32>
  local.get $1
  local.get $0
  i32.load offset=16
  call $~lib/datastream/DataStream#write<u32>
  local.get $1
  local.get $0
  i32.load offset=20
  call $~lib/datastream/DataStream#write<u32>
  local.get $1
  local.get $0
  i32.load offset=24
  call $~lib/datastream/DataStream#writeVector<u64>
  local.get $1
  local.get $0
  i32.load offset=28
  call $~lib/datastream/DataStream#writeVector<u64>
  local.get $1
  local.get $0
  i32.load offset=32
  call $~lib/datastream/DataStream#writeVector<u64>
  local.get $1
  local.get $0
  i32.load offset=36
  call $~lib/datastream/DataStream#writeString
  local.get $1
  local.get $0
  i32.load offset=40
  call $~lib/datastream/DataStream#writeComplexVector<contract/data_in_db/Duel>
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/datastream/DataStream.measure<contract/data_in_db/User> (; 189 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  i32.const 0
  call $~lib/datastream/DataStream#constructor
  local.set $2
  local.get $0
  local.get $2
  call $contract/data_in_db/User#serialize
  local.get $2
  i32.load offset=8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $contract/data_in_db/User#primaryKey (; 190 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/User>#emplace (; 191 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/datastream/DataStream.measure<contract/data_in_db/User>
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/typedarray/Uint8Array#constructor
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $4
  local.get $2
  call $~lib/datastream/DataStream#constructor
  local.set $5
  local.get $1
  local.get $5
  call $contract/data_in_db/User#serialize
  local.get $1
  call $contract/data_in_db/User#primaryKey
  local.set $6
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $6
  local.get $5
  i32.load
  local.get $5
  i32.load offset=8
  call $~lib/env/db_store_i64
  drop
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $contract/game/Game#start (; 192 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 0
  call $contract/data_in_db/User#constructor
  local.set $1
  local.get $0
  i32.load offset=36
  call $~lib/ultrain-ts-lib/src/action/Action.sender.get:sender
  local.get $1
  call $~lib/dbmanager/DBManager<contract/data_in_db/User>#get
  local.set $2
  local.get $2
  i32.eqz
  i32.const 4944
  call $~lib/env/ultrain_assert
  local.get $1
  call $~lib/ultrain-ts-lib/src/action/Action.sender.get:sender
  i64.store
  local.get $1
  local.tee $3
  i32.const 0
  i32.const 1
  i32.const 34
  i32.const 4984
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  local.tee $5
  local.get $3
  i32.load offset=8
  local.tee $3
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   drop
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store offset=8
  local.get $1
  i32.const 1000
  i32.store offset=12
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $1
  local.tee $5
  i32.const 0
  i32.const 3
  i32.const 8
  i32.const 5000
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  local.tee $6
  local.get $5
  i32.load offset=24
  local.tee $5
  i32.ne
  if
   local.get $6
   call $~lib/rt/pure/__retain
   drop
   local.get $5
   call $~lib/rt/pure/__release
  end
  local.get $6
  i32.store offset=24
  local.get $1
  local.tee $6
  i32.const 0
  i32.const 3
  i32.const 8
  i32.const 5016
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  local.tee $7
  local.get $6
  i32.load offset=28
  local.tee $6
  i32.ne
  if
   local.get $7
   call $~lib/rt/pure/__retain
   drop
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $7
  i32.store offset=28
  local.get $1
  local.tee $7
  i32.const 0
  i32.const 3
  i32.const 8
  i32.const 5032
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  local.tee $8
  local.get $7
  i32.load offset=32
  local.tee $7
  i32.ne
  if
   local.get $8
   call $~lib/rt/pure/__retain
   drop
   local.get $7
   call $~lib/rt/pure/__release
  end
  local.get $8
  i32.store offset=32
  local.get $1
  local.tee $8
  i32.const 4928
  local.tee $7
  local.get $8
  i32.load offset=36
  local.tee $8
  i32.ne
  if
   local.get $7
   call $~lib/rt/pure/__retain
   drop
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $7
  i32.store offset=36
  local.get $1
  local.tee $7
  i32.const 0
  i32.const 2
  i32.const 36
  i32.const 5048
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  local.tee $9
  local.get $7
  i32.load offset=40
  local.tee $7
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   drop
   local.get $7
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=40
  local.get $0
  i32.load offset=36
  local.get $1
  call $~lib/dbmanager/DBManager<contract/data_in_db/User>#emplace
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/User>#find (; 193 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $1
  call $~lib/env/db_find_i64
  local.set $2
  local.get $2
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/User>#exists (; 194 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/dbmanager/DBManager<contract/data_in_db/User>#find
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   i32.const 0
  else   
   i32.const 1
  end
 )
 (func $contract/game/Game#isStarted (; 195 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=36
  call $~lib/ultrain-ts-lib/src/action/Action.sender.get:sender
  call $~lib/dbmanager/DBManager<contract/data_in_db/User>#exists
 )
 (func $~lib/ultrain-ts-lib/src/return/Return<bool> (; 196 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.ne
  i64.extend_i32_u
  call $~lib/ultrain-ts-lib/src/return/env.set_result_int
 )
 (func $~lib/ultrain-ts-lib/src/contract/Contract#returnVal<bool> (; 197 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/ultrain-ts-lib/src/return/Return<bool>
 )
 (func $contract/data_in_db/Stage#deserialize (; 198 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store offset=8
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u8>
  i32.store8 offset=16
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/Stage>#loadObjectByPrimaryIterator (; 199 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/env/db_get_i64
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $4
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  local.get $3
  call $~lib/datastream/DataStream#constructor
  local.set $6
  local.get $1
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $7
  local.get $3
  call $~lib/env/db_get_i64
  drop
  local.get $2
  local.get $6
  call $contract/data_in_db/Stage#deserialize
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/Stage>#get (; 200 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $1
  call $~lib/env/db_find_i64
  local.set $3
  local.get $3
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   local.set $4
   local.get $2
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $0
  local.get $3
  local.get $2
  call $~lib/dbmanager/DBManager<contract/data_in_db/Stage>#loadObjectByPrimaryIterator
  i32.const 1
  local.set $4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/StageProgress>#constructor (; 201 ;) (type $FUNCSIG$iijj) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 43
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i64.const 0
  i64.store offset=16
  local.get $0
  local.get $1
  i64.store
  local.get $0
  call $~lib/env/current_receiver
  i64.store offset=8
  local.get $0
  local.get $2
  i64.store offset=16
  local.get $0
 )
 (func $contract/data_in_db/StageProgress#constructor (; 202 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 17
   i32.const 42
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i32.const 0
  i32.store8 offset=16
  local.get $0
 )
 (func $~lib/datastream/DataStream#read<bool> (; 203 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  i32.add
  i32.load8_u
  local.set $1
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.add
  i32.store offset=8
  local.get $1
 )
 (func $contract/data_in_db/StageProgress#deserialize (; 204 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store offset=8
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<bool>
  i32.store8 offset=16
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/StageProgress>#loadObjectByPrimaryIterator (; 205 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/env/db_get_i64
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $4
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  local.get $3
  call $~lib/datastream/DataStream#constructor
  local.set $6
  local.get $1
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $7
  local.get $3
  call $~lib/env/db_get_i64
  drop
  local.get $2
  local.get $6
  call $contract/data_in_db/StageProgress#deserialize
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/StageProgress>#get (; 206 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $1
  call $~lib/env/db_find_i64
  local.set $3
  local.get $3
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   local.set $4
   local.get $2
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $0
  local.get $3
  local.get $2
  call $~lib/dbmanager/DBManager<contract/data_in_db/StageProgress>#loadObjectByPrimaryIterator
  i32.const 1
  local.set $4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $contract/game/Game#canPlay (; 207 ;) (type $FUNCSIG$iijj) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 0
  call $contract/data_in_db/Stage#constructor
  local.set $3
  local.get $0
  i32.load offset=32
  local.get $1
  local.get $3
  call $~lib/dbmanager/DBManager<contract/data_in_db/Stage>#get
  local.set $4
  local.get $4
  i32.eqz
  if
   i32.const 0
   local.set $5
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $3
  i64.load offset=8
  i64.const 0
  i64.ne
  if
   i32.const 0
   i32.const 5136
   call $~lib/ultrain-ts-lib/src/account/NAME
   local.get $3
   i64.load offset=8
   call $~lib/dbmanager/DBManager<contract/data_in_db/StageProgress>#constructor
   local.set $5
   i32.const 0
   call $contract/data_in_db/StageProgress#constructor
   local.set $6
   local.get $5
   call $~lib/ultrain-ts-lib/src/action/Action.sender.get:sender
   local.get $6
   call $~lib/dbmanager/DBManager<contract/data_in_db/StageProgress>#get
   local.set $7
   local.get $7
   i32.eqz
   if (result i32)
    i32.const 1
   else    
    local.get $6
    i32.load8_u offset=16
    i32.const 0
    i32.ne
    i32.eqz
   end
   if
    i32.const 0
    local.set $8
    local.get $3
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    local.get $6
    call $~lib/rt/pure/__release
    local.get $8
    return
   end
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
  end
  i32.const 0
  i32.const 5136
  call $~lib/ultrain-ts-lib/src/account/NAME
  local.get $1
  call $~lib/dbmanager/DBManager<contract/data_in_db/StageProgress>#constructor
  local.set $7
  i32.const 0
  call $contract/data_in_db/StageProgress#constructor
  local.set $6
  local.get $7
  call $~lib/ultrain-ts-lib/src/action/Action.sender.get:sender
  local.get $6
  call $~lib/dbmanager/DBManager<contract/data_in_db/StageProgress>#get
  local.set $5
  local.get $5
  i32.eqz
  if
   local.get $2
   i64.const 0
   i64.eq
   local.set $8
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $8
   return
  end
  local.get $2
  local.get $6
  i64.load offset=8
  i64.le_u
  local.set $8
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $contract/game/Game#getProgress (; 208 ;) (type $FUNCSIG$jij) (param $0 i32) (param $1 i64) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  i32.const 0
  i32.const 5136
  call $~lib/ultrain-ts-lib/src/account/NAME
  local.get $1
  call $~lib/dbmanager/DBManager<contract/data_in_db/StageProgress>#constructor
  local.set $2
  i32.const 0
  call $contract/data_in_db/StageProgress#constructor
  local.set $3
  local.get $2
  call $~lib/ultrain-ts-lib/src/action/Action.sender.get:sender
  local.get $3
  call $~lib/dbmanager/DBManager<contract/data_in_db/StageProgress>#get
  local.set $4
  local.get $4
  i32.eqz
  if
   i64.const 0
   local.set $5
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $3
  i64.load offset=8
  local.set $5
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $~lib/ultrain-ts-lib/src/return/Return<u64> (; 209 ;) (type $FUNCSIG$vj) (param $0 i64)
  local.get $0
  call $~lib/ultrain-ts-lib/src/return/env.set_result_int
 )
 (func $~lib/ultrain-ts-lib/src/contract/Contract#returnVal<u64> (; 210 ;) (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  local.get $1
  call $~lib/ultrain-ts-lib/src/return/Return<u64>
 )
 (func $contract/game/Game#_max64 (; 211 ;) (type $FUNCSIG$jijj) (param $0 i32) (param $1 i64) (param $2 i64) (result i64)
  local.get $1
  local.get $2
  i64.gt_u
  if (result i64)
   local.get $1
  else   
   local.get $2
  end
 )
 (func $contract/game/Game#_min64 (; 212 ;) (type $FUNCSIG$jijj) (param $0 i32) (param $1 i64) (param $2 i64) (result i64)
  local.get $1
  local.get $2
  i64.lt_u
  if (result i64)
   local.get $1
  else   
   local.get $2
  end
 )
 (func $contract/data_in_db/StageProgress#primaryKey (; 213 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/StageProgress>#find (; 214 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $1
  call $~lib/env/db_find_i64
  local.set $2
  local.get $2
 )
 (func $~lib/datastream/DataStream#write<bool> (; 215 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/datastream/DataStream#isMeasureMode
  i32.eqz
  if
   local.get $0
   i32.load
   local.get $0
   i32.load offset=8
   i32.add
   local.get $1
   i32.store8
  end
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.add
  i32.store offset=8
 )
 (func $contract/data_in_db/StageProgress#serialize (; 216 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  local.get $0
  i64.load
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i64.load offset=8
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i32.load8_u offset=16
  call $~lib/datastream/DataStream#write<bool>
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/datastream/DataStream.measure<contract/data_in_db/StageProgress> (; 217 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  i32.const 0
  call $~lib/datastream/DataStream#constructor
  local.set $2
  local.get $0
  local.get $2
  call $contract/data_in_db/StageProgress#serialize
  local.get $2
  i32.load offset=8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/StageProgress>#modify (; 218 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $contract/data_in_db/StageProgress#primaryKey
  call $~lib/dbmanager/DBManager<contract/data_in_db/StageProgress>#find
  local.set $2
  local.get $2
  i32.const 0
  i32.ge_s
  i32.const 4616
  call $~lib/env/ultrain_assert
  local.get $0
  i64.load offset=8
  call $~lib/env/current_receiver
  i64.eq
  i32.const 4744
  call $~lib/env/ultrain_assert
  local.get $1
  call $~lib/datastream/DataStream.measure<contract/data_in_db/StageProgress>
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $4
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  local.get $3
  call $~lib/datastream/DataStream#constructor
  local.set $6
  local.get $1
  local.get $6
  call $contract/data_in_db/StageProgress#serialize
  local.get $2
  local.get $0
  i64.load offset=8
  local.get $6
  i32.load
  local.get $6
  i32.load offset=8
  call $~lib/env/db_update_i64
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/StageProgress>#emplace (; 219 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/datastream/DataStream.measure<contract/data_in_db/StageProgress>
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/typedarray/Uint8Array#constructor
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $4
  local.get $2
  call $~lib/datastream/DataStream#constructor
  local.set $5
  local.get $1
  local.get $5
  call $contract/data_in_db/StageProgress#serialize
  local.get $1
  call $contract/data_in_db/StageProgress#primaryKey
  local.set $6
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $6
  local.get $5
  i32.load
  local.get $5
  i32.load offset=8
  call $~lib/env/db_store_i64
  drop
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $contract/game/Game#finishStageBattle (; 220 ;) (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  call $contract/data_in_db/Stage#constructor
  local.set $3
  local.get $0
  i32.load offset=32
  local.get $1
  local.get $3
  call $~lib/dbmanager/DBManager<contract/data_in_db/Stage>#get
  local.set $4
  local.get $4
  i32.eqz
  if
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  i32.const 0
  i32.const 5136
  call $~lib/ultrain-ts-lib/src/account/NAME
  local.get $1
  call $~lib/dbmanager/DBManager<contract/data_in_db/StageProgress>#constructor
  local.set $5
  i32.const 0
  call $contract/data_in_db/StageProgress#constructor
  local.set $6
  local.get $5
  call $~lib/ultrain-ts-lib/src/action/Action.sender.get:sender
  local.get $6
  call $~lib/dbmanager/DBManager<contract/data_in_db/StageProgress>#get
  local.set $7
  local.get $7
  if
   local.get $6
   local.get $0
   local.get $3
   i32.load8_u offset=16
   i32.const 1
   i32.sub
   i32.const 255
   i32.and
   i64.extend_i32_u
   local.get $0
   local.get $2
   local.get $6
   i64.load offset=8
   call $contract/game/Game#_max64
   call $contract/game/Game#_min64
   i64.store offset=8
  else   
   local.get $6
   local.get $0
   local.get $3
   i32.load8_u offset=16
   i32.const 1
   i32.sub
   i32.const 255
   i32.and
   i64.extend_i32_u
   local.get $2
   call $contract/game/Game#_min64
   i64.store offset=8
  end
  local.get $6
  local.get $6
  i64.load offset=8
  local.get $3
  i32.load8_u offset=16
  i32.const 1
  i32.sub
  i32.const 255
  i32.and
  i64.extend_i32_u
  i64.eq
  i32.store8 offset=16
  local.get $7
  if
   local.get $5
   local.get $6
   call $~lib/dbmanager/DBManager<contract/data_in_db/StageProgress>#modify
  else   
   local.get $5
   local.get $6
   call $~lib/dbmanager/DBManager<contract/data_in_db/StageProgress>#emplace
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $~lib/ultrain-ts-lib/src/asset/Asset#constructor (; 221 ;) (type $FUNCSIG$iijj) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 44
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  local.get $1
  i64.store
  local.get $0
  local.get $2
  i64.store offset=8
  local.get $0
 )
 (func $~lib/ultrain-ts-lib/src/asset/Asset#deserialize (; 222 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store offset=8
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $contract/data_in_db/Unit#deserialize (; 223 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u16>
  i32.store16 offset=8
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u16>
  i32.store16 offset=10
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u16>
  i32.store16 offset=12
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u16>
  i32.store16 offset=14
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u16>
  i32.store16 offset=16
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u16>
  i32.store16 offset=18
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u16>
  i32.store16 offset=20
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u16>
  i32.store16 offset=22
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u16>
  i32.store16 offset=24
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u16>
  i32.store16 offset=26
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u16>
  i32.store16 offset=28
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u16>
  i32.store16 offset=30
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store offset=32
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store offset=40
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store offset=48
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store offset=56
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u32>
  i32.store offset=64
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/Unit>#loadObjectByPrimaryIterator (; 224 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/env/db_get_i64
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $4
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  local.get $3
  call $~lib/datastream/DataStream#constructor
  local.set $6
  local.get $1
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $7
  local.get $3
  call $~lib/env/db_get_i64
  drop
  local.get $2
  local.get $6
  call $contract/data_in_db/Unit#deserialize
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/Unit>#get (; 225 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $1
  call $~lib/env/db_find_i64
  local.set $3
  local.get $3
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   local.set $4
   local.get $2
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $0
  local.get $3
  local.get $2
  call $~lib/dbmanager/DBManager<contract/data_in_db/Unit>#loadObjectByPrimaryIterator
  i32.const 1
  local.set $4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/array/Array<u64>#indexOf (; 226 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $3
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $2
   local.get $3
   i32.ge_s
  end
  if
   i32.const -1
   return
  end
  local.get $2
  i32.const 0
  i32.lt_s
  if
   local.get $3
   local.get $2
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $2
  end
  local.get $0
  i32.load offset=4
  local.set $6
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $6
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.get $1
    i64.eq
    if
     local.get $2
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
  i32.const -1
 )
 (func $~lib/ultrain-ts-lib/src/asset/Asset#gte (; 227 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.load offset=8
  local.get $1
  i64.load offset=8
  i64.eq
  if (result i32)
   local.get $0
   i64.load
   local.get $1
   i64.load
   i64.ge_u
  else   
   i32.const 0
  end
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/ultrain-ts-lib/src/action/Action.receiver.get:receiver (; 228 ;) (type $FUNCSIG$j) (result i64)
  call $~lib/env/current_receiver
 )
 (func $~lib/ultrain-ts-lib/src/permission-level/PermissionLevel#constructor (; 229 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 45
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  local.get $1
  i64.store
  local.get $0
  local.tee $3
  local.get $2
  local.tee $4
  local.get $3
  i32.load offset=8
  local.tee $3
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   drop
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $4
  i32.store offset=8
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/ultrain-ts-lib/src/action/TransferParams#constructor (; 230 ;) (type $FUNCSIG$iijjii) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $4
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 46
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  local.get $1
  i64.store
  local.get $0
  local.get $2
  i64.store offset=8
  local.get $0
  local.tee $5
  local.get $3
  local.tee $6
  local.get $5
  i32.load offset=16
  local.tee $5
  i32.ne
  if
   local.get $6
   call $~lib/rt/pure/__retain
   drop
   local.get $5
   call $~lib/rt/pure/__release
  end
  local.get $6
  i32.store offset=16
  local.get $0
  local.tee $6
  local.get $4
  local.tee $5
  local.get $6
  i32.load offset=20
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   drop
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store offset=20
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/ultrain-ts-lib/src/action/ActionImpl#constructor (; 231 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.eqz
  if
   i32.const 20
   i32.const 48
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  local.tee $1
  i32.const 0
  i64.const 0
  i64.const 0
  call $~lib/ultrain-ts-lib/lib/name_ex/NameEx#constructor
  local.set $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $2
  i32.store offset=8
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 2
  i32.const 47
  i32.const 5576
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  local.tee $3
  local.get $2
  i32.load offset=12
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $3
  i32.store offset=12
  local.get $0
  local.tee $3
  i32.const 0
  i32.const 0
  i32.const 10
  i32.const 5592
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  local.tee $4
  local.get $3
  i32.load offset=16
  local.tee $3
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   drop
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $4
  i32.store offset=16
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/ultrain-ts-lib/src/asset/Asset#serialize (; 232 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  local.get $0
  i64.load
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i64.load offset=8
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/ultrain-ts-lib/src/action/TransferParams#serialize (; 233 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  local.get $0
  i64.load
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i64.load offset=8
  call $~lib/datastream/DataStream#write<u64>
  local.get $0
  i32.load offset=16
  local.get $1
  call $~lib/ultrain-ts-lib/src/asset/Asset#serialize
  local.get $1
  local.get $0
  i32.load offset=20
  call $~lib/datastream/DataStream#writeString
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/datastream/DataStream.measure<~lib/ultrain-ts-lib/src/action/TransferParams> (; 234 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  i32.const 0
  call $~lib/datastream/DataStream#constructor
  local.set $2
  local.get $0
  local.get $2
  call $~lib/ultrain-ts-lib/src/action/TransferParams#serialize
  local.get $2
  i32.load offset=8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<u8>#__unchecked_set (; 235 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/array/Array<u8>#__set (; 236 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 0
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<u8>#__unchecked_set
  local.get $1
  local.get $3
  i32.ge_s
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
 )
 (func $~lib/datastream/DataStream#toArray<u8> (; 237 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 0
   call $~lib/array/Array<u8>#constructor
   return
  end
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.div_u
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/array/Array<u8>#constructor
  local.set $2
  i32.const 0
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $0
    i32.load
    local.get $3
    i32.add
    i32.load8_u
    local.set $5
    local.get $2
    local.get $4
    local.get $5
    call $~lib/array/Array<u8>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $2
 )
 (func $~lib/ultrain-ts-lib/src/action/SerializableToArray<~lib/ultrain-ts-lib/src/action/TransferParams> (; 238 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/datastream/DataStream.measure<~lib/ultrain-ts-lib/src/action/TransferParams>
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint8Array#constructor
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $3
  local.get $1
  call $~lib/datastream/DataStream#constructor
  local.set $4
  local.get $0
  local.get $4
  call $~lib/ultrain-ts-lib/src/action/TransferParams#serialize
  local.get $4
  call $~lib/datastream/DataStream#toArray<u8>
  local.set $5
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $~lib/ultrain-ts-lib/lib/name_ex/NameEx#serialize (; 239 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  local.get $0
  i64.load
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i64.load offset=8
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<~lib/ultrain-ts-lib/src/permission-level/PermissionLevel>#get:length (; 240 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/ultrain-ts-lib/src/permission-level/PermissionLevel>#__unchecked_get (; 241 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/ultrain-ts-lib/src/permission-level/PermissionLevel>#__get (; 242 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/ultrain-ts-lib/src/permission-level/PermissionLevel>#__unchecked_get
 )
 (func $~lib/ultrain-ts-lib/src/permission-level/PermissionLevel#serialize (; 243 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  local.get $0
  i64.load
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i32.load offset=8
  call $~lib/ultrain-ts-lib/src/account/NAME
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/datastream/DataStream#writeComplexVector<~lib/ultrain-ts-lib/src/permission-level/PermissionLevel> (; 244 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/array/Array<~lib/ultrain-ts-lib/src/permission-level/PermissionLevel>#get:length
  local.set $2
  local.get $0
  local.get $2
  call $~lib/datastream/DataStream#writeVarint32
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $3
    call $~lib/array/Array<~lib/ultrain-ts-lib/src/permission-level/PermissionLevel>#__get
    local.tee $4
    local.get $0
    call $~lib/ultrain-ts-lib/src/permission-level/PermissionLevel#serialize
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/ultrain-ts-lib/src/action/ActionImpl#serialize (; 245 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  local.get $0
  i64.load
  call $~lib/datastream/DataStream#write<u64>
  local.get $0
  i32.load offset=8
  local.get $1
  call $~lib/ultrain-ts-lib/lib/name_ex/NameEx#serialize
  local.get $1
  local.get $0
  i32.load offset=12
  call $~lib/datastream/DataStream#writeComplexVector<~lib/ultrain-ts-lib/src/permission-level/PermissionLevel>
  local.get $1
  local.get $0
  i32.load offset=16
  call $~lib/datastream/DataStream#writeVector<u8>
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/datastream/DataStream.measure<~lib/ultrain-ts-lib/src/action/ActionImpl> (; 246 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  i32.const 0
  call $~lib/datastream/DataStream#constructor
  local.set $2
  local.get $0
  local.get $2
  call $~lib/ultrain-ts-lib/src/action/ActionImpl#serialize
  local.get $2
  i32.load offset=8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/ultrain-ts-lib/src/action/composeActionData<~lib/ultrain-ts-lib/src/action/TransferParams> (; 247 ;) (type $FUNCSIG$iijii) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  call $~lib/ultrain-ts-lib/src/action/ActionImpl#constructor
  local.set $4
  local.get $4
  local.tee $5
  local.get $0
  local.tee $6
  local.get $5
  i32.load offset=12
  local.tee $5
  i32.ne
  if
   local.get $6
   call $~lib/rt/pure/__retain
   drop
   local.get $5
   call $~lib/rt/pure/__release
  end
  local.get $6
  i32.store offset=12
  local.get $4
  local.get $1
  i64.store
  local.get $4
  local.tee $6
  local.get $2
  local.tee $5
  local.get $6
  i32.load offset=8
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   drop
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store offset=8
  local.get $4
  local.tee $6
  local.get $3
  call $~lib/ultrain-ts-lib/src/action/SerializableToArray<~lib/ultrain-ts-lib/src/action/TransferParams>
  local.tee $5
  local.tee $7
  local.get $6
  i32.load offset=16
  local.tee $6
  i32.ne
  if
   local.get $7
   call $~lib/rt/pure/__retain
   drop
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $7
  i32.store offset=16
  local.get $4
  call $~lib/datastream/DataStream.measure<~lib/ultrain-ts-lib/src/action/ActionImpl>
  local.set $7
  i32.const 0
  local.get $7
  call $~lib/typedarray/Uint8Array#constructor
  local.set $6
  i32.const 0
  local.get $6
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $8
  local.get $7
  call $~lib/datastream/DataStream#constructor
  local.set $9
  local.get $4
  local.get $9
  call $~lib/ultrain-ts-lib/src/action/ActionImpl#serialize
  local.get $9
  local.set $10
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $10
 )
 (func $~lib/ultrain-ts-lib/src/action/Action.sendInline<~lib/ultrain-ts-lib/src/action/TransferParams> (; 248 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/ultrain-ts-lib/lib/name_ex/NEX
  local.set $4
  local.get $1
  call $~lib/ultrain-ts-lib/src/account/NAME
  local.set $5
  local.get $0
  local.get $5
  local.get $4
  local.get $3
  call $~lib/ultrain-ts-lib/src/action/composeActionData<~lib/ultrain-ts-lib/src/action/TransferParams>
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  i32.load
  local.get $7
  i32.load offset=8
  call $~lib/ultrain-ts-lib/internal/action.d/env.send_inline
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $~lib/ultrain-ts-lib/src/asset/Asset.transfer (; 249 ;) (type $FUNCSIG$vjjii) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  i64.const 0
  i32.const 5472
  call $~lib/ultrain-ts-lib/src/permission-level/PermissionLevel#constructor
  local.set $4
  local.get $4
  local.get $0
  i64.store
  local.get $4
  local.tee $5
  i32.const 5472
  local.tee $6
  local.get $5
  i32.load offset=8
  local.tee $5
  i32.ne
  if
   local.get $6
   call $~lib/rt/pure/__retain
   drop
   local.get $5
   call $~lib/rt/pure/__release
  end
  local.get $6
  i32.store offset=8
  i32.const 0
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $~lib/ultrain-ts-lib/src/action/TransferParams#constructor
  local.set $6
  i32.const 5504
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 1
  i32.const 2
  i32.const 47
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $7
  local.get $7
  i32.load offset=4
  local.set $8
  local.get $8
  local.get $4
  call $~lib/rt/pure/__retain
  i32.store
  local.get $7
  i32.const 5536
  local.get $5
  local.get $6
  call $~lib/ultrain-ts-lib/src/action/Action.sendInline<~lib/ultrain-ts-lib/src/action/TransferParams>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $contract/data_in_db/UnitInfo#constructor (; 250 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 32
   i32.const 27
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i32.const 0
  i32.store8 offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  i32.const 0
  i32.store8 offset=24
  local.get $0
  i32.const 0
  i32.store offset=28
  local.get $0
 )
 (func $contract/data_in_db/RID#constructor (; 251 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 25
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
 )
 (func $contract/data_in_db/RID#deserialize (; 252 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store offset=8
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/RID>#loadObjectByPrimaryIterator (; 253 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/env/db_get_i64
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $4
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  local.get $3
  call $~lib/datastream/DataStream#constructor
  local.set $6
  local.get $1
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $7
  local.get $3
  call $~lib/env/db_get_i64
  drop
  local.get $2
  local.get $6
  call $contract/data_in_db/RID#deserialize
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/RID>#get (; 254 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $1
  call $~lib/env/db_find_i64
  local.set $3
  local.get $3
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   local.set $4
   local.get $2
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $0
  local.get $3
  local.get $2
  call $~lib/dbmanager/DBManager<contract/data_in_db/RID>#loadObjectByPrimaryIterator
  i32.const 1
  local.set $4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $contract/data_in_db/RID#primaryKey (; 255 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/RID>#find (; 256 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $1
  call $~lib/env/db_find_i64
  local.set $2
  local.get $2
 )
 (func $contract/data_in_db/RID#serialize (; 257 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  local.get $0
  i64.load
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i64.load offset=8
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/datastream/DataStream.measure<contract/data_in_db/RID> (; 258 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  i32.const 0
  call $~lib/datastream/DataStream#constructor
  local.set $2
  local.get $0
  local.get $2
  call $contract/data_in_db/RID#serialize
  local.get $2
  i32.load offset=8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/RID>#modify (; 259 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $contract/data_in_db/RID#primaryKey
  call $~lib/dbmanager/DBManager<contract/data_in_db/RID>#find
  local.set $2
  local.get $2
  i32.const 0
  i32.ge_s
  i32.const 4616
  call $~lib/env/ultrain_assert
  local.get $0
  i64.load offset=8
  call $~lib/env/current_receiver
  i64.eq
  i32.const 4744
  call $~lib/env/ultrain_assert
  local.get $1
  call $~lib/datastream/DataStream.measure<contract/data_in_db/RID>
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $4
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  local.get $3
  call $~lib/datastream/DataStream#constructor
  local.set $6
  local.get $1
  local.get $6
  call $contract/data_in_db/RID#serialize
  local.get $2
  local.get $0
  i64.load offset=8
  local.get $6
  i32.load
  local.get $6
  i32.load offset=8
  call $~lib/env/db_update_i64
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/RID>#emplace (; 260 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/datastream/DataStream.measure<contract/data_in_db/RID>
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/typedarray/Uint8Array#constructor
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $4
  local.get $2
  call $~lib/datastream/DataStream#constructor
  local.set $5
  local.get $1
  local.get $5
  call $contract/data_in_db/RID#serialize
  local.get $1
  call $contract/data_in_db/RID#primaryKey
  local.set $6
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $6
  local.get $5
  i32.load
  local.get $5
  i32.load offset=8
  call $~lib/env/db_store_i64
  drop
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $contract/game/Game#_generateRID (; 261 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  i32.const 0
  call $contract/data_in_db/RID#constructor
  local.set $1
  local.get $0
  i32.load offset=20
  i64.const 1
  local.get $1
  call $~lib/dbmanager/DBManager<contract/data_in_db/RID>#get
  local.set $2
  local.get $2
  if
   local.get $1
   local.get $1
   i64.load offset=8
   i64.const 1
   i64.add
   i64.store offset=8
  else   
   local.get $1
   i64.const 1
   i64.store offset=8
  end
  local.get $1
  i64.const 1
  i64.store
  local.get $2
  if
   local.get $0
   i32.load offset=20
   local.get $1
   call $~lib/dbmanager/DBManager<contract/data_in_db/RID>#modify
  else   
   local.get $0
   i32.load offset=20
   local.get $1
   call $~lib/dbmanager/DBManager<contract/data_in_db/RID>#emplace
  end
  local.get $1
  i64.load offset=8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $contract/data_in_db/UnitInfo#serialize (; 262 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  local.get $0
  i64.load
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i64.load offset=8
  call $~lib/datastream/DataStream#write<u64>
  local.get $1
  local.get $0
  i32.load8_u offset=16
  call $~lib/datastream/DataStream#write<u8>
  local.get $1
  local.get $0
  i32.load offset=20
  call $~lib/datastream/DataStream#writeVector<u8>
  local.get $1
  local.get $0
  i32.load8_u offset=24
  call $~lib/datastream/DataStream#write<u8>
  local.get $1
  local.get $0
  i32.load offset=28
  call $~lib/datastream/DataStream#write<u32>
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/datastream/DataStream.measure<contract/data_in_db/UnitInfo> (; 263 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  i32.const 0
  call $~lib/datastream/DataStream#constructor
  local.set $2
  local.get $0
  local.get $2
  call $contract/data_in_db/UnitInfo#serialize
  local.get $2
  i32.load offset=8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $contract/data_in_db/UnitInfo#primaryKey (; 264 ;) (type $FUNCSIG$ji) (param $0 i32) (result i64)
  local.get $0
  i64.load
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/UnitInfo>#emplace (; 265 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/datastream/DataStream.measure<contract/data_in_db/UnitInfo>
  local.set $2
  i32.const 0
  local.get $2
  call $~lib/typedarray/Uint8Array#constructor
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $4
  local.get $2
  call $~lib/datastream/DataStream#constructor
  local.set $5
  local.get $1
  local.get $5
  call $contract/data_in_db/UnitInfo#serialize
  local.get $1
  call $contract/data_in_db/UnitInfo#primaryKey
  local.set $6
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $0
  i64.load offset=8
  local.get $6
  local.get $5
  i32.load
  local.get $5
  i32.load offset=8
  call $~lib/env/db_store_i64
  drop
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/User>#modify (; 266 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $contract/data_in_db/User#primaryKey
  call $~lib/dbmanager/DBManager<contract/data_in_db/User>#find
  local.set $2
  local.get $2
  i32.const 0
  i32.ge_s
  i32.const 4616
  call $~lib/env/ultrain_assert
  local.get $0
  i64.load offset=8
  call $~lib/env/current_receiver
  i64.eq
  i32.const 4744
  call $~lib/env/ultrain_assert
  local.get $1
  call $~lib/datastream/DataStream.measure<contract/data_in_db/User>
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $4
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  local.get $3
  call $~lib/datastream/DataStream#constructor
  local.set $6
  local.get $1
  local.get $6
  call $contract/data_in_db/User#serialize
  local.get $2
  local.get $0
  i64.load offset=8
  local.get $6
  i32.load
  local.get $6
  i32.load offset=8
  call $~lib/env/db_update_i64
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $contract/game/Game#buyFromPlatform (; 267 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  call $contract/data_in_db/Unit#constructor
  local.set $3
  local.get $0
  i32.load offset=12
  local.get $1
  local.get $3
  call $~lib/dbmanager/DBManager<contract/data_in_db/Unit>#get
  local.set $4
  local.get $4
  i32.const 5320
  call $~lib/env/ultrain_assert
  i32.const 0
  call $contract/data_in_db/User#constructor
  local.set $5
  local.get $0
  i32.load offset=36
  call $~lib/ultrain-ts-lib/src/action/Action.sender.get:sender
  local.get $5
  call $~lib/dbmanager/DBManager<contract/data_in_db/User>#get
  local.set $6
  local.get $6
  i32.const 4944
  call $~lib/env/ultrain_assert
  local.get $5
  i32.load offset=24
  local.get $1
  i32.const 0
  call $~lib/array/Array<u64>#indexOf
  i32.const 0
  i32.lt_s
  i32.const 5360
  call $~lib/env/ultrain_assert
  i32.const 0
  local.get $3
  i64.load offset=48
  i32.const 4
  i32.const 2960
  call $~lib/ultrain-ts-lib/src/asset/StringToSymbol
  call $~lib/ultrain-ts-lib/src/asset/Asset#constructor
  local.set $7
  local.get $2
  local.get $7
  call $~lib/ultrain-ts-lib/src/asset/Asset#gte
  i32.const 5416
  call $~lib/env/ultrain_assert
  call $~lib/ultrain-ts-lib/src/action/Action.sender.get:sender
  call $~lib/ultrain-ts-lib/src/action/Action.receiver.get:receiver
  local.get $2
  i32.const 5272
  call $~lib/ultrain-ts-lib/src/asset/Asset.transfer
  i32.const 0
  call $contract/data_in_db/UnitInfo#constructor
  local.set $8
  local.get $8
  local.get $0
  call $contract/game/Game#_generateRID
  i64.store
  local.get $8
  i32.const 1
  i32.store8 offset=16
  local.get $8
  local.tee $9
  i32.const 0
  i32.const 0
  i32.const 10
  i32.const 5608
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $10
  local.tee $11
  local.get $9
  i32.load offset=20
  local.tee $9
  i32.ne
  if
   local.get $11
   call $~lib/rt/pure/__retain
   drop
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $11
  i32.store offset=20
  local.get $8
  global.get $contract/game/MAX_ENERGY
  i32.store8 offset=24
  local.get $8
  i32.const 0
  i32.store offset=28
  local.get $0
  i32.load offset=24
  local.get $8
  call $~lib/dbmanager/DBManager<contract/data_in_db/UnitInfo>#emplace
  local.get $5
  i32.load offset=24
  local.get $1
  call $~lib/array/Array<u64>#push
  drop
  local.get $5
  i32.load offset=28
  local.get $8
  i64.load
  call $~lib/array/Array<u64>#push
  drop
  local.get $0
  i32.load offset=36
  local.get $5
  call $~lib/dbmanager/DBManager<contract/data_in_db/User>#modify
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/string/String#charAt (; 268 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 4928
   call $~lib/rt/pure/__retain
   return
  end
  i32.const 2
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $2
  local.get $2
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
  i32.store16
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/string/String#concat (; 269 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 5696
   local.tee $2
   local.get $1
   local.tee $3
   i32.ne
   if
    local.get $2
    call $~lib/rt/pure/__retain
    drop
    local.get $3
    call $~lib/rt/pure/__release
   end
   local.get $2
   local.set $1
  end
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $4
  local.get $1
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $5
  local.get $4
  local.get $5
  i32.add
  local.set $6
  local.get $6
  i32.const 0
  i32.eq
  if
   i32.const 4928
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $6
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  local.get $0
  local.get $4
  call $~lib/memory/memory.copy
  local.get $7
  local.get $4
  i32.add
  local.get $1
  local.get $5
  call $~lib/memory/memory.copy
  local.get $7
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/string/String.__concat (; 270 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 5696
  local.get $0
  i32.const 0
  i32.ne
  select
  local.get $1
  call $~lib/string/String#concat
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $contract/helper/u16ToString (; 271 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $contract/helper/ALPHABET
  local.get $0
  i32.const 65535
  i32.and
  i32.const 62
  i32.div_u
  call $~lib/string/String#charAt
  local.tee $1
  global.get $contract/helper/ALPHABET
  local.get $0
  i32.const 65535
  i32.and
  i32.const 62
  i32.rem_u
  call $~lib/string/String#charAt
  local.tee $2
  call $~lib/string/String.__concat
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $contract/game/Game#getMyUnitIdArray (; 272 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 0
  call $contract/data_in_db/User#constructor
  local.set $1
  local.get $0
  i32.load offset=36
  call $~lib/ultrain-ts-lib/src/action/Action.sender.get:sender
  local.get $1
  call $~lib/dbmanager/DBManager<contract/data_in_db/User>#get
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 5672
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  i32.const 4928
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.load offset=24
    call $~lib/array/Array<u64>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $1
    i32.load offset=24
    local.get $4
    call $~lib/array/Array<u64>#__get
    i32.wrap_i64
    call $contract/helper/u16ToString
    local.tee $5
    call $~lib/string/String.__concat
    local.tee $6
    local.tee $7
    local.get $3
    local.tee $8
    i32.ne
    if
     local.get $7
     call $~lib/rt/pure/__retain
     drop
     local.get $8
     call $~lib/rt/pure/__release
    end
    local.get $7
    local.set $3
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    local.get $5
    call $~lib/rt/pure/__release
    local.get $6
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $6
  local.get $1
  call $~lib/rt/pure/__release
  local.get $6
 )
 (func $~lib/ultrain-ts-lib/src/utils/string2cstr (; 273 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 1
  call $~lib/string/String.UTF8.encode
  local.set $1
  local.get $1
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/ultrain-ts-lib/src/return/Return<~lib/string/String> (; 274 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/ultrain-ts-lib/src/utils/string2cstr
  local.tee $1
  call $~lib/ultrain-ts-lib/src/return/env.set_result_str
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/ultrain-ts-lib/src/contract/Contract#returnVal<~lib/string/String> (; 275 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/ultrain-ts-lib/src/return/Return<~lib/string/String>
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $contract/data_in_db/UnitInfo#deserialize (; 276 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store offset=8
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u8>
  i32.store8 offset=16
  local.get $0
  local.tee $2
  local.get $1
  call $~lib/datastream/DataStream#readVector<u8>
  local.set $3
  local.get $2
  i32.load offset=20
  call $~lib/rt/pure/__release
  local.get $3
  i32.store offset=20
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u8>
  i32.store8 offset=24
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u32>
  i32.store offset=28
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/UnitInfo>#loadObjectByPrimaryIterator (; 277 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/env/db_get_i64
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $4
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  local.get $3
  call $~lib/datastream/DataStream#constructor
  local.set $6
  local.get $1
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $7
  local.get $3
  call $~lib/env/db_get_i64
  drop
  local.get $2
  local.get $6
  call $contract/data_in_db/UnitInfo#deserialize
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/UnitInfo>#get (; 278 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $1
  call $~lib/env/db_find_i64
  local.set $3
  local.get $3
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   local.set $4
   local.get $2
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $0
  local.get $3
  local.get $2
  call $~lib/dbmanager/DBManager<contract/data_in_db/UnitInfo>#loadObjectByPrimaryIterator
  i32.const 1
  local.set $4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/ultrain-ts-lib/src/time/now (; 279 ;) (type $FUNCSIG$i) (result i32)
  call $~lib/ultrain-ts-lib/internal/system.d/env.current_time
  i64.const 1000000
  i64.div_u
  i32.wrap_i64
 )
 (func $contract/helper/u8ToString (; 280 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  global.get $contract/helper/ALPHABET
  local.get $0
  i32.const 255
  i32.and
  i32.const 62
  i32.rem_u
  call $~lib/string/String#charAt
 )
 (func $contract/helper/unitHp (; 281 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load16_u offset=8
  local.get $0
  i32.load16_u offset=10
  local.get $1
  i32.const 255
  i32.and
  i32.mul
  i32.add
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $contract/helper/unitAttack (; 282 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load16_u offset=12
  local.get $0
  i32.load16_u offset=14
  local.get $1
  i32.const 255
  i32.and
  i32.mul
  i32.add
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $contract/helper/unitIntelligence (; 283 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load16_u offset=16
  local.get $0
  i32.load16_u offset=18
  local.get $1
  i32.const 255
  i32.and
  i32.mul
  i32.add
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $contract/helper/unitDefense (; 284 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load16_u offset=20
  local.get $0
  i32.load16_u offset=22
  local.get $1
  i32.const 255
  i32.and
  i32.mul
  i32.add
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $contract/helper/unitAgility (; 285 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load16_u offset=24
  local.get $0
  i32.load16_u offset=26
  local.get $1
  i32.const 255
  i32.and
  i32.mul
  i32.add
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $contract/helper/unitLuck (; 286 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load16_u offset=28
  local.get $0
  i32.load16_u offset=30
  local.get $1
  i32.const 255
  i32.and
  i32.mul
  i32.add
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $contract/helper/unitRecoverCost (; 287 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.load offset=32
  i32.wrap_i64
  local.set $2
  block $break|0
   i32.const 1
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.const 255
    i32.and
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.const 11
    i32.mul
    i32.const 65535
    i32.and
    i32.const 10
    i32.div_u
    local.set $2
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $2
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $contract/helper/unitUpgradeCost (; 288 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.load offset=40
  i32.wrap_i64
  local.set $2
  block $break|0
   i32.const 1
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.const 255
    i32.and
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.const 11
    i32.mul
    i32.const 65535
    i32.and
    i32.const 10
    i32.div_u
    local.set $2
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $2
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $contract/helper/unitToStr (; 289 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.load8_u offset=24
  local.get $2
  local.get $1
  i32.load offset=28
  i32.sub
  i32.const 3600
  i32.div_u
  i32.add
  local.set $3
  local.get $3
  i32.const 255
  i32.and
  i32.const 5
  i32.gt_u
  if
   global.get $contract/helper/MAX_ENERGY
   local.set $4
   i32.const 0
   local.set $5
  else   
   local.get $3
   local.set $4
   local.get $2
   local.get $1
   i32.load offset=28
   i32.sub
   i32.const 3600
   i32.rem_u
   local.set $5
  end
  local.get $1
  i64.load
  i32.wrap_i64
  call $contract/helper/u16ToString
  local.tee $6
  local.get $1
  i64.load offset=8
  i32.wrap_i64
  call $contract/helper/u16ToString
  local.tee $7
  call $~lib/string/String.__concat
  local.tee $8
  local.get $1
  i32.load8_u offset=16
  call $contract/helper/u8ToString
  local.tee $9
  call $~lib/string/String.__concat
  local.tee $10
  local.get $4
  call $contract/helper/u8ToString
  local.tee $11
  call $~lib/string/String.__concat
  local.tee $12
  local.get $5
  call $contract/helper/u16ToString
  local.tee $13
  call $~lib/string/String.__concat
  local.tee $14
  local.get $0
  local.get $1
  i32.load8_u offset=16
  call $contract/helper/unitHp
  call $contract/helper/u16ToString
  local.tee $15
  call $~lib/string/String.__concat
  local.tee $16
  local.get $0
  local.get $1
  i32.load8_u offset=16
  call $contract/helper/unitAttack
  call $contract/helper/u16ToString
  local.tee $17
  call $~lib/string/String.__concat
  local.tee $18
  local.get $0
  local.get $1
  i32.load8_u offset=16
  call $contract/helper/unitIntelligence
  call $contract/helper/u16ToString
  local.tee $19
  call $~lib/string/String.__concat
  local.tee $20
  local.get $0
  local.get $1
  i32.load8_u offset=16
  call $contract/helper/unitDefense
  call $contract/helper/u16ToString
  local.tee $21
  call $~lib/string/String.__concat
  local.tee $22
  local.get $0
  local.get $1
  i32.load8_u offset=16
  call $contract/helper/unitAgility
  call $contract/helper/u16ToString
  local.tee $23
  call $~lib/string/String.__concat
  local.tee $24
  local.get $0
  local.get $1
  i32.load8_u offset=16
  call $contract/helper/unitLuck
  call $contract/helper/u16ToString
  local.tee $25
  call $~lib/string/String.__concat
  local.tee $26
  local.get $0
  local.get $1
  i32.load8_u offset=16
  call $contract/helper/unitRecoverCost
  call $contract/helper/u16ToString
  local.tee $27
  call $~lib/string/String.__concat
  local.tee $28
  local.get $0
  local.get $1
  i32.load8_u offset=16
  call $contract/helper/unitUpgradeCost
  call $contract/helper/u16ToString
  local.tee $29
  call $~lib/string/String.__concat
  local.tee $30
  local.get $1
  i32.load offset=20
  i32.const 0
  call $~lib/array/Array<u8>#__get
  local.tee $31
  if (result i32)
   local.get $31
  else   
   i32.const 0
  end
  call $contract/helper/u16ToString
  local.tee $31
  call $~lib/string/String.__concat
  local.tee $32
  local.get $1
  i32.load offset=20
  i32.const 1
  call $~lib/array/Array<u8>#__get
  local.tee $33
  if (result i32)
   local.get $33
  else   
   i32.const 0
  end
  call $contract/helper/u16ToString
  local.tee $33
  call $~lib/string/String.__concat
  local.tee $34
  local.get $1
  i32.load offset=20
  i32.const 2
  call $~lib/array/Array<u8>#__get
  local.tee $35
  if (result i32)
   local.get $35
  else   
   i32.const 0
  end
  call $contract/helper/u16ToString
  local.tee $35
  call $~lib/string/String.__concat
  local.tee $36
  call $~lib/rt/pure/__retain
  local.set $37
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $21
  call $~lib/rt/pure/__release
  local.get $22
  call $~lib/rt/pure/__release
  local.get $23
  call $~lib/rt/pure/__release
  local.get $24
  call $~lib/rt/pure/__release
  local.get $25
  call $~lib/rt/pure/__release
  local.get $26
  call $~lib/rt/pure/__release
  local.get $27
  call $~lib/rt/pure/__release
  local.get $28
  call $~lib/rt/pure/__release
  local.get $29
  call $~lib/rt/pure/__release
  local.get $30
  call $~lib/rt/pure/__release
  local.get $31
  call $~lib/rt/pure/__release
  local.get $32
  call $~lib/rt/pure/__release
  local.get $33
  call $~lib/rt/pure/__release
  local.get $34
  call $~lib/rt/pure/__release
  local.get $35
  call $~lib/rt/pure/__release
  local.get $36
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $37
 )
 (func $contract/game/Game#getMyUnitById (; 290 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  i32.const 0
  call $contract/data_in_db/Unit#constructor
  local.set $2
  local.get $0
  i32.load offset=12
  local.get $1
  local.get $2
  call $~lib/dbmanager/DBManager<contract/data_in_db/Unit>#get
  local.set $3
  local.get $3
  i32.const 5320
  call $~lib/env/ultrain_assert
  i32.const 0
  call $contract/data_in_db/User#constructor
  local.set $4
  local.get $0
  i32.load offset=36
  call $~lib/ultrain-ts-lib/src/action/Action.sender.get:sender
  local.get $4
  call $~lib/dbmanager/DBManager<contract/data_in_db/User>#get
  local.set $5
  local.get $5
  i32.const 4944
  call $~lib/env/ultrain_assert
  local.get $4
  i32.load offset=24
  local.get $1
  i32.const 0
  call $~lib/array/Array<u64>#indexOf
  local.set $6
  local.get $6
  i32.const 0
  i32.ge_s
  i32.const 5768
  call $~lib/env/ultrain_assert
  local.get $4
  i32.load offset=28
  local.get $6
  call $~lib/array/Array<u64>#__get
  local.set $7
  i32.const 0
  call $contract/data_in_db/UnitInfo#constructor
  local.set $8
  local.get $0
  i32.load offset=24
  local.get $7
  local.get $8
  call $~lib/dbmanager/DBManager<contract/data_in_db/UnitInfo>#get
  local.set $9
  local.get $9
  i32.const 5808
  call $~lib/env/ultrain_assert
  local.get $2
  local.get $8
  call $~lib/ultrain-ts-lib/src/time/now
  call $contract/helper/unitToStr
  local.set $10
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $10
 )
 (func $contract/game/Game#getMyItemRIdArray (; 291 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 0
  call $contract/data_in_db/User#constructor
  local.set $1
  local.get $0
  i32.load offset=36
  call $~lib/ultrain-ts-lib/src/action/Action.sender.get:sender
  local.get $1
  call $~lib/dbmanager/DBManager<contract/data_in_db/User>#get
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 5672
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  i32.const 4928
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.load offset=32
    call $~lib/array/Array<u64>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $1
    i32.load offset=32
    local.get $4
    call $~lib/array/Array<u64>#__get
    i32.wrap_i64
    call $contract/helper/u16ToString
    local.tee $5
    call $~lib/string/String.__concat
    local.tee $6
    local.tee $7
    local.get $3
    local.tee $8
    i32.ne
    if
     local.get $7
     call $~lib/rt/pure/__retain
     drop
     local.get $8
     call $~lib/rt/pure/__release
    end
    local.get $7
    local.set $3
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    local.get $5
    call $~lib/rt/pure/__release
    local.get $6
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $6
  local.get $1
  call $~lib/rt/pure/__release
  local.get $6
 )
 (func $contract/data_in_db/ItemInfo#constructor (; 292 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 20
   i32.const 29
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i32.const 0
  i32.store8 offset=16
  local.get $0
  i32.const 0
  i32.store8 offset=17
  local.get $0
  i32.const 0
  i32.store16 offset=18
  local.get $0
 )
 (func $contract/data_in_db/ItemInfo#deserialize (; 293 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store offset=8
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u8>
  i32.store8 offset=16
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u8>
  i32.store8 offset=17
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u16>
  i32.store16 offset=18
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/ItemInfo>#loadObjectByPrimaryIterator (; 294 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/env/db_get_i64
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $4
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  local.get $3
  call $~lib/datastream/DataStream#constructor
  local.set $6
  local.get $1
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $7
  local.get $3
  call $~lib/env/db_get_i64
  drop
  local.get $2
  local.get $6
  call $contract/data_in_db/ItemInfo#deserialize
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/ItemInfo>#get (; 295 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $1
  call $~lib/env/db_find_i64
  local.set $3
  local.get $3
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   local.set $4
   local.get $2
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $0
  local.get $3
  local.get $2
  call $~lib/dbmanager/DBManager<contract/data_in_db/ItemInfo>#loadObjectByPrimaryIterator
  i32.const 1
  local.set $4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $contract/data_in_db/Item#deserialize (; 296 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u16>
  i32.store16 offset=8
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u16>
  i32.store16 offset=10
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u16>
  i32.store16 offset=12
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u16>
  i32.store16 offset=14
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u16>
  i32.store16 offset=16
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u16>
  i32.store16 offset=18
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store offset=24
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/Item>#loadObjectByPrimaryIterator (; 297 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/env/db_get_i64
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $4
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  local.get $3
  call $~lib/datastream/DataStream#constructor
  local.set $6
  local.get $1
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $7
  local.get $3
  call $~lib/env/db_get_i64
  drop
  local.get $2
  local.get $6
  call $contract/data_in_db/Item#deserialize
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/Item>#get (; 298 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $1
  call $~lib/env/db_find_i64
  local.set $3
  local.get $3
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   local.set $4
   local.get $2
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $0
  local.get $3
  local.get $2
  call $~lib/dbmanager/DBManager<contract/data_in_db/Item>#loadObjectByPrimaryIterator
  i32.const 1
  local.set $4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $contract/helper/itemHp (; 299 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load16_u offset=8
  i32.const 1
  local.get $1
  i32.load8_u offset=16
  i32.const 2
  i32.div_u
  i32.add
  i32.mul
  i32.const 1
  local.get $1
  i32.load8_u offset=17
  i32.add
  i32.mul
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $contract/helper/itemAttack (; 300 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load16_u offset=10
  i32.const 1
  local.get $1
  i32.load8_u offset=16
  i32.const 2
  i32.div_u
  i32.add
  i32.mul
  i32.const 1
  local.get $1
  i32.load8_u offset=17
  i32.add
  i32.mul
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $contract/helper/itemIntelligence (; 301 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load16_u offset=12
  i32.const 1
  local.get $1
  i32.load8_u offset=16
  i32.const 2
  i32.div_u
  i32.add
  i32.mul
  i32.const 1
  local.get $1
  i32.load8_u offset=17
  i32.add
  i32.mul
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $contract/helper/itemDefense (; 302 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load16_u offset=14
  i32.const 1
  local.get $1
  i32.load8_u offset=16
  i32.const 2
  i32.div_u
  i32.add
  i32.mul
  i32.const 1
  local.get $1
  i32.load8_u offset=17
  i32.add
  i32.mul
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $contract/helper/itemAgility (; 303 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load16_u offset=16
  i32.const 1
  local.get $1
  i32.load8_u offset=16
  i32.const 2
  i32.div_u
  i32.add
  i32.mul
  i32.const 1
  local.get $1
  i32.load8_u offset=17
  i32.add
  i32.mul
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $contract/helper/itemLuck (; 304 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load16_u offset=18
  i32.const 1
  local.get $1
  i32.load8_u offset=16
  i32.const 2
  i32.div_u
  i32.add
  i32.mul
  i32.const 1
  local.get $1
  i32.load8_u offset=17
  i32.add
  i32.mul
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $contract/helper/itemWorth (; 305 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.load offset=24
  local.get $1
  i32.load8_u offset=16
  i64.extend_i32_u
  i64.mul
  i32.wrap_i64
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $contract/helper/itemToStr (; 306 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i64.load
  i32.wrap_i64
  call $contract/helper/u16ToString
  local.tee $2
  local.get $1
  i64.load offset=8
  i32.wrap_i64
  call $contract/helper/u16ToString
  local.tee $3
  call $~lib/string/String.__concat
  local.tee $4
  local.get $1
  i32.load8_u offset=16
  call $contract/helper/u8ToString
  local.tee $5
  call $~lib/string/String.__concat
  local.tee $6
  local.get $1
  i32.load8_u offset=17
  call $contract/helper/u8ToString
  local.tee $7
  call $~lib/string/String.__concat
  local.tee $8
  local.get $0
  local.get $1
  call $contract/helper/itemHp
  call $contract/helper/u16ToString
  local.tee $9
  call $~lib/string/String.__concat
  local.tee $10
  local.get $0
  local.get $1
  call $contract/helper/itemAttack
  call $contract/helper/u16ToString
  local.tee $11
  call $~lib/string/String.__concat
  local.tee $12
  local.get $0
  local.get $1
  call $contract/helper/itemIntelligence
  call $contract/helper/u16ToString
  local.tee $13
  call $~lib/string/String.__concat
  local.tee $14
  local.get $0
  local.get $1
  call $contract/helper/itemDefense
  call $contract/helper/u16ToString
  local.tee $15
  call $~lib/string/String.__concat
  local.tee $16
  local.get $0
  local.get $1
  call $contract/helper/itemAgility
  call $contract/helper/u16ToString
  local.tee $17
  call $~lib/string/String.__concat
  local.tee $18
  local.get $0
  local.get $1
  call $contract/helper/itemLuck
  call $contract/helper/u16ToString
  local.tee $19
  call $~lib/string/String.__concat
  local.tee $20
  local.get $0
  local.get $1
  call $contract/helper/itemWorth
  call $contract/helper/u16ToString
  local.tee $21
  call $~lib/string/String.__concat
  local.tee $22
  call $~lib/rt/pure/__retain
  local.set $23
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $21
  call $~lib/rt/pure/__release
  local.get $22
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $23
 )
 (func $contract/game/Game#getMyItemByRId (; 307 ;) (type $FUNCSIG$iij) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 0
  call $contract/data_in_db/ItemInfo#constructor
  local.set $2
  local.get $0
  i32.load offset=28
  local.get $1
  local.get $2
  call $~lib/dbmanager/DBManager<contract/data_in_db/ItemInfo>#get
  local.set $3
  local.get $3
  i32.const 5960
  call $~lib/env/ultrain_assert
  i32.const 0
  call $contract/data_in_db/Item#constructor
  local.set $4
  local.get $0
  i32.load offset=16
  local.get $2
  i64.load offset=8
  local.get $4
  call $~lib/dbmanager/DBManager<contract/data_in_db/Item>#get
  local.set $5
  local.get $5
  i32.const 6008
  call $~lib/env/ultrain_assert
  local.get $4
  local.get $2
  call $contract/helper/itemToStr
  local.set $6
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
 )
 (func $contract/data_in_memory/BattleStatus#constructor (; 308 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 49
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
 )
 (func $contract/data_in_memory/UnitStatus#constructor (; 309 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 28
   i32.const 50
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i32.const 0
  i32.store16 offset=8
  local.get $0
  i32.const 0
  i32.store16 offset=10
  local.get $0
  i32.const 0
  i32.store16 offset=12
  local.get $0
  i32.const 0
  i32.store16 offset=14
  local.get $0
  i32.const 0
  i32.store16 offset=16
  local.get $0
  i32.const 0
  i32.store16 offset=18
  local.get $0
  i32.const 0
  i32.store16 offset=20
  local.get $0
  i32.const 0
  i32.store16 offset=22
  local.get $0
  i32.const 0
  i32.store16 offset=24
  local.get $0
  i32.const 0
  i32.store16 offset=26
  local.get $0
 )
 (func $~lib/array/Array<contract/data_in_db/Item>#push (; 310 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/array/Array<contract/data_in_db/ItemInfo>#push (; 311 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/array/Array<contract/data_in_db/Item>#get:length (; 312 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<contract/data_in_db/ItemInfo>#get:length (; 313 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<contract/data_in_db/Item>#__unchecked_get (; 314 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<contract/data_in_db/Item>#__get (; 315 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<contract/data_in_db/Item>#__unchecked_get
 )
 (func $~lib/array/Array<contract/data_in_db/ItemInfo>#__unchecked_get (; 316 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<contract/data_in_db/ItemInfo>#__get (; 317 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<contract/data_in_db/ItemInfo>#__unchecked_get
 )
 (func $contract/data_in_memory/UnitStatus#fromPlayer (; 318 ;) (type $FUNCSIG$viiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $4
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  call $~lib/array/Array<contract/data_in_db/Item>#get:length
  global.get $contract/data_in_memory/ITEM_LIMIT
  i32.eq
  i32.const 6248
  call $~lib/env/ultrain_assert
  local.get $4
  call $~lib/array/Array<contract/data_in_db/ItemInfo>#get:length
  global.get $contract/data_in_memory/ITEM_LIMIT
  i32.eq
  i32.const 6248
  call $~lib/env/ultrain_assert
  local.get $0
  local.get $1
  i64.load
  i64.store
  local.get $0
  local.get $1
  local.get $2
  i32.load8_u offset=16
  call $contract/helper/unitHp
  i32.store16 offset=8
  local.get $0
  local.get $1
  local.get $2
  i32.load8_u offset=16
  call $contract/helper/unitAgility
  i32.store16 offset=10
  local.get $0
  local.get $1
  local.get $2
  i32.load8_u offset=16
  call $contract/helper/unitAttack
  i32.store16 offset=14
  local.get $0
  local.get $1
  local.get $2
  i32.load8_u offset=16
  call $contract/helper/unitIntelligence
  i32.store16 offset=16
  local.get $0
  local.get $1
  local.get $2
  i32.load8_u offset=16
  call $contract/helper/unitDefense
  i32.store16 offset=18
  local.get $0
  i32.const 0
  i32.store16 offset=22
  local.get $0
  local.get $1
  local.get $2
  i32.load8_u offset=16
  call $contract/helper/unitLuck
  i32.store16 offset=24
  local.get $0
  i32.const 0
  i32.store16 offset=26
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    local.get $3
    call $~lib/array/Array<contract/data_in_db/Item>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $0
    i32.load16_u offset=8
    local.get $3
    local.get $5
    call $~lib/array/Array<contract/data_in_db/Item>#__get
    local.tee $6
    local.get $4
    local.get $5
    call $~lib/array/Array<contract/data_in_db/ItemInfo>#__get
    local.tee $7
    call $contract/helper/itemHp
    i32.add
    i32.store16 offset=8
    local.get $0
    local.get $0
    i32.load16_u offset=10
    local.get $3
    local.get $5
    call $~lib/array/Array<contract/data_in_db/Item>#__get
    local.tee $8
    local.get $4
    local.get $5
    call $~lib/array/Array<contract/data_in_db/ItemInfo>#__get
    local.tee $9
    call $contract/helper/itemAgility
    i32.add
    i32.store16 offset=10
    local.get $0
    local.get $0
    i32.load16_u offset=14
    local.get $3
    local.get $5
    call $~lib/array/Array<contract/data_in_db/Item>#__get
    local.tee $10
    local.get $4
    local.get $5
    call $~lib/array/Array<contract/data_in_db/ItemInfo>#__get
    local.tee $11
    call $contract/helper/itemAttack
    i32.add
    i32.store16 offset=14
    local.get $0
    local.get $0
    i32.load16_u offset=16
    local.get $3
    local.get $5
    call $~lib/array/Array<contract/data_in_db/Item>#__get
    local.tee $12
    local.get $4
    local.get $5
    call $~lib/array/Array<contract/data_in_db/ItemInfo>#__get
    local.tee $13
    call $contract/helper/itemIntelligence
    i32.add
    i32.store16 offset=16
    local.get $0
    local.get $0
    i32.load16_u offset=18
    local.get $3
    local.get $5
    call $~lib/array/Array<contract/data_in_db/Item>#__get
    local.tee $14
    local.get $4
    local.get $5
    call $~lib/array/Array<contract/data_in_db/ItemInfo>#__get
    local.tee $15
    call $contract/helper/itemDefense
    i32.add
    i32.store16 offset=18
    local.get $0
    local.get $0
    i32.load16_u offset=24
    local.get $3
    local.get $5
    call $~lib/array/Array<contract/data_in_db/Item>#__get
    local.tee $16
    local.get $4
    local.get $5
    call $~lib/array/Array<contract/data_in_db/ItemInfo>#__get
    local.tee $17
    call $contract/helper/itemLuck
    i32.add
    i32.store16 offset=24
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    local.get $6
    call $~lib/rt/pure/__release
    local.get $7
    call $~lib/rt/pure/__release
    local.get $8
    call $~lib/rt/pure/__release
    local.get $9
    call $~lib/rt/pure/__release
    local.get $10
    call $~lib/rt/pure/__release
    local.get $11
    call $~lib/rt/pure/__release
    local.get $12
    call $~lib/rt/pure/__release
    local.get $13
    call $~lib/rt/pure/__release
    local.get $14
    call $~lib/rt/pure/__release
    local.get $15
    call $~lib/rt/pure/__release
    local.get $16
    call $~lib/rt/pure/__release
    local.get $17
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  local.get $0
  local.get $0
  i32.load16_u offset=8
  i32.store16 offset=12
  local.get $0
  local.get $0
  i32.load16_u offset=10
  i32.store16 offset=20
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<contract/data_in_memory/UnitStatus>#push (; 319 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $contract/data_in_db/StageBattle#deserialize (; 320 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store
  local.get $0
  local.tee $2
  local.get $1
  call $~lib/datastream/DataStream#readVector<u64>
  local.set $3
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $3
  i32.store offset=8
  local.get $0
  local.tee $3
  local.get $1
  call $~lib/datastream/DataStream#readVector<u8>
  local.set $2
  local.get $3
  i32.load offset=12
  call $~lib/rt/pure/__release
  local.get $2
  i32.store offset=12
  local.get $0
  local.tee $2
  local.get $1
  call $~lib/datastream/DataStream#readVector<u64>
  local.set $3
  local.get $2
  i32.load offset=16
  call $~lib/rt/pure/__release
  local.get $3
  i32.store offset=16
  local.get $0
  local.tee $3
  local.get $1
  call $~lib/datastream/DataStream#readVector<u16>
  local.set $2
  local.get $3
  i32.load offset=20
  call $~lib/rt/pure/__release
  local.get $2
  i32.store offset=20
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store offset=24
  local.get $0
  local.get $1
  call $~lib/datastream/DataStream#read<u64>
  i64.store offset=32
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/StageBattle>#loadObjectByPrimaryIterator (; 321 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/env/db_get_i64
  local.set $3
  i32.const 0
  local.get $3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $4
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $5
  local.get $3
  call $~lib/datastream/DataStream#constructor
  local.set $6
  local.get $1
  local.get $4
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $7
  local.get $3
  call $~lib/env/db_get_i64
  drop
  local.get $2
  local.get $6
  call $contract/data_in_db/StageBattle#deserialize
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/dbmanager/DBManager<contract/data_in_db/StageBattle>#get (; 322 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.load offset=8
  local.get $0
  i64.load offset=16
  local.get $0
  i64.load
  local.get $1
  call $~lib/env/db_find_i64
  local.set $3
  local.get $3
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   local.set $4
   local.get $2
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $0
  local.get $3
  local.get $2
  call $~lib/dbmanager/DBManager<contract/data_in_db/StageBattle>#loadObjectByPrimaryIterator
  i32.const 1
  local.set $4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $contract/data_in_memory/UnitStatus#fromNPC (; 323 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i64.load
  i64.store
  local.get $0
  local.get $1
  local.get $2
  call $contract/helper/unitHp
  i32.store16 offset=8
  local.get $0
  local.get $1
  local.get $2
  call $contract/helper/unitAgility
  i32.store16 offset=10
  local.get $0
  local.get $1
  local.get $2
  call $contract/helper/unitAttack
  i32.store16 offset=14
  local.get $0
  local.get $1
  local.get $2
  call $contract/helper/unitIntelligence
  i32.store16 offset=16
  local.get $0
  local.get $1
  local.get $2
  call $contract/helper/unitDefense
  i32.store16 offset=18
  local.get $0
  i32.const 0
  i32.store16 offset=22
  local.get $0
  local.get $1
  local.get $2
  call $contract/helper/unitLuck
  i32.store16 offset=24
  local.get $0
  i32.const 0
  i32.store16 offset=26
  local.get $0
  local.get $0
  i32.load16_u offset=8
  i32.store16 offset=12
  local.get $0
  local.get $0
  i32.load16_u offset=10
  i32.store16 offset=20
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<contract/data_in_memory/UnitStatus>#__unchecked_get (; 324 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get (; 325 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__unchecked_get
 )
 (func $contract/battle/InnerResult#constructor (; 326 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 2
   i32.const 55
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store8
  local.get $0
  i32.const 0
  i32.store8 offset=1
  local.get $0
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.store8 offset=1
  local.get $0
 )
 (func $contract/battle/_checkResult (; 327 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    i32.const 3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $0
    i32.load
    local.get $2
    i32.const 65535
    i32.and
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
    local.tee $3
    i32.load16_u offset=8
    i32.const 0
    i32.gt_u
    if
     local.get $1
     i32.const 1
     i32.add
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 1
   i32.const 0
   call $contract/battle/InnerResult#constructor
   local.set $3
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  i32.const 0
  local.set $1
  block $break|1
   i32.const 0
   local.set $2
   loop $loop|1
    local.get $2
    i32.const 3
    i32.lt_u
    i32.eqz
    br_if $break|1
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 65535
    i32.and
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
    local.tee $3
    i32.load16_u offset=8
    i32.const 0
    i32.gt_u
    if
     local.get $1
     i32.const 1
     i32.add
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $3
    call $~lib/rt/pure/__release
    br $loop|1
   end
   unreachable
  end
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 1
   i32.const 1
   call $contract/battle/InnerResult#constructor
   local.set $3
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  i32.const 0
  i32.const 0
  i32.const 0
  call $contract/battle/InnerResult#constructor
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $contract/battle/BattleResult#constructor (; 328 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 54
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store8
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store8
  local.get $0
  local.tee $3
  local.get $2
  local.tee $4
  local.get $3
  i32.load offset=4
  local.tee $3
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   drop
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $4
  i32.store offset=4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/math/NativeMath.log (; 329 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 i32)
  local.get $0
  i64.reinterpret_f64
  local.set $1
  local.get $1
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  i32.const 1048576
  i32.lt_u
  if (result i32)
   i32.const 1
  else   
   local.get $2
   i32.const 31
   i32.shr_u
  end
  if
   local.get $1
   i64.const 1
   i64.shl
   i64.const 0
   i64.eq
   if
    f64.const -1
    local.get $0
    local.get $0
    f64.mul
    f64.div
    return
   end
   local.get $2
   i32.const 31
   i32.shr_u
   if
    local.get $0
    local.get $0
    f64.sub
    f64.const 0
    f64.div
    return
   end
   local.get $3
   i32.const 54
   i32.sub
   local.set $3
   local.get $0
   f64.const 18014398509481984
   f64.mul
   local.set $0
   local.get $0
   i64.reinterpret_f64
   local.set $1
   local.get $1
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   local.set $2
  else   
   local.get $2
   i32.const 2146435072
   i32.ge_u
   if
    local.get $0
    return
   else    
    local.get $2
    i32.const 1072693248
    i32.eq
    if (result i32)
     local.get $1
     i64.const 32
     i64.shl
     i64.const 0
     i64.eq
    else     
     i32.const 0
    end
    if
     f64.const 0
     return
    end
   end
  end
  local.get $2
  i32.const 1072693248
  i32.const 1072079006
  i32.sub
  i32.add
  local.set $2
  local.get $3
  local.get $2
  i32.const 20
  i32.shr_s
  i32.const 1023
  i32.sub
  i32.add
  local.set $3
  local.get $2
  i32.const 1048575
  i32.and
  i32.const 1072079006
  i32.add
  local.set $2
  local.get $2
  i64.extend_i32_u
  i64.const 32
  i64.shl
  local.get $1
  i64.const 4294967295
  i64.and
  i64.or
  local.set $1
  local.get $1
  f64.reinterpret_i64
  local.set $0
  local.get $0
  f64.const 1
  f64.sub
  local.set $4
  f64.const 0.5
  local.get $4
  f64.mul
  local.get $4
  f64.mul
  local.set $5
  local.get $4
  f64.const 2
  local.get $4
  f64.add
  f64.div
  local.set $6
  local.get $6
  local.get $6
  f64.mul
  local.set $7
  local.get $7
  local.get $7
  f64.mul
  local.set $8
  local.get $8
  f64.const 0.3999999999940942
  local.get $8
  f64.const 0.22222198432149784
  local.get $8
  f64.const 0.15313837699209373
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $9
  local.get $7
  f64.const 0.6666666666666735
  local.get $8
  f64.const 0.2857142874366239
  local.get $8
  f64.const 0.1818357216161805
  local.get $8
  f64.const 0.14798198605116586
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $10
  local.get $10
  local.get $9
  f64.add
  local.set $11
  local.get $3
  local.set $12
  local.get $6
  local.get $5
  local.get $11
  f64.add
  f64.mul
  local.get $12
  f64.convert_i32_s
  f64.const 1.9082149292705877e-10
  f64.mul
  f64.add
  local.get $5
  f64.sub
  local.get $4
  f64.add
  local.get $12
  f64.convert_i32_s
  f64.const 0.6931471803691238
  f64.mul
  f64.add
 )
 (func $~lib/number/isFinite<f64> (; 330 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.sub
  f64.const 0
  f64.eq
 )
 (func $~lib/number/isNaN<f64> (; 331 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.ne
 )
 (func $~lib/array/Array<i16>#__unchecked_get (; 332 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
 )
 (func $~lib/util/number/decimalCount32 (; 333 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if
   local.get $0
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    i32.const 2
    local.get $0
    i32.const 10
    i32.lt_u
    select
    return
   else    
    i32.const 4
    i32.const 5
    local.get $0
    i32.const 10000
    i32.lt_u
    select
    local.set $1
    i32.const 3
    local.get $1
    local.get $0
    i32.const 1000
    i32.lt_u
    select
    return
   end
   unreachable
  else   
   local.get $0
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    i32.const 7
    local.get $0
    i32.const 1000000
    i32.lt_u
    select
    return
   else    
    i32.const 9
    i32.const 10
    local.get $0
    i32.const 1000000000
    i32.lt_u
    select
    local.set $1
    i32.const 8
    local.get $1
    local.get $0
    i32.const 100000000
    i32.lt_u
    select
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/genDigits (; 334 ;) (type $FUNCSIG$iijijiji) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i64)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i64)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  i32.const 0
  local.get $4
  i32.sub
  local.set $7
  i64.const 1
  local.get $7
  i64.extend_i32_s
  i64.shl
  local.set $8
  local.get $8
  i64.const 1
  i64.sub
  local.set $9
  local.get $3
  local.get $1
  i64.sub
  local.set $10
  local.get $4
  local.set $11
  local.get $3
  local.get $7
  i64.extend_i32_s
  i64.shr_u
  i32.wrap_i64
  local.set $12
  local.get $3
  local.get $9
  i64.and
  local.set $13
  local.get $12
  call $~lib/util/number/decimalCount32
  local.set $14
  local.get $6
  local.set $15
  i32.const 7528
  i32.load offset=4
  local.set $16
  block $break|0
   loop $continue|0
    local.get $14
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    block $break|1
     block $case10|1
      block $case9|1
       block $case8|1
        block $case7|1
         block $case6|1
          block $case5|1
           block $case4|1
            block $case3|1
             block $case2|1
              block $case1|1
               block $case0|1
                local.get $14
                local.set $18
                local.get $18
                i32.const 10
                i32.eq
                br_if $case0|1
                local.get $18
                i32.const 9
                i32.eq
                br_if $case1|1
                local.get $18
                i32.const 8
                i32.eq
                br_if $case2|1
                local.get $18
                i32.const 7
                i32.eq
                br_if $case3|1
                local.get $18
                i32.const 6
                i32.eq
                br_if $case4|1
                local.get $18
                i32.const 5
                i32.eq
                br_if $case5|1
                local.get $18
                i32.const 4
                i32.eq
                br_if $case6|1
                local.get $18
                i32.const 3
                i32.eq
                br_if $case7|1
                local.get $18
                i32.const 2
                i32.eq
                br_if $case8|1
                local.get $18
                i32.const 1
                i32.eq
                br_if $case9|1
                br $case10|1
               end
               local.get $12
               i32.const 1000000000
               i32.div_u
               local.set $17
               local.get $12
               i32.const 1000000000
               i32.rem_u
               local.set $12
               br $break|1
              end
              local.get $12
              i32.const 100000000
              i32.div_u
              local.set $17
              local.get $12
              i32.const 100000000
              i32.rem_u
              local.set $12
              br $break|1
             end
             local.get $12
             i32.const 10000000
             i32.div_u
             local.set $17
             local.get $12
             i32.const 10000000
             i32.rem_u
             local.set $12
             br $break|1
            end
            local.get $12
            i32.const 1000000
            i32.div_u
            local.set $17
            local.get $12
            i32.const 1000000
            i32.rem_u
            local.set $12
            br $break|1
           end
           local.get $12
           i32.const 100000
           i32.div_u
           local.set $17
           local.get $12
           i32.const 100000
           i32.rem_u
           local.set $12
           br $break|1
          end
          local.get $12
          i32.const 10000
          i32.div_u
          local.set $17
          local.get $12
          i32.const 10000
          i32.rem_u
          local.set $12
          br $break|1
         end
         local.get $12
         i32.const 1000
         i32.div_u
         local.set $17
         local.get $12
         i32.const 1000
         i32.rem_u
         local.set $12
         br $break|1
        end
        local.get $12
        i32.const 100
        i32.div_u
        local.set $17
        local.get $12
        i32.const 100
        i32.rem_u
        local.set $12
        br $break|1
       end
       local.get $12
       i32.const 10
       i32.div_u
       local.set $17
       local.get $12
       i32.const 10
       i32.rem_u
       local.set $12
       br $break|1
      end
      local.get $12
      local.set $17
      i32.const 0
      local.set $12
      br $break|1
     end
     i32.const 0
     local.set $17
     br $break|1
    end
    local.get $17
    local.get $15
    i32.or
    if
     local.get $0
     local.get $15
     local.tee $18
     i32.const 1
     i32.add
     local.set $15
     local.get $18
     i32.const 1
     i32.shl
     i32.add
     i32.const 48
     local.get $17
     i32.const 65535
     i32.and
     i32.add
     i32.store16
    end
    local.get $14
    i32.const 1
    i32.sub
    local.set $14
    local.get $12
    i64.extend_i32_u
    local.get $7
    i64.extend_i32_s
    i64.shl
    local.get $13
    i64.add
    local.set $19
    local.get $19
    local.get $5
    i64.le_u
    if
     global.get $~lib/util/number/_K
     local.get $14
     i32.add
     global.set $~lib/util/number/_K
     local.get $0
     local.set $24
     local.get $15
     local.set $18
     local.get $5
     local.set $23
     local.get $19
     local.set $22
     local.get $16
     local.get $14
     i32.const 2
     i32.shl
     i32.add
     i64.load32_u
     local.get $7
     i64.extend_i32_s
     i64.shl
     local.set $21
     local.get $10
     local.set $20
     local.get $24
     local.get $18
     i32.const 1
     i32.sub
     i32.const 1
     i32.shl
     i32.add
     local.set $25
     local.get $25
     i32.load16_u
     local.set $26
     block $break|2
      loop $continue|2
       local.get $22
       local.get $20
       i64.lt_u
       if (result i32)
        local.get $23
        local.get $22
        i64.sub
        local.get $21
        i64.ge_u
       else        
        i32.const 0
       end
       if (result i32)
        local.get $22
        local.get $21
        i64.add
        local.get $20
        i64.lt_u
        if (result i32)
         i32.const 1
        else         
         local.get $20
         local.get $22
         i64.sub
         local.get $22
         local.get $21
         i64.add
         local.get $20
         i64.sub
         i64.gt_u
        end
       else        
        i32.const 0
       end
       i32.eqz
       br_if $break|2
       local.get $26
       i32.const 1
       i32.sub
       local.set $26
       local.get $22
       local.get $21
       i64.add
       local.set $22
       br $continue|2
      end
      unreachable
     end
     local.get $25
     local.get $26
     i32.store16
     local.get $15
     return
    end
    br $continue|0
   end
   unreachable
  end
  loop $continue|3
   local.get $13
   i64.const 10
   i64.mul
   local.set $13
   local.get $5
   i64.const 10
   i64.mul
   local.set $5
   local.get $13
   local.get $7
   i64.extend_i32_s
   i64.shr_u
   local.set $19
   local.get $19
   local.get $15
   i64.extend_i32_s
   i64.or
   i64.const 0
   i64.ne
   if
    local.get $0
    local.get $15
    local.tee $17
    i32.const 1
    i32.add
    local.set $15
    local.get $17
    i32.const 1
    i32.shl
    i32.add
    i32.const 48
    local.get $19
    i32.wrap_i64
    i32.const 65535
    i32.and
    i32.add
    i32.store16
   end
   local.get $13
   local.get $9
   i64.and
   local.set $13
   local.get $14
   i32.const 1
   i32.sub
   local.set $14
   local.get $13
   local.get $5
   i64.lt_u
   if
    global.get $~lib/util/number/_K
    local.get $14
    i32.add
    global.set $~lib/util/number/_K
    local.get $10
    local.get $16
    i32.const 0
    local.get $14
    i32.sub
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    i64.mul
    local.set $10
    local.get $0
    local.set $24
    local.get $15
    local.set $18
    local.get $5
    local.set $23
    local.get $13
    local.set $22
    local.get $8
    local.set $21
    local.get $10
    local.set $20
    local.get $24
    local.get $18
    i32.const 1
    i32.sub
    i32.const 1
    i32.shl
    i32.add
    local.set $17
    local.get $17
    i32.load16_u
    local.set $26
    block $break|4
     loop $continue|4
      local.get $22
      local.get $20
      i64.lt_u
      if (result i32)
       local.get $23
       local.get $22
       i64.sub
       local.get $21
       i64.ge_u
      else       
       i32.const 0
      end
      if (result i32)
       local.get $22
       local.get $21
       i64.add
       local.get $20
       i64.lt_u
       if (result i32)
        i32.const 1
       else        
        local.get $20
        local.get $22
        i64.sub
        local.get $22
        local.get $21
        i64.add
        local.get $20
        i64.sub
        i64.gt_u
       end
      else       
       i32.const 0
      end
      i32.eqz
      br_if $break|4
      local.get $26
      i32.const 1
      i32.sub
      local.set $26
      local.get $22
      local.get $21
      i64.add
      local.set $22
      br $continue|4
     end
     unreachable
    end
    local.get $17
    local.get $26
    i32.store16
    local.get $15
    return
   end
   br $continue|3
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_lut (; 335 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  i32.const 7976
  i32.load offset=4
  local.set $3
  block $break|0
   loop $continue|0
    local.get $1
    i32.const 10000
    i32.ge_u
    i32.eqz
    br_if $break|0
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $4
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $5
    local.get $4
    local.set $1
    local.get $5
    i32.const 100
    i32.div_u
    local.set $6
    local.get $5
    i32.const 100
    i32.rem_u
    local.set $7
    local.get $3
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $8
    local.get $3
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $9
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $8
    local.get $9
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $continue|0
   end
   unreachable
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $1
   i32.const 100
   i32.div_u
   local.set $7
   local.get $1
   i32.const 100
   i32.rem_u
   local.set $6
   local.get $7
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   local.get $3
   local.get $6
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $5
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $5
   i32.store
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   local.get $3
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $5
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $5
   i32.store
  else   
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   i32.const 48
   local.get $1
   i32.add
   local.set $5
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $5
   i32.store16
  end
 )
 (func $~lib/util/number/prettify (; 336 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $2
  i32.eqz
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.shl
   i32.add
   i32.const 46
   i32.const 48
   i32.const 16
   i32.shl
   i32.or
   i32.store
   local.get $1
   i32.const 2
   i32.add
   return
  end
  local.get $1
  local.get $2
  i32.add
  local.set $3
  local.get $1
  local.get $3
  i32.le_s
  if (result i32)
   local.get $3
   i32.const 21
   i32.le_s
  else   
   i32.const 0
  end
  if
   block $break|0
    local.get $1
    local.set $4
    loop $loop|0
     local.get $4
     local.get $3
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $0
     local.get $4
     i32.const 1
     i32.shl
     i32.add
     i32.const 48
     i32.store16
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $loop|0
    end
    unreachable
   end
   local.get $0
   local.get $3
   i32.const 1
   i32.shl
   i32.add
   i32.const 46
   i32.const 48
   i32.const 16
   i32.shl
   i32.or
   i32.store
   local.get $3
   i32.const 2
   i32.add
   return
  else   
   local.get $3
   i32.const 0
   i32.gt_s
   if (result i32)
    local.get $3
    i32.const 21
    i32.le_s
   else    
    i32.const 0
   end
   if
    local.get $0
    local.get $3
    i32.const 1
    i32.shl
    i32.add
    local.set $4
    local.get $4
    i32.const 2
    i32.add
    local.get $4
    i32.const 0
    local.get $2
    i32.sub
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $0
    local.get $3
    i32.const 1
    i32.shl
    i32.add
    i32.const 46
    i32.store16
    local.get $1
    i32.const 1
    i32.add
    return
   else    
    i32.const -6
    local.get $3
    i32.lt_s
    if (result i32)
     local.get $3
     i32.const 0
     i32.le_s
    else     
     i32.const 0
    end
    if
     i32.const 2
     local.get $3
     i32.sub
     local.set $4
     local.get $0
     local.get $4
     i32.const 1
     i32.shl
     i32.add
     local.get $0
     local.get $1
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $0
     i32.const 48
     i32.const 46
     i32.const 16
     i32.shl
     i32.or
     i32.store
     block $break|1
      i32.const 2
      local.set $5
      loop $loop|1
       local.get $5
       local.get $4
       i32.lt_s
       i32.eqz
       br_if $break|1
       local.get $0
       local.get $5
       i32.const 1
       i32.shl
       i32.add
       i32.const 48
       i32.store16
       local.get $5
       i32.const 1
       i32.add
       local.set $5
       br $loop|1
      end
      unreachable
     end
     local.get $1
     local.get $4
     i32.add
     return
    else     
     local.get $1
     i32.const 1
     i32.eq
     if
      local.get $0
      i32.const 101
      i32.store16 offset=2
      local.get $0
      i32.const 4
      i32.add
      local.set $4
      local.get $3
      i32.const 1
      i32.sub
      local.set $5
      local.get $5
      i32.const 0
      i32.lt_s
      local.set $6
      local.get $6
      if
       i32.const 0
       local.get $5
       i32.sub
       local.set $5
      end
      local.get $5
      call $~lib/util/number/decimalCount32
      i32.const 1
      i32.add
      local.set $7
      local.get $4
      local.set $10
      local.get $5
      local.set $9
      local.get $7
      local.set $8
      local.get $10
      local.get $9
      local.get $8
      call $~lib/util/number/utoa32_lut
      local.get $4
      i32.const 45
      i32.const 43
      local.get $6
      select
      i32.store16
      local.get $7
      local.set $1
      local.get $1
      i32.const 2
      i32.add
      return
     else      
      local.get $1
      i32.const 1
      i32.shl
      local.set $7
      local.get $0
      i32.const 4
      i32.add
      local.get $0
      i32.const 2
      i32.add
      local.get $7
      i32.const 2
      i32.sub
      call $~lib/memory/memory.copy
      local.get $0
      i32.const 46
      i32.store16 offset=2
      local.get $0
      local.get $7
      i32.add
      i32.const 101
      i32.store16 offset=2
      local.get $1
      local.get $0
      local.get $7
      i32.add
      i32.const 4
      i32.add
      local.set $9
      local.get $3
      i32.const 1
      i32.sub
      local.set $8
      local.get $8
      i32.const 0
      i32.lt_s
      local.set $6
      local.get $6
      if
       i32.const 0
       local.get $8
       i32.sub
       local.set $8
      end
      local.get $8
      call $~lib/util/number/decimalCount32
      i32.const 1
      i32.add
      local.set $4
      local.get $9
      local.set $11
      local.get $8
      local.set $5
      local.get $4
      local.set $10
      local.get $11
      local.get $5
      local.get $10
      call $~lib/util/number/utoa32_lut
      local.get $9
      i32.const 45
      i32.const 43
      local.get $6
      select
      i32.store16
      local.get $4
      i32.add
      local.set $1
      local.get $1
      i32.const 2
      i32.add
      return
     end
     unreachable
    end
    unreachable
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/dtoa_core (; 337 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f64)
  (local $17 i64)
  (local $18 i64)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i64)
  (local $24 i64)
  (local $25 i64)
  (local $26 i32)
  (local $27 i64)
  (local $28 i32)
  local.get $1
  f64.const 0
  f64.lt
  local.set $2
  local.get $2
  if
   local.get $1
   f64.neg
   local.set $1
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $1
  local.set $5
  local.get $0
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i64.reinterpret_f64
  local.set $6
  local.get $6
  i64.const 9218868437227405312
  i64.and
  i64.const 52
  i64.shr_u
  i32.wrap_i64
  local.set $7
  local.get $6
  i64.const 4503599627370495
  i64.and
  local.set $8
  local.get $7
  i32.const 0
  i32.ne
  i64.extend_i32_u
  i64.const 52
  i64.shl
  local.get $8
  i64.add
  local.set $9
  local.get $7
  i32.const 1
  local.get $7
  i32.const 0
  i32.ne
  select
  i32.const 1023
  i32.const 52
  i32.add
  i32.sub
  local.set $7
  local.get $9
  local.set $11
  local.get $7
  local.set $10
  local.get $11
  i64.const 1
  i64.shl
  i64.const 1
  i64.add
  local.set $12
  local.get $10
  i32.const 1
  i32.sub
  local.set $13
  local.get $12
  i64.clz
  i32.wrap_i64
  local.set $14
  local.get $12
  local.get $14
  i64.extend_i32_s
  i64.shl
  local.set $12
  local.get $13
  local.get $14
  i32.sub
  local.set $13
  i32.const 1
  local.get $11
  i64.const 4503599627370496
  i64.eq
  i32.add
  local.set $15
  local.get $12
  global.set $~lib/util/number/_frc_plus
  local.get $11
  local.get $15
  i64.extend_i32_s
  i64.shl
  i64.const 1
  i64.sub
  local.get $10
  local.get $15
  i32.sub
  local.get $13
  i32.sub
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_minus
  local.get $13
  global.set $~lib/util/number/_exp
  global.get $~lib/util/number/_exp
  local.set $10
  i32.const -61
  local.get $10
  i32.sub
  f64.convert_i32_s
  f64.const 0.30102999566398114
  f64.mul
  f64.const 347
  f64.add
  local.set $16
  local.get $16
  i32.trunc_f64_s
  local.set $15
  local.get $15
  local.get $15
  f64.convert_i32_s
  local.get $16
  f64.ne
  i32.add
  local.set $15
  local.get $15
  i32.const 3
  i32.shr_s
  i32.const 1
  i32.add
  local.set $14
  i32.const 348
  local.get $14
  i32.const 3
  i32.shl
  i32.sub
  global.set $~lib/util/number/_K
  i32.const 7216
  local.get $14
  call $~lib/array/Array<u64>#__unchecked_get
  global.set $~lib/util/number/_frc_pow
  i32.const 7440
  local.get $14
  call $~lib/array/Array<i16>#__unchecked_get
  global.set $~lib/util/number/_exp_pow
  local.get $9
  i64.clz
  i32.wrap_i64
  local.set $14
  local.get $9
  local.get $14
  i64.extend_i32_s
  i64.shl
  local.set $9
  local.get $7
  local.get $14
  i32.sub
  local.set $7
  global.get $~lib/util/number/_frc_pow
  local.set $12
  global.get $~lib/util/number/_exp_pow
  local.set $15
  local.get $9
  local.set $17
  local.get $12
  local.set $11
  local.get $17
  i64.const 4294967295
  i64.and
  local.set $18
  local.get $11
  i64.const 4294967295
  i64.and
  local.set $19
  local.get $17
  i64.const 32
  i64.shr_u
  local.set $20
  local.get $11
  i64.const 32
  i64.shr_u
  local.set $21
  local.get $18
  local.get $19
  i64.mul
  local.set $22
  local.get $20
  local.get $19
  i64.mul
  local.get $22
  i64.const 32
  i64.shr_u
  i64.add
  local.set $23
  local.get $18
  local.get $21
  i64.mul
  local.get $23
  i64.const 4294967295
  i64.and
  i64.add
  local.set $24
  local.get $24
  i64.const 2147483647
  i64.add
  local.set $24
  local.get $23
  i64.const 32
  i64.shr_u
  local.set $23
  local.get $24
  i64.const 32
  i64.shr_u
  local.set $24
  local.get $20
  local.get $21
  i64.mul
  local.get $23
  i64.add
  local.get $24
  i64.add
  local.set $24
  local.get $7
  local.set $10
  local.get $15
  local.set $13
  local.get $10
  local.get $13
  i32.add
  i32.const 64
  i32.add
  local.set $10
  global.get $~lib/util/number/_frc_plus
  local.set $17
  local.get $12
  local.set $11
  local.get $17
  i64.const 4294967295
  i64.and
  local.set $23
  local.get $11
  i64.const 4294967295
  i64.and
  local.set $22
  local.get $17
  i64.const 32
  i64.shr_u
  local.set $21
  local.get $11
  i64.const 32
  i64.shr_u
  local.set $20
  local.get $23
  local.get $22
  i64.mul
  local.set $19
  local.get $21
  local.get $22
  i64.mul
  local.get $19
  i64.const 32
  i64.shr_u
  i64.add
  local.set $18
  local.get $23
  local.get $20
  i64.mul
  local.get $18
  i64.const 4294967295
  i64.and
  i64.add
  local.set $25
  local.get $25
  i64.const 2147483647
  i64.add
  local.set $25
  local.get $18
  i64.const 32
  i64.shr_u
  local.set $18
  local.get $25
  i64.const 32
  i64.shr_u
  local.set $25
  local.get $21
  local.get $20
  i64.mul
  local.get $18
  i64.add
  local.get $25
  i64.add
  i64.const 1
  i64.sub
  local.set $25
  global.get $~lib/util/number/_exp
  local.set $26
  local.get $15
  local.set $13
  local.get $26
  local.get $13
  i32.add
  i32.const 64
  i32.add
  local.set $26
  global.get $~lib/util/number/_frc_minus
  local.set $17
  local.get $12
  local.set $11
  local.get $17
  i64.const 4294967295
  i64.and
  local.set $18
  local.get $11
  i64.const 4294967295
  i64.and
  local.set $19
  local.get $17
  i64.const 32
  i64.shr_u
  local.set $20
  local.get $11
  i64.const 32
  i64.shr_u
  local.set $21
  local.get $18
  local.get $19
  i64.mul
  local.set $22
  local.get $20
  local.get $19
  i64.mul
  local.get $22
  i64.const 32
  i64.shr_u
  i64.add
  local.set $23
  local.get $18
  local.get $21
  i64.mul
  local.get $23
  i64.const 4294967295
  i64.and
  i64.add
  local.set $27
  local.get $27
  i64.const 2147483647
  i64.add
  local.set $27
  local.get $23
  i64.const 32
  i64.shr_u
  local.set $23
  local.get $27
  i64.const 32
  i64.shr_u
  local.set $27
  local.get $20
  local.get $21
  i64.mul
  local.get $23
  i64.add
  local.get $27
  i64.add
  i64.const 1
  i64.add
  local.set $27
  local.get $25
  local.get $27
  i64.sub
  local.set $23
  local.get $4
  local.get $24
  local.get $10
  local.get $25
  local.get $26
  local.get $23
  local.get $3
  call $~lib/util/number/genDigits
  local.set $28
  local.get $0
  local.get $2
  i32.const 1
  i32.shl
  i32.add
  local.get $28
  local.get $2
  i32.sub
  global.get $~lib/util/number/_K
  call $~lib/util/number/prettify
  local.set $28
  local.get $28
  local.get $2
  i32.add
 )
 (func $~lib/string/String#substring (; 338 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $1
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  local.set $6
  local.get $2
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  local.set $7
  local.get $6
  local.tee $4
  local.get $7
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.set $8
  local.get $6
  local.tee $4
  local.get $7
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.set $9
  local.get $9
  local.get $8
  i32.sub
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 4928
   call $~lib/rt/pure/__retain
   return
  end
  local.get $8
  i32.eqz
  if (result i32)
   local.get $9
   local.get $0
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   i32.eq
  else   
   i32.const 0
  end
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $3
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $10
  local.get $10
  local.get $0
  local.get $8
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  local.get $10
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/dtoa (; 339 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  f64.const 0
  f64.eq
  if
   i32.const 6384
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  call $~lib/number/isFinite<f64>
  i32.eqz
  if
   local.get $0
   call $~lib/number/isNaN<f64>
   if
    i32.const 6408
    call $~lib/rt/pure/__retain
    return
   end
   i32.const 6432
   i32.const 6472
   local.get $0
   f64.const 0
   f64.lt
   select
   call $~lib/rt/pure/__retain
   return
  end
  i32.const 28
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $1
  local.get $0
  call $~lib/util/number/dtoa_core
  local.set $2
  local.get $2
  i32.const 28
  i32.eq
  if
   local.get $1
   call $~lib/rt/pure/__retain
   return
  end
  local.get $1
  i32.const 0
  local.get $2
  call $~lib/string/String#substring
  local.set $3
  local.get $1
  call $~lib/rt/tlsf/__free
  local.get $3
 )
 (func $~lib/number/F64#toString (; 340 ;) (type $FUNCSIG$idi) (param $0 f64) (param $1 i32) (result i32)
  local.get $0
  call $~lib/util/number/dtoa
 )
 (func $~lib/util/string/isSpace (; 341 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 255
  i32.le_s
  if
   block $break|0
    block $case6|0
     block $case5|0
      block $case4|0
       block $case3|0
        block $case2|0
         block $case1|0
          block $case0|0
           local.get $0
           local.set $1
           local.get $1
           i32.const 9
           i32.eq
           br_if $case0|0
           local.get $1
           i32.const 10
           i32.eq
           br_if $case1|0
           local.get $1
           i32.const 11
           i32.eq
           br_if $case2|0
           local.get $1
           i32.const 12
           i32.eq
           br_if $case3|0
           local.get $1
           i32.const 13
           i32.eq
           br_if $case4|0
           local.get $1
           i32.const 32
           i32.eq
           br_if $case5|0
           local.get $1
           i32.const 160
           i32.eq
           br_if $case6|0
           br $break|0
          end
         end
        end
       end
      end
     end
    end
    i32.const 1
    return
   end
   i32.const 0
   return
  end
  local.get $0
  i32.const 8192
  i32.ge_s
  if (result i32)
   local.get $0
   i32.const 8202
   i32.le_s
  else   
   i32.const 0
  end
  if
   i32.const 1
   return
  end
  block $break|1
   block $case6|1
    block $case5|1
     block $case4|1
      block $case3|1
       block $case2|1
        block $case1|1
         block $case0|1
          local.get $0
          local.set $1
          local.get $1
          i32.const 5760
          i32.eq
          br_if $case0|1
          local.get $1
          i32.const 8232
          i32.eq
          br_if $case1|1
          local.get $1
          i32.const 8233
          i32.eq
          br_if $case2|1
          local.get $1
          i32.const 8239
          i32.eq
          br_if $case3|1
          local.get $1
          i32.const 8287
          i32.eq
          br_if $case4|1
          local.get $1
          i32.const 12288
          i32.eq
          br_if $case5|1
          local.get $1
          i32.const 65279
          i32.eq
          br_if $case6|1
          br $break|1
         end
        end
       end
      end
     end
    end
   end
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/util/string/strtol<f64> (; 342 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  (local $8 f64)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/string/String#get:length
  local.set $2
  local.get $2
  i32.eqz
  if
   f64.const nan:0x8000000000000
   local.set $3
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  local.set $4
  local.get $4
  i32.load16_u
  local.set $5
  f64.const 1
  local.set $6
  block $break|0
   loop $continue|0
    local.get $5
    call $~lib/util/string/isSpace
    i32.eqz
    br_if $break|0
    local.get $4
    i32.const 2
    i32.add
    local.tee $4
    i32.load16_u
    local.set $5
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $continue|0
   end
   unreachable
  end
  local.get $5
  i32.const 45
  i32.eq
  if
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.eqz
   if
    f64.const nan:0x8000000000000
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
   local.get $4
   i32.const 2
   i32.add
   local.tee $4
   i32.load16_u
   local.set $5
   f64.const -1
   local.set $6
  else   
   local.get $5
   i32.const 43
   i32.eq
   if
    local.get $2
    i32.const 1
    i32.sub
    local.tee $2
    i32.eqz
    if
     f64.const nan:0x8000000000000
     local.set $3
     local.get $0
     call $~lib/rt/pure/__release
     local.get $3
     return
    end
    local.get $4
    i32.const 2
    i32.add
    local.tee $4
    i32.load16_u
    local.set $5
   end
  end
  local.get $1
  i32.eqz
  if
   local.get $5
   i32.const 48
   i32.eq
   if (result i32)
    local.get $2
    i32.const 2
    i32.gt_s
   else    
    i32.const 0
   end
   if
    block $break|1
     block $case6|1
      block $case5|1
       block $case4|1
        block $case3|1
         block $case2|1
          block $case1|1
           block $case0|1
            local.get $4
            i32.const 2
            i32.add
            i32.load16_u
            local.set $7
            local.get $7
            i32.const 66
            i32.eq
            br_if $case0|1
            local.get $7
            i32.const 98
            i32.eq
            br_if $case1|1
            local.get $7
            i32.const 79
            i32.eq
            br_if $case2|1
            local.get $7
            i32.const 111
            i32.eq
            br_if $case3|1
            local.get $7
            i32.const 88
            i32.eq
            br_if $case4|1
            local.get $7
            i32.const 120
            i32.eq
            br_if $case5|1
            br $case6|1
           end
          end
          local.get $4
          i32.const 4
          i32.add
          local.set $4
          local.get $2
          i32.const 2
          i32.sub
          local.set $2
          i32.const 2
          local.set $1
          br $break|1
         end
        end
        local.get $4
        i32.const 4
        i32.add
        local.set $4
        local.get $2
        i32.const 2
        i32.sub
        local.set $2
        i32.const 8
        local.set $1
        br $break|1
       end
      end
      local.get $4
      i32.const 4
      i32.add
      local.set $4
      local.get $2
      i32.const 2
      i32.sub
      local.set $2
      i32.const 16
      local.set $1
      br $break|1
     end
     i32.const 10
     local.set $1
    end
   else    
    i32.const 10
    local.set $1
   end
  else   
   local.get $1
   i32.const 2
   i32.lt_s
   if (result i32)
    i32.const 1
   else    
    local.get $1
    i32.const 36
    i32.gt_s
   end
   if
    f64.const nan:0x8000000000000
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
  end
  f64.const 0
  local.set $8
  block $break|2
   loop $continue|2
    local.get $2
    local.tee $7
    i32.const 1
    i32.sub
    local.set $2
    local.get $7
    i32.eqz
    br_if $break|2
    local.get $4
    i32.load16_u
    local.set $5
    local.get $5
    i32.const 48
    i32.ge_s
    if (result i32)
     local.get $5
     i32.const 57
     i32.le_s
    else     
     i32.const 0
    end
    if
     local.get $5
     i32.const 48
     i32.sub
     local.set $5
    else     
     local.get $5
     i32.const 65
     i32.ge_s
     if (result i32)
      local.get $5
      i32.const 90
      i32.le_s
     else      
      i32.const 0
     end
     if
      local.get $5
      i32.const 65
      i32.const 10
      i32.sub
      i32.sub
      local.set $5
     else      
      local.get $5
      i32.const 97
      i32.ge_s
      if (result i32)
       local.get $5
       i32.const 122
       i32.le_s
      else       
       i32.const 0
      end
      if
       local.get $5
       i32.const 97
       i32.const 10
       i32.sub
       i32.sub
       local.set $5
      else       
       br $break|2
      end
     end
    end
    local.get $5
    local.get $1
    i32.ge_s
    if
     br $break|2
    end
    local.get $8
    local.get $1
    f64.convert_i32_s
    f64.mul
    local.get $5
    f64.convert_i32_s
    f64.add
    local.set $8
    local.get $4
    i32.const 2
    i32.add
    local.set $4
    br $continue|2
   end
   unreachable
  end
  local.get $6
  local.get $8
  f64.mul
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/string/parseInt (; 343 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  (local $2 f64)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/util/string/strtol<f64>
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $contract/helper/random (; 344 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  call $~lib/ultrain-ts-lib/src/time/now
  local.get $0
  i32.const 65535
  i32.and
  i32.add
  local.set $1
  local.get $1
  f64.convert_i32_u
  call $~lib/math/NativeMath.log
  i32.const 0
  call $~lib/number/F64#toString
  local.set $2
  local.get $2
  call $~lib/string/String#get:length
  local.set $3
  local.get $2
  local.get $3
  i32.const 5
  i32.sub
  call $~lib/string/String#charAt
  local.tee $4
  local.get $2
  local.get $3
  i32.const 4
  i32.sub
  call $~lib/string/String#charAt
  local.tee $5
  call $~lib/string/String.__concat
  local.tee $6
  local.get $2
  local.get $3
  i32.const 3
  i32.sub
  call $~lib/string/String#charAt
  local.tee $7
  call $~lib/string/String.__concat
  local.tee $8
  local.get $2
  local.get $3
  i32.const 2
  i32.sub
  call $~lib/string/String#charAt
  local.tee $9
  call $~lib/string/String.__concat
  local.tee $10
  local.get $2
  local.get $3
  i32.const 1
  i32.sub
  call $~lib/string/String#charAt
  local.tee $11
  call $~lib/string/String.__concat
  local.tee $12
  i32.const 0
  call $~lib/string/parseInt
  i32.trunc_f64_u
  local.set $13
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
 )
 (func $contract/battle/_getRandomUnit (; 345 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    i32.const 3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    i32.const 255
    i32.and
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
    local.tee $4
    i32.load16_u offset=8
    i32.const 0
    i32.gt_u
    if
     local.get $2
     i32.const 1
     i32.add
     local.set $2
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  local.get $2
  i32.const 0
  i32.eq
  if
   i32.const 0
   local.set $4
   local.get $0
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  local.get $1
  call $contract/helper/random
  i32.const 65535
  i32.and
  local.get $2
  i32.rem_u
  i32.const 1
  i32.add
  local.set $2
  block $break|1
   i32.const 0
   local.set $3
   loop $loop|1
    local.get $3
    i32.const 3
    i32.lt_u
    i32.eqz
    br_if $break|1
    local.get $0
    local.get $3
    i32.const 255
    i32.and
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
    local.tee $4
    i32.load16_u offset=8
    i32.const 0
    i32.gt_u
    if
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     local.get $2
     i32.const 255
     i32.and
     i32.const 0
     i32.eq
     if
      local.get $3
      local.set $5
      local.get $0
      call $~lib/rt/pure/__release
      local.get $4
      call $~lib/rt/pure/__release
      local.get $5
      return
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    call $~lib/rt/pure/__release
    br $loop|1
   end
   unreachable
  end
  i32.const 0
  local.set $4
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $contract/battle/_attack (; 346 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 255
  i32.and
  i32.const 3
  i32.gt_u
  if
   local.get $0
   i32.load offset=4
   local.get $1
   i32.const 1
   i32.sub
   global.get $contract/battle/UNIT_LIMIT
   i32.sub
   i32.const 255
   i32.and
   call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
   local.tee $7
   i32.load16_u offset=14
   local.set $4
   local.get $0
   i32.load
   local.get $2
   i32.const 255
   i32.and
   call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
   local.tee $8
   i32.load16_u offset=18
   local.set $5
   local.get $7
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
  else   
   local.get $0
   i32.load
   local.get $1
   i32.const 1
   i32.sub
   i32.const 255
   i32.and
   call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
   local.tee $8
   i32.load16_u offset=14
   local.set $4
   local.get $0
   i32.load offset=4
   local.get $2
   i32.const 255
   i32.and
   call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
   local.tee $7
   i32.load16_u offset=18
   local.set $5
   local.get $8
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.const 7
  i32.mul
  i32.const 65535
  i32.and
  i32.const 10
  i32.div_u
  local.get $4
  i32.gt_u
  if
   local.get $4
   i32.const 3
   i32.mul
   i32.const 100
   local.get $3
   i32.add
   i32.mul
   i32.const 65535
   i32.and
   i32.const 1000
   i32.div_u
   local.set $6
  else   
   local.get $4
   local.get $5
   i32.const 7
   i32.mul
   i32.const 65535
   i32.and
   i32.const 10
   i32.div_u
   i32.sub
   i32.const 100
   local.get $3
   i32.add
   i32.mul
   i32.const 65535
   i32.and
   i32.const 100
   i32.div_u
   local.set $6
  end
  local.get $1
  i32.const 255
  i32.and
  i32.const 3
  i32.gt_u
  if
   local.get $6
   local.get $0
   i32.load
   local.get $2
   i32.const 255
   i32.and
   call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
   local.tee $7
   i32.load16_u offset=8
   i32.gt_u
   if
    local.get $0
    i32.load
    local.get $2
    i32.const 255
    i32.and
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
    local.tee $8
    i32.const 0
    i32.store16 offset=8
    local.get $8
    call $~lib/rt/pure/__release
   else    
    local.get $0
    i32.load
    local.get $2
    i32.const 255
    i32.and
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
    local.tee $9
    local.get $0
    i32.load
    local.get $2
    i32.const 255
    i32.and
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
    local.tee $8
    i32.load16_u offset=8
    local.get $6
    i32.sub
    i32.store16 offset=8
    local.get $8
    call $~lib/rt/pure/__release
    local.get $9
    call $~lib/rt/pure/__release
   end
   local.get $0
   i32.load
   local.get $2
   i32.const 255
   i32.and
   call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
   local.tee $9
   i32.load16_u offset=8
   local.set $8
   local.get $7
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $8
   return
  else   
   local.get $6
   local.get $0
   i32.load offset=4
   local.get $2
   i32.const 255
   i32.and
   call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
   local.tee $9
   i32.load16_u offset=8
   i32.gt_u
   if
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 255
    i32.and
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
    local.tee $7
    i32.const 0
    i32.store16 offset=8
    local.get $7
    call $~lib/rt/pure/__release
   else    
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 255
    i32.and
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
    local.tee $8
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 255
    i32.and
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
    local.tee $7
    i32.load16_u offset=8
    local.get $6
    i32.sub
    i32.store16 offset=8
    local.get $7
    call $~lib/rt/pure/__release
    local.get $8
    call $~lib/rt/pure/__release
   end
   local.get $0
   i32.load offset=4
   local.get $2
   i32.const 255
   i32.and
   call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
   local.tee $8
   i32.load16_u offset=8
   local.set $7
   local.get $9
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $7
   return
  end
  unreachable
 )
 (func $~lib/util/number/utoa32 (; 347 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.eqz
  if
   i32.const 656
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.set $1
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $2
  local.get $2
  local.set $5
  local.get $0
  local.set $4
  local.get $1
  local.set $3
  local.get $5
  local.get $4
  local.get $3
  call $~lib/util/number/utoa32_lut
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/itoa<u16> (; 348 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  call $~lib/util/number/utoa32
  return
 )
 (func $~lib/number/U16#toString (; 349 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/util/number/itoa<u16>
  local.tee $1
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $contract/battle/_createOneRecord (; 350 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  call $~lib/number/U16#toString
  local.tee $4
  local.get $1
  call $~lib/number/U16#toString
  local.tee $5
  call $~lib/string/String.__concat
  local.tee $6
  local.get $2
  call $~lib/number/U16#toString
  local.tee $7
  call $~lib/string/String.__concat
  local.tee $8
  local.get $3
  call $contract/helper/u16ToString
  local.tee $9
  call $~lib/string/String.__concat
  local.tee $10
  call $~lib/rt/pure/__retain
  local.set $11
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
 )
 (func $~lib/array/Array<u16>#__unchecked_set (; 351 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
 )
 (func $~lib/array/Array<u16>#__set (; 352 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 1
  call $~lib/array/ensureSize
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<u16>#__unchecked_set
  local.get $1
  local.get $3
  i32.ge_s
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
 )
 (func $contract/battle/_attackAll (; 353 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  i32.const 1
  i32.const 34
  i32.const 8008
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $6
  i32.const 0
  call $~lib/array/Array<u16>#push
  drop
  local.get $6
  i32.const 0
  call $~lib/array/Array<u16>#push
  drop
  local.get $6
  i32.const 0
  call $~lib/array/Array<u16>#push
  drop
  block $break|0
   i32.const 0
   local.set $8
   loop $loop|0
    local.get $8
    i32.const 3
    i32.lt_u
    i32.eqz
    br_if $break|0
    block $continue|0
     local.get $1
     i32.const 255
     i32.and
     i32.const 3
     i32.gt_u
     if
      local.get $0
      i32.load
      local.get $8
      i32.const 65535
      i32.and
      call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
      local.tee $9
      i32.load16_u offset=8
      i32.const 0
      i32.eq
      if
       local.get $9
       call $~lib/rt/pure/__release
       br $continue|0
      end
      local.get $0
      i32.load offset=4
      local.get $1
      i32.const 1
      i32.sub
      global.get $contract/battle/UNIT_LIMIT
      i32.sub
      i32.const 255
      i32.and
      call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
      local.tee $10
      i32.load16_u offset=14
      local.set $3
      local.get $0
      i32.load
      local.get $8
      i32.const 65535
      i32.and
      call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
      local.tee $11
      i32.load16_u offset=18
      local.set $4
      local.get $9
      call $~lib/rt/pure/__release
      local.get $10
      call $~lib/rt/pure/__release
      local.get $11
      call $~lib/rt/pure/__release
     else      
      local.get $0
      i32.load offset=4
      local.get $8
      i32.const 65535
      i32.and
      call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
      local.tee $11
      i32.load16_u offset=8
      i32.const 0
      i32.eq
      if
       local.get $11
       call $~lib/rt/pure/__release
       br $continue|0
      end
      local.get $0
      i32.load
      local.get $1
      i32.const 1
      i32.sub
      i32.const 255
      i32.and
      call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
      local.tee $10
      i32.load16_u offset=14
      local.set $3
      local.get $0
      i32.load offset=4
      local.get $8
      i32.const 65535
      i32.and
      call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
      local.tee $9
      i32.load16_u offset=18
      local.set $4
      local.get $11
      call $~lib/rt/pure/__release
      local.get $10
      call $~lib/rt/pure/__release
      local.get $9
      call $~lib/rt/pure/__release
     end
     local.get $4
     i32.const 7
     i32.mul
     i32.const 65535
     i32.and
     i32.const 10
     i32.div_u
     local.get $3
     i32.gt_u
     if
      local.get $3
      i32.const 3
      i32.mul
      i32.const 100
      local.get $2
      i32.add
      i32.mul
      i32.const 65535
      i32.and
      i32.const 1000
      i32.div_u
      local.set $5
     else      
      local.get $3
      local.get $4
      i32.const 7
      i32.mul
      i32.const 65535
      i32.and
      i32.const 10
      i32.div_u
      i32.sub
      i32.const 100
      local.get $2
      i32.add
      i32.mul
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.set $5
     end
     local.get $1
     i32.const 255
     i32.and
     i32.const 3
     i32.gt_u
     if
      local.get $5
      local.get $0
      i32.load
      local.get $8
      i32.const 65535
      i32.and
      call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
      local.tee $9
      i32.load16_u offset=8
      i32.gt_u
      if
       local.get $0
       i32.load
       local.get $8
       i32.const 65535
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $10
       i32.const 0
       i32.store16 offset=8
       local.get $10
       call $~lib/rt/pure/__release
      else       
       local.get $0
       i32.load
       local.get $8
       i32.const 65535
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $11
       local.get $0
       i32.load
       local.get $8
       i32.const 65535
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $10
       i32.load16_u offset=8
       local.get $5
       i32.sub
       i32.store16 offset=8
       local.get $10
       call $~lib/rt/pure/__release
       local.get $11
       call $~lib/rt/pure/__release
      end
      local.get $6
      local.get $8
      i32.const 65535
      i32.and
      local.get $0
      i32.load
      local.get $8
      i32.const 65535
      i32.and
      call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
      local.tee $11
      i32.load16_u offset=8
      call $~lib/array/Array<u16>#__set
      local.get $9
      call $~lib/rt/pure/__release
      local.get $11
      call $~lib/rt/pure/__release
     else      
      local.get $5
      local.get $0
      i32.load offset=4
      local.get $8
      i32.const 65535
      i32.and
      call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
      local.tee $11
      i32.load16_u offset=8
      i32.gt_u
      if
       local.get $0
       i32.load offset=4
       local.get $8
       i32.const 65535
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $9
       i32.const 0
       i32.store16 offset=8
       local.get $9
       call $~lib/rt/pure/__release
      else       
       local.get $0
       i32.load offset=4
       local.get $8
       i32.const 65535
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $10
       local.get $0
       i32.load offset=4
       local.get $8
       i32.const 65535
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $9
       i32.load16_u offset=8
       local.get $5
       i32.sub
       i32.store16 offset=8
       local.get $9
       call $~lib/rt/pure/__release
       local.get $10
       call $~lib/rt/pure/__release
      end
      local.get $6
      local.get $8
      i32.const 65535
      i32.and
      local.get $0
      i32.load offset=4
      local.get $8
      i32.const 65535
      i32.and
      call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
      local.tee $10
      i32.load16_u offset=8
      call $~lib/array/Array<u16>#__set
      local.get $11
      call $~lib/rt/pure/__release
      local.get $10
      call $~lib/rt/pure/__release
     end
    end
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $loop|0
   end
   unreachable
  end
  local.get $6
  local.set $8
  local.get $7
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $~lib/util/number/itoa<u8> (; 354 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  call $~lib/util/number/utoa32
  return
 )
 (func $~lib/number/U8#toString (; 355 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/util/number/itoa<u8>
  local.tee $1
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $contract/battle/_createLongRecord (; 356 ;) (type $FUNCSIG$iiiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  local.get $0
  call $~lib/number/U8#toString
  local.tee $6
  local.get $1
  call $~lib/number/U8#toString
  local.tee $7
  call $~lib/string/String.__concat
  local.tee $8
  local.get $2
  call $~lib/number/U8#toString
  local.tee $9
  call $~lib/string/String.__concat
  local.tee $10
  local.get $3
  call $contract/helper/u16ToString
  local.tee $11
  call $~lib/string/String.__concat
  local.tee $12
  local.get $4
  call $contract/helper/u16ToString
  local.tee $13
  call $~lib/string/String.__concat
  local.tee $14
  local.get $5
  call $contract/helper/u16ToString
  local.tee $15
  call $~lib/string/String.__concat
  local.tee $16
  call $~lib/rt/pure/__retain
  local.set $17
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $17
 )
 (func $contract/battle/_createTwoRecords (; 357 ;) (type $FUNCSIG$iiiiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (result i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  local.get $0
  call $~lib/number/U8#toString
  local.tee $7
  local.get $1
  call $~lib/number/U8#toString
  local.tee $8
  call $~lib/string/String.__concat
  local.tee $9
  local.get $2
  call $~lib/number/U8#toString
  local.tee $10
  call $~lib/string/String.__concat
  local.tee $11
  local.get $3
  call $contract/helper/u16ToString
  local.tee $12
  call $~lib/string/String.__concat
  local.tee $13
  local.get $0
  call $~lib/number/U8#toString
  local.tee $14
  call $~lib/string/String.__concat
  local.tee $15
  local.get $4
  call $~lib/number/U8#toString
  local.tee $16
  call $~lib/string/String.__concat
  local.tee $17
  local.get $5
  call $~lib/number/U8#toString
  local.tee $18
  call $~lib/string/String.__concat
  local.tee $19
  local.get $6
  call $contract/helper/u16ToString
  local.tee $20
  call $~lib/string/String.__concat
  local.tee $21
  call $~lib/rt/pure/__retain
  local.set $22
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $21
  call $~lib/rt/pure/__release
  local.get $22
 )
 (func $contract/battle/_findAllyWithLeastHp (; 358 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
  local.tee $1
  i32.load16_u offset=8
  i32.const 0
  i32.gt_u
  if (result i32)
   local.get $0
   i32.const 1
   call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
   local.tee $2
   i32.load16_u offset=8
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $0
    i32.const 0
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
    local.tee $3
    i32.load16_u offset=8
    local.get $0
    i32.const 1
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
    local.tee $4
    i32.load16_u offset=8
    i32.le_u
    local.set $5
    local.get $3
    call $~lib/rt/pure/__release
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
   end
   local.set $4
   local.get $2
   call $~lib/rt/pure/__release
   local.get $4
  else   
   i32.const 0
  end
  if (result i32)
   local.get $0
   i32.const 2
   call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
   local.tee $2
   i32.load16_u offset=8
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $0
    i32.const 0
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
    local.tee $4
    i32.load16_u offset=8
    local.get $0
    i32.const 2
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
    local.tee $3
    i32.load16_u offset=8
    i32.le_u
    local.set $5
    local.get $4
    call $~lib/rt/pure/__release
    local.get $3
    call $~lib/rt/pure/__release
    local.get $5
   end
   local.set $3
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
  else   
   i32.const 0
  end
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 1
  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
  local.tee $2
  i32.load16_u offset=8
  i32.const 0
  i32.gt_u
  if (result i32)
   local.get $0
   i32.const 2
   call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
   local.tee $3
   i32.load16_u offset=8
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $0
    i32.const 1
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
    local.tee $4
    i32.load16_u offset=8
    local.get $0
    i32.const 2
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
    local.tee $5
    i32.load16_u offset=8
    i32.le_u
    local.set $6
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    local.get $6
   end
   local.set $5
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
  else   
   i32.const 0
  end
  if
   i32.const 1
   local.set $3
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  i32.const 2
  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
  local.tee $3
  i32.load16_u offset=8
  i32.const 0
  i32.gt_u
  if
   i32.const 2
   local.set $5
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  i32.const 0
  local.set $5
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $contract/battle/_battleOneRound (; 359 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 255
  i32.and
  i32.const 3
  i32.gt_u
  if
   local.get $2
   i32.load offset=4
   local.get $0
   i32.const 1
   i32.sub
   global.get $contract/battle/UNIT_LIMIT
   i32.sub
   i32.const 255
   i32.and
   call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
   local.tee $4
   i64.load
   local.set $3
   local.get $4
   call $~lib/rt/pure/__release
  else   
   local.get $2
   i32.load
   local.get $0
   i32.const 1
   i32.sub
   i32.const 255
   i32.and
   call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
   local.tee $4
   i64.load
   local.set $3
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $0
  i32.const 255
  i32.and
  i32.const 3
  i32.gt_u
  if
   local.get $2
   i32.load
   local.get $1
   global.get $contract/battle/UNIT_LIMIT
   i32.mul
   i32.const 2
   i32.mul
   local.get $0
   i32.const 255
   i32.and
   i32.add
   call $contract/battle/_getRandomUnit
   local.set $4
  else   
   local.get $2
   i32.load offset=4
   local.get $1
   global.get $contract/battle/UNIT_LIMIT
   i32.mul
   i32.const 2
   i32.mul
   local.get $0
   i32.const 255
   i32.and
   i32.add
   call $contract/battle/_getRandomUnit
   local.set $4
  end
  i32.const 0
  local.set $10
  local.get $3
  i64.const 1
  i64.eq
  if
   local.get $0
   i32.const 255
   i32.and
   i32.const 3
   i32.gt_u
   if
    local.get $2
    i32.load
    local.get $4
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
    local.tee $11
    i32.load16_u offset=8
    local.set $7
    local.get $2
    i32.load
    local.get $4
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
    local.tee $12
    i32.load16_u offset=12
    local.set $8
    local.get $11
    call $~lib/rt/pure/__release
    local.get $12
    call $~lib/rt/pure/__release
   else    
    local.get $2
    i32.load offset=4
    local.get $4
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
    local.tee $12
    i32.load16_u offset=8
    local.set $7
    local.get $2
    i32.load offset=4
    local.get $4
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
    local.tee $11
    i32.load16_u offset=12
    local.set $8
    local.get $12
    call $~lib/rt/pure/__release
    local.get $11
    call $~lib/rt/pure/__release
   end
   local.get $7
   local.get $8
   i32.const 3
   i32.mul
   i32.const 65535
   i32.and
   i32.const 10
   i32.div_u
   i32.lt_u
   if
    local.get $2
    local.get $0
    local.get $4
    i32.const 0
    call $contract/battle/_attack
    local.set $9
    local.get $0
    i32.const 255
    i32.and
    local.get $4
    i32.const 1
    local.get $9
    call $contract/battle/_createOneRecord
    local.set $12
    local.get $10
    call $~lib/rt/pure/__release
    local.get $12
    local.set $10
   else    
    local.get $2
    local.get $0
    local.get $4
    i32.const 20
    call $contract/battle/_attack
    local.set $9
    local.get $0
    i32.const 255
    i32.and
    local.get $4
    i32.const 0
    local.get $9
    call $contract/battle/_createOneRecord
    local.set $11
    local.get $10
    call $~lib/rt/pure/__release
    local.get $11
    local.set $10
   end
  else   
   local.get $3
   i64.const 2
   i64.eq
   if
    local.get $0
    i32.const 255
    i32.and
    i32.const 3
    i32.gt_u
    if
     local.get $2
     i32.load offset=4
     local.get $0
     i32.const 1
     i32.sub
     global.get $contract/battle/UNIT_LIMIT
     i32.sub
     i32.const 255
     i32.and
     call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
     local.tee $11
     i32.load16_u offset=26
     local.set $7
     local.get $11
     call $~lib/rt/pure/__release
    else     
     local.get $2
     i32.load
     local.get $0
     i32.const 1
     i32.sub
     i32.const 255
     i32.and
     call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
     local.tee $11
     i32.load16_u offset=26
     local.set $7
     local.get $11
     call $~lib/rt/pure/__release
    end
    local.get $7
    i32.const 3
    i32.rem_u
    i32.const 2
    i32.eq
    if
     local.get $2
     local.get $0
     local.get $4
     i32.const 20
     call $contract/battle/_attack
     local.set $9
     local.get $0
     i32.const 255
     i32.and
     local.get $4
     i32.const 2
     local.get $9
     call $contract/battle/_createOneRecord
     local.set $12
     local.get $10
     call $~lib/rt/pure/__release
     local.get $12
     local.set $10
    else     
     local.get $2
     local.get $0
     local.get $4
     i32.const 0
     call $contract/battle/_attack
     local.set $9
     local.get $0
     i32.const 255
     i32.and
     local.get $4
     i32.const 0
     local.get $9
     call $contract/battle/_createOneRecord
     local.set $11
     local.get $10
     call $~lib/rt/pure/__release
     local.get $11
     local.set $10
    end
   else    
    local.get $3
    i64.const 3
    i64.eq
    if
     local.get $4
     i32.const 1
     i32.eq
     if
      local.get $2
      local.get $0
      local.get $4
      i32.const 20
      call $contract/battle/_attack
      local.set $9
      local.get $0
      i32.const 255
      i32.and
      local.get $4
      i32.const 3
      local.get $9
      call $contract/battle/_createOneRecord
      local.set $12
      local.get $10
      call $~lib/rt/pure/__release
      local.get $12
      local.set $10
     else      
      local.get $2
      local.get $0
      local.get $4
      i32.const 0
      call $contract/battle/_attack
      local.set $9
      local.get $0
      i32.const 255
      i32.and
      local.get $4
      i32.const 0
      local.get $9
      call $contract/battle/_createOneRecord
      local.set $11
      local.get $10
      call $~lib/rt/pure/__release
      local.get $11
      local.set $10
     end
    else     
     local.get $3
     i64.const 4
     i64.eq
     if
      local.get $0
      i32.const 255
      i32.and
      i32.const 3
      i32.gt_u
      if
       local.get $2
       i32.load offset=4
       local.get $0
       i32.const 1
       i32.sub
       i32.const 3
       i32.sub
       i32.const 255
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $11
       i32.load16_u offset=8
       i32.const 2
       i32.mul
       i32.const 65535
       i32.and
       local.get $2
       i32.load offset=4
       local.get $0
       i32.const 1
       i32.sub
       i32.const 3
       i32.sub
       i32.const 255
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $12
       i32.load16_u offset=12
       i32.lt_u
       if
        local.get $2
        local.get $0
        i32.const 0
        call $contract/battle/_attackAll
        local.set $13
        local.get $0
        local.get $4
        i32.const 4
        local.get $13
        i32.const 0
        call $~lib/array/Array<u16>#__get
        local.get $13
        i32.const 1
        call $~lib/array/Array<u16>#__get
        local.get $13
        i32.const 2
        call $~lib/array/Array<u16>#__get
        call $contract/battle/_createLongRecord
        local.set $14
        local.get $10
        call $~lib/rt/pure/__release
        local.get $14
        local.set $10
        local.get $13
        call $~lib/rt/pure/__release
       else        
        local.get $2
        local.get $0
        local.get $4
        i32.const 0
        call $contract/battle/_attack
        local.set $9
        local.get $0
        i32.const 255
        i32.and
        local.get $4
        i32.const 0
        local.get $9
        call $contract/battle/_createOneRecord
        local.set $14
        local.get $10
        call $~lib/rt/pure/__release
        local.get $14
        local.set $10
       end
       local.get $11
       call $~lib/rt/pure/__release
       local.get $12
       call $~lib/rt/pure/__release
      else       
       local.get $2
       i32.load
       local.get $0
       i32.const 1
       i32.sub
       i32.const 255
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $12
       i32.load16_u offset=8
       i32.const 2
       i32.mul
       i32.const 65535
       i32.and
       local.get $2
       i32.load
       local.get $0
       i32.const 1
       i32.sub
       i32.const 255
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $11
       i32.load16_u offset=12
       i32.lt_u
       if
        local.get $2
        local.get $0
        i32.const 0
        call $contract/battle/_attackAll
        local.set $14
        local.get $0
        local.get $4
        i32.const 4
        local.get $14
        i32.const 0
        call $~lib/array/Array<u16>#__get
        local.get $14
        i32.const 1
        call $~lib/array/Array<u16>#__get
        local.get $14
        i32.const 2
        call $~lib/array/Array<u16>#__get
        call $contract/battle/_createLongRecord
        local.set $13
        local.get $10
        call $~lib/rt/pure/__release
        local.get $13
        local.set $10
        local.get $14
        call $~lib/rt/pure/__release
       else        
        local.get $2
        local.get $0
        local.get $4
        i32.const 0
        call $contract/battle/_attack
        local.set $9
        local.get $0
        i32.const 255
        i32.and
        local.get $4
        i32.const 0
        local.get $9
        call $contract/battle/_createOneRecord
        local.set $13
        local.get $10
        call $~lib/rt/pure/__release
        local.get $13
        local.set $10
       end
       local.get $12
       call $~lib/rt/pure/__release
       local.get $11
       call $~lib/rt/pure/__release
      end
     else      
      local.get $3
      i64.const 5
      i64.eq
      if
       local.get $2
       local.get $0
       local.get $4
       i32.const 0
       call $contract/battle/_attack
       local.set $9
       local.get $1
       global.get $contract/battle/UNIT_LIMIT
       i32.mul
       local.get $0
       i32.const 255
       i32.and
       i32.add
       i32.const 1024
       i32.add
       call $contract/helper/random
       local.set $7
       local.get $7
       i32.const 65535
       i32.and
       i32.const 100
       i32.rem_u
       i32.const 20
       i32.lt_u
       if
        local.get $0
        i32.const 255
        i32.and
        i32.const 3
        i32.gt_u
        if
         local.get $2
         i32.load
         local.get $4
         call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
         local.tee $11
         i32.const 1
         i32.store16 offset=22
         local.get $11
         call $~lib/rt/pure/__release
        else         
         local.get $2
         i32.load offset=4
         local.get $4
         call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
         local.tee $11
         i32.const 1
         i32.store16 offset=22
         local.get $11
         call $~lib/rt/pure/__release
        end
        local.get $0
        i32.const 255
        i32.and
        local.get $4
        i32.const 5
        local.get $9
        call $contract/battle/_createOneRecord
        local.set $14
        local.get $10
        call $~lib/rt/pure/__release
        local.get $14
        local.set $10
       else        
        local.get $0
        i32.const 255
        i32.and
        local.get $4
        i32.const 0
        local.get $9
        call $contract/battle/_createOneRecord
        local.set $13
        local.get $10
        call $~lib/rt/pure/__release
        local.get $13
        local.set $10
       end
      else       
       local.get $3
       i64.const 6
       i64.eq
       if
        local.get $2
        local.get $0
        local.get $4
        i32.const 0
        call $contract/battle/_attack
        local.set $9
        local.get $0
        i32.const 255
        i32.and
        i32.const 3
        i32.gt_u
        if
         local.get $2
         i32.load offset=4
         local.get $0
         i32.const 1
         i32.sub
         global.get $contract/battle/UNIT_LIMIT
         i32.sub
         i32.const 255
         i32.and
         call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
         local.tee $13
         i32.load16_u offset=26
         local.set $7
         local.get $13
         call $~lib/rt/pure/__release
        else         
         local.get $2
         i32.load
         local.get $0
         i32.const 1
         i32.sub
         i32.const 255
         i32.and
         call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
         local.tee $13
         i32.load16_u offset=26
         local.set $7
         local.get $13
         call $~lib/rt/pure/__release
        end
        local.get $7
        i32.const 3
        i32.eq
        if
         local.get $0
         i32.const 255
         i32.and
         i32.const 3
         i32.gt_u
         if
          local.get $2
          i32.load offset=4
          local.get $0
          i32.const 1
          i32.sub
          global.get $contract/battle/UNIT_LIMIT
          i32.sub
          i32.const 255
          i32.and
          call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
          local.tee $13
          i32.load16_u offset=20
          i32.const 12
          i32.mul
          i32.const 65535
          i32.and
          i32.const 10
          i32.div_u
          local.set $8
          local.get $2
          i32.load offset=4
          local.get $0
          i32.const 1
          i32.sub
          global.get $contract/battle/UNIT_LIMIT
          i32.sub
          i32.const 255
          i32.and
          call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
          local.tee $14
          local.get $8
          i32.store16 offset=20
          local.get $13
          call $~lib/rt/pure/__release
          local.get $14
          call $~lib/rt/pure/__release
         else          
          local.get $2
          i32.load
          local.get $0
          i32.const 1
          i32.sub
          i32.const 255
          i32.and
          call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
          local.tee $14
          i32.load16_u offset=20
          i32.const 12
          i32.mul
          i32.const 65535
          i32.and
          i32.const 10
          i32.div_u
          local.set $8
          local.get $2
          i32.load
          local.get $0
          i32.const 1
          i32.sub
          i32.const 255
          i32.and
          call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
          local.tee $13
          local.get $8
          i32.store16 offset=20
          local.get $14
          call $~lib/rt/pure/__release
          local.get $13
          call $~lib/rt/pure/__release
         end
         local.get $0
         local.get $4
         i32.const 0
         local.get $9
         local.get $4
         i32.const 6
         local.get $8
         call $contract/battle/_createTwoRecords
         local.set $12
         local.get $10
         call $~lib/rt/pure/__release
         local.get $12
         local.set $10
        else         
         local.get $0
         i32.const 255
         i32.and
         local.get $4
         i32.const 0
         local.get $9
         call $contract/battle/_createOneRecord
         local.set $11
         local.get $10
         call $~lib/rt/pure/__release
         local.get $11
         local.set $10
        end
       else        
        local.get $3
        i64.const 7
        i64.eq
        if
         local.get $0
         i32.const 255
         i32.and
         i32.const 3
         i32.gt_u
         if
          block $break|0
           i32.const 0
           local.set $5
           loop $loop|0
            local.get $5
            i32.const 3
            i32.lt_u
            i32.eqz
            br_if $break|0
            local.get $2
            i32.load offset=4
            local.get $5
            i32.const 255
            i32.and
            call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
            local.tee $11
            i32.load16_u offset=8
            i32.const 0
            i32.gt_u
            if
             local.get $6
             i32.const 1
             i32.add
             local.set $6
            end
            local.get $5
            i32.const 1
            i32.add
            local.set $5
            local.get $11
            call $~lib/rt/pure/__release
            br $loop|0
           end
           unreachable
          end
         else          
          block $break|1
           i32.const 0
           local.set $5
           loop $loop|1
            local.get $5
            i32.const 3
            i32.lt_u
            i32.eqz
            br_if $break|1
            local.get $2
            i32.load
            local.get $5
            i32.const 255
            i32.and
            call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
            local.tee $11
            i32.load16_u offset=8
            i32.const 0
            i32.gt_u
            if
             local.get $6
             i32.const 1
             i32.add
             local.set $6
            end
            local.get $5
            i32.const 1
            i32.add
            local.set $5
            local.get $11
            call $~lib/rt/pure/__release
            br $loop|1
           end
           unreachable
          end
         end
         local.get $6
         i32.const 1
         i32.eq
         if
          local.get $2
          local.get $0
          local.get $4
          i32.const 20
          call $contract/battle/_attack
          local.set $9
          local.get $0
          i32.const 255
          i32.and
          local.get $4
          i32.const 7
          local.get $9
          call $contract/battle/_createOneRecord
          local.set $14
          local.get $10
          call $~lib/rt/pure/__release
          local.get $14
          local.set $10
         else          
          local.get $2
          local.get $0
          local.get $4
          i32.const 0
          call $contract/battle/_attack
          local.set $9
          local.get $0
          i32.const 255
          i32.and
          local.get $4
          i32.const 0
          local.get $9
          call $contract/battle/_createOneRecord
          local.set $13
          local.get $10
          call $~lib/rt/pure/__release
          local.get $13
          local.set $10
         end
        else         
         local.get $3
         i64.const 8
         i64.eq
         if
          local.get $0
          i32.const 255
          i32.and
          i32.const 3
          i32.gt_u
          if
           local.get $2
           i32.load
           local.get $4
           call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
           local.tee $14
           local.get $2
           i32.load
           local.get $4
           call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
           local.tee $13
           i32.load16_u offset=18
           i32.const 8
           i32.mul
           i32.const 65535
           i32.and
           i32.const 10
           i32.div_u
           i32.store16 offset=18
           local.get $2
           local.get $0
           local.get $4
           i32.const 0
           call $contract/battle/_attack
           local.set $9
           local.get $0
           local.get $4
           i32.const 8
           local.get $2
           i32.load
           local.get $4
           call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
           local.tee $11
           i32.load16_u offset=18
           local.get $4
           i32.const 0
           local.get $9
           call $contract/battle/_createTwoRecords
           local.set $12
           local.get $10
           call $~lib/rt/pure/__release
           local.get $12
           local.set $10
           local.get $13
           call $~lib/rt/pure/__release
           local.get $14
           call $~lib/rt/pure/__release
           local.get $11
           call $~lib/rt/pure/__release
          else           
           local.get $2
           i32.load offset=4
           local.get $4
           call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
           local.tee $14
           local.get $2
           i32.load offset=4
           local.get $4
           call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
           local.tee $11
           i32.load16_u offset=18
           i32.const 8
           i32.mul
           i32.const 65535
           i32.and
           i32.const 10
           i32.div_u
           i32.store16 offset=18
           local.get $2
           local.get $0
           local.get $4
           i32.const 0
           call $contract/battle/_attack
           local.set $9
           local.get $0
           local.get $4
           i32.const 8
           local.get $2
           i32.load offset=4
           local.get $4
           call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
           local.tee $13
           i32.load16_u offset=18
           local.get $4
           i32.const 0
           local.get $9
           call $contract/battle/_createTwoRecords
           local.set $12
           local.get $10
           call $~lib/rt/pure/__release
           local.get $12
           local.set $10
           local.get $11
           call $~lib/rt/pure/__release
           local.get $14
           call $~lib/rt/pure/__release
           local.get $13
           call $~lib/rt/pure/__release
          end
         else          
          local.get $3
          i64.const 9
          i64.eq
          if
           local.get $0
           i32.const 255
           i32.and
           i32.const 3
           i32.gt_u
           if
            local.get $2
            i32.load
            local.get $4
            call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
            local.tee $14
            local.get $2
            i32.load
            local.get $4
            call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
            local.tee $13
            i32.load16_u offset=20
            i32.const 8
            i32.mul
            i32.const 65535
            i32.and
            i32.const 10
            i32.div_u
            i32.store16 offset=20
            local.get $2
            local.get $0
            local.get $4
            i32.const 0
            call $contract/battle/_attack
            local.set $9
            local.get $0
            local.get $4
            i32.const 9
            local.get $2
            i32.load
            local.get $4
            call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
            local.tee $11
            i32.load16_u offset=20
            local.get $4
            i32.const 0
            local.get $9
            call $contract/battle/_createTwoRecords
            local.set $12
            local.get $10
            call $~lib/rt/pure/__release
            local.get $12
            local.set $10
            local.get $13
            call $~lib/rt/pure/__release
            local.get $14
            call $~lib/rt/pure/__release
            local.get $11
            call $~lib/rt/pure/__release
           else            
            local.get $2
            i32.load offset=4
            local.get $4
            call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
            local.tee $14
            local.get $2
            i32.load offset=4
            local.get $4
            call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
            local.tee $11
            i32.load16_u offset=20
            i32.const 8
            i32.mul
            i32.const 65535
            i32.and
            i32.const 10
            i32.div_u
            i32.store16 offset=20
            local.get $2
            local.get $0
            local.get $4
            i32.const 0
            call $contract/battle/_attack
            local.set $9
            local.get $0
            local.get $4
            i32.const 9
            local.get $2
            i32.load offset=4
            local.get $4
            call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
            local.tee $13
            i32.load16_u offset=20
            local.get $4
            i32.const 0
            local.get $9
            call $contract/battle/_createTwoRecords
            local.set $12
            local.get $10
            call $~lib/rt/pure/__release
            local.get $12
            local.set $10
            local.get $11
            call $~lib/rt/pure/__release
            local.get $14
            call $~lib/rt/pure/__release
            local.get $13
            call $~lib/rt/pure/__release
           end
          else           
           local.get $3
           i64.const 10
           i64.eq
           if
            local.get $0
            i32.const 255
            i32.and
            i32.const 3
            i32.gt_u
            if
             local.get $2
             i32.load offset=4
             call $contract/battle/_findAllyWithLeastHp
             local.set $6
             local.get $2
             i32.load offset=4
             local.get $6
             call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
             local.tee $13
             i32.load16_u offset=8
             local.get $2
             i32.load offset=4
             local.get $6
             call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
             local.tee $14
             i32.load16_u offset=12
             i32.const 5
             i32.div_u
             i32.add
             local.set $8
             local.get $8
             i32.const 65535
             i32.and
             local.get $2
             i32.load offset=4
             local.get $6
             call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
             local.tee $11
             i32.load16_u offset=12
             i32.le_u
             if
              local.get $2
              i32.load offset=4
              local.get $6
              call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
              local.tee $12
              local.get $8
              i32.store16 offset=8
              local.get $12
              call $~lib/rt/pure/__release
             else              
              local.get $2
              i32.load offset=4
              local.get $6
              call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
              local.tee $15
              local.get $2
              i32.load offset=4
              local.get $6
              call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
              local.tee $12
              i32.load16_u offset=12
              i32.store16 offset=8
              local.get $12
              call $~lib/rt/pure/__release
              local.get $15
              call $~lib/rt/pure/__release
             end
             local.get $2
             local.get $0
             local.get $4
             i32.const 0
             call $contract/battle/_attack
             local.set $9
             local.get $0
             local.get $6
             i32.const 10
             local.get $2
             i32.load offset=4
             local.get $6
             call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
             local.tee $15
             i32.load16_u offset=8
             local.get $4
             i32.const 0
             local.get $9
             call $contract/battle/_createTwoRecords
             local.set $12
             local.get $10
             call $~lib/rt/pure/__release
             local.get $12
             local.set $10
             local.get $13
             call $~lib/rt/pure/__release
             local.get $14
             call $~lib/rt/pure/__release
             local.get $11
             call $~lib/rt/pure/__release
             local.get $15
             call $~lib/rt/pure/__release
            else             
             local.get $2
             i32.load
             call $contract/battle/_findAllyWithLeastHp
             local.set $6
             local.get $2
             i32.load
             local.get $6
             call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
             local.tee $15
             i32.load16_u offset=8
             local.get $2
             i32.load
             local.get $6
             call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
             local.tee $11
             i32.load16_u offset=12
             i32.const 5
             i32.div_u
             i32.add
             local.set $8
             local.get $8
             i32.const 65535
             i32.and
             local.get $2
             i32.load
             local.get $6
             call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
             local.tee $14
             i32.load16_u offset=12
             i32.le_u
             if
              local.get $2
              i32.load
              local.get $6
              call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
              local.tee $13
              local.get $8
              i32.store16 offset=8
              local.get $13
              call $~lib/rt/pure/__release
             else              
              local.get $2
              i32.load
              local.get $6
              call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
              local.tee $12
              local.get $2
              i32.load
              local.get $6
              call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
              local.tee $13
              i32.load16_u offset=12
              i32.store16 offset=8
              local.get $13
              call $~lib/rt/pure/__release
              local.get $12
              call $~lib/rt/pure/__release
             end
             local.get $2
             local.get $0
             local.get $4
             i32.const 0
             call $contract/battle/_attack
             local.set $9
             local.get $0
             local.get $6
             i32.const 10
             local.get $2
             i32.load
             local.get $6
             call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
             local.tee $12
             i32.load16_u offset=8
             local.get $4
             i32.const 0
             local.get $9
             call $contract/battle/_createTwoRecords
             local.set $13
             local.get $10
             call $~lib/rt/pure/__release
             local.get $13
             local.set $10
             local.get $15
             call $~lib/rt/pure/__release
             local.get $11
             call $~lib/rt/pure/__release
             local.get $14
             call $~lib/rt/pure/__release
             local.get $12
             call $~lib/rt/pure/__release
            end
           else            
            local.get $3
            i64.const 11
            i64.eq
            if
             local.get $0
             i32.const 255
             i32.and
             i32.const 3
             i32.gt_u
             if
              block $break|2
               i32.const 0
               local.set $6
               loop $loop|2
                local.get $6
                i32.const 3
                i32.lt_u
                i32.eqz
                br_if $break|2
                local.get $2
                i32.load offset=4
                local.get $6
                i32.const 255
                i32.and
                call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                local.tee $12
                i32.load16_u offset=8
                i32.const 0
                i32.gt_u
                if
                 local.get $2
                 i32.load offset=4
                 local.get $6
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $11
                 local.get $2
                 i32.load offset=4
                 local.get $6
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $14
                 i32.load16_u offset=20
                 i32.const 21
                 i32.mul
                 i32.const 65535
                 i32.and
                 i32.const 20
                 i32.div_u
                 i32.store16 offset=20
                 local.get $14
                 call $~lib/rt/pure/__release
                 local.get $11
                 call $~lib/rt/pure/__release
                end
                local.get $6
                i32.const 1
                i32.add
                local.set $6
                local.get $12
                call $~lib/rt/pure/__release
                br $loop|2
               end
               unreachable
              end
             else              
              block $break|3
               i32.const 0
               local.set $6
               loop $loop|3
                local.get $6
                i32.const 3
                i32.lt_u
                i32.eqz
                br_if $break|3
                local.get $2
                i32.load
                local.get $6
                i32.const 255
                i32.and
                call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                local.tee $12
                i32.load16_u offset=8
                i32.const 0
                i32.gt_u
                if
                 local.get $2
                 i32.load
                 local.get $6
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $14
                 local.get $2
                 i32.load
                 local.get $6
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $11
                 i32.load16_u offset=20
                 i32.const 21
                 i32.mul
                 i32.const 65535
                 i32.and
                 i32.const 20
                 i32.div_u
                 i32.store16 offset=20
                 local.get $11
                 call $~lib/rt/pure/__release
                 local.get $14
                 call $~lib/rt/pure/__release
                end
                local.get $6
                i32.const 1
                i32.add
                local.set $6
                local.get $12
                call $~lib/rt/pure/__release
                br $loop|3
               end
               unreachable
              end
             end
             local.get $2
             local.get $0
             local.get $4
             i32.const 0
             call $contract/battle/_attack
             local.set $9
             local.get $0
             local.get $4
             i32.const 11
             i32.const 0
             local.get $4
             i32.const 0
             local.get $9
             call $contract/battle/_createTwoRecords
             local.set $13
             local.get $10
             call $~lib/rt/pure/__release
             local.get $13
             local.set $10
            else             
             local.get $3
             i64.const 12
             i64.eq
             if
              local.get $2
              local.get $0
              local.get $4
              i32.const 0
              call $contract/battle/_attack
              local.set $9
              local.get $0
              i32.const 255
              i32.and
              i32.const 3
              i32.gt_u
              if
               block $break|4
                i32.const 0
                local.set $5
                loop $loop|4
                 local.get $5
                 i32.const 3
                 i32.lt_u
                 i32.eqz
                 br_if $break|4
                 local.get $2
                 i32.load offset=4
                 local.get $5
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $13
                 i32.load16_u offset=12
                 i32.const 0
                 i32.gt_u
                 if (result i32)
                  local.get $2
                  i32.load offset=4
                  local.get $5
                  i32.const 255
                  i32.and
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $12
                  i32.load16_u offset=8
                  i32.const 0
                  i32.eq
                  local.set $14
                  local.get $12
                  call $~lib/rt/pure/__release
                  local.get $14
                 else                  
                  i32.const 0
                 end
                 if
                  local.get $6
                  i32.const 1
                  i32.add
                  local.set $6
                 end
                 local.get $5
                 i32.const 1
                 i32.add
                 local.set $5
                 local.get $13
                 call $~lib/rt/pure/__release
                 br $loop|4
                end
                unreachable
               end
               local.get $6
               i32.const 0
               i32.gt_u
               if
                local.get $0
                i32.const 1
                i32.sub
                global.get $contract/battle/UNIT_LIMIT
                i32.sub
                local.set $5
                local.get $2
                i32.load offset=4
                local.get $5
                i32.const 255
                i32.and
                call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                local.tee $13
                i32.load16_u offset=8
                local.get $2
                i32.load offset=4
                local.get $5
                i32.const 255
                i32.and
                call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                local.tee $12
                i32.load16_u offset=12
                i32.const 5
                i32.div_u
                i32.add
                local.set $8
                local.get $8
                i32.const 65535
                i32.and
                local.get $2
                i32.load offset=4
                local.get $5
                i32.const 255
                i32.and
                call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                local.tee $14
                i32.load16_u offset=12
                i32.le_u
                if
                 local.get $2
                 i32.load offset=4
                 local.get $5
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $11
                 local.get $8
                 i32.store16 offset=8
                 local.get $11
                 call $~lib/rt/pure/__release
                else                 
                 local.get $2
                 i32.load offset=4
                 local.get $5
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $15
                 local.get $2
                 i32.load offset=4
                 local.get $5
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $11
                 i32.load16_u offset=12
                 i32.store16 offset=8
                 local.get $11
                 call $~lib/rt/pure/__release
                 local.get $15
                 call $~lib/rt/pure/__release
                end
                local.get $0
                local.get $5
                i32.const 12
                local.get $2
                i32.load offset=4
                local.get $5
                i32.const 255
                i32.and
                call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                local.tee $15
                i32.load16_u offset=8
                local.get $4
                i32.const 0
                local.get $9
                call $contract/battle/_createTwoRecords
                local.set $11
                local.get $10
                call $~lib/rt/pure/__release
                local.get $11
                local.set $10
                local.get $13
                call $~lib/rt/pure/__release
                local.get $12
                call $~lib/rt/pure/__release
                local.get $14
                call $~lib/rt/pure/__release
                local.get $15
                call $~lib/rt/pure/__release
               else                
                local.get $0
                i32.const 255
                i32.and
                local.get $4
                i32.const 0
                local.get $9
                call $contract/battle/_createOneRecord
                local.set $11
                local.get $10
                call $~lib/rt/pure/__release
                local.get $11
                local.set $10
               end
              else               
               block $break|5
                i32.const 0
                local.set $5
                loop $loop|5
                 local.get $5
                 i32.const 3
                 i32.lt_u
                 i32.eqz
                 br_if $break|5
                 local.get $2
                 i32.load
                 local.get $5
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $11
                 i32.load16_u offset=12
                 i32.const 0
                 i32.gt_u
                 if (result i32)
                  local.get $2
                  i32.load
                  local.get $5
                  i32.const 255
                  i32.and
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $15
                  i32.load16_u offset=8
                  i32.const 0
                  i32.eq
                  local.set $14
                  local.get $15
                  call $~lib/rt/pure/__release
                  local.get $14
                 else                  
                  i32.const 0
                 end
                 if
                  local.get $6
                  i32.const 1
                  i32.add
                  local.set $6
                 end
                 local.get $5
                 i32.const 1
                 i32.add
                 local.set $5
                 local.get $11
                 call $~lib/rt/pure/__release
                 br $loop|5
                end
                unreachable
               end
               local.get $6
               i32.const 0
               i32.gt_u
               if
                local.get $0
                i32.const 1
                i32.sub
                local.set $5
                local.get $2
                i32.load
                local.get $5
                i32.const 255
                i32.and
                call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                local.tee $11
                i32.load16_u offset=8
                local.get $2
                i32.load
                local.get $5
                i32.const 255
                i32.and
                call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                local.tee $15
                i32.load16_u offset=12
                i32.const 5
                i32.div_u
                i32.add
                local.set $8
                local.get $8
                i32.const 65535
                i32.and
                local.get $2
                i32.load
                local.get $5
                i32.const 255
                i32.and
                call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                local.tee $14
                i32.load16_u offset=12
                i32.le_u
                if
                 local.get $2
                 i32.load
                 local.get $5
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $12
                 local.get $8
                 i32.store16 offset=8
                 local.get $12
                 call $~lib/rt/pure/__release
                else                 
                 local.get $2
                 i32.load
                 local.get $5
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $13
                 local.get $2
                 i32.load
                 local.get $5
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $12
                 i32.load16_u offset=12
                 i32.store16 offset=8
                 local.get $12
                 call $~lib/rt/pure/__release
                 local.get $13
                 call $~lib/rt/pure/__release
                end
                local.get $0
                local.get $5
                i32.const 12
                local.get $2
                i32.load
                local.get $5
                i32.const 255
                i32.and
                call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                local.tee $13
                i32.load16_u offset=8
                local.get $4
                i32.const 0
                local.get $9
                call $contract/battle/_createTwoRecords
                local.set $12
                local.get $10
                call $~lib/rt/pure/__release
                local.get $12
                local.set $10
                local.get $11
                call $~lib/rt/pure/__release
                local.get $15
                call $~lib/rt/pure/__release
                local.get $14
                call $~lib/rt/pure/__release
                local.get $13
                call $~lib/rt/pure/__release
               else                
                local.get $0
                i32.const 255
                i32.and
                local.get $4
                i32.const 0
                local.get $9
                call $contract/battle/_createOneRecord
                local.set $12
                local.get $10
                call $~lib/rt/pure/__release
                local.get $12
                local.set $10
               end
              end
             else              
              local.get $3
              i64.const 13
              i64.eq
              if
               local.get $2
               local.get $0
               local.get $4
               i32.const 0
               call $contract/battle/_attack
               local.set $9
               local.get $0
               i32.const 255
               i32.and
               i32.const 3
               i32.gt_u
               if
                local.get $0
                i32.const 1
                i32.sub
                global.get $contract/battle/UNIT_LIMIT
                i32.sub
                local.set $5
                local.get $2
                i32.load offset=4
                local.get $5
                i32.const 255
                i32.and
                call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                local.tee $12
                i32.load16_u offset=8
                i32.const 2
                i32.mul
                i32.const 65535
                i32.and
                local.get $2
                i32.load offset=4
                local.get $5
                i32.const 255
                i32.and
                call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                local.tee $13
                i32.load16_u offset=12
                i32.lt_u
                if
                 local.get $2
                 i32.load offset=4
                 local.get $5
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $14
                 i32.load16_u offset=8
                 local.get $2
                 i32.load offset=4
                 local.get $5
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $15
                 i32.load16_u offset=12
                 i32.const 5
                 i32.div_u
                 i32.add
                 local.set $7
                 local.get $7
                 i32.const 65535
                 i32.and
                 local.get $2
                 i32.load offset=4
                 local.get $5
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $11
                 i32.load16_u offset=12
                 i32.le_u
                 if
                  local.get $2
                  i32.load offset=4
                  local.get $5
                  i32.const 255
                  i32.and
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $16
                  local.get $7
                  i32.store16 offset=8
                  local.get $16
                  call $~lib/rt/pure/__release
                 else                  
                  local.get $2
                  i32.load offset=4
                  local.get $5
                  i32.const 255
                  i32.and
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $17
                  local.get $2
                  i32.load offset=4
                  local.get $5
                  i32.const 255
                  i32.and
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $16
                  i32.load16_u offset=12
                  i32.store16 offset=8
                  local.get $16
                  call $~lib/rt/pure/__release
                  local.get $17
                  call $~lib/rt/pure/__release
                 end
                 local.get $0
                 local.get $5
                 i32.const 13
                 local.get $2
                 i32.load offset=4
                 local.get $5
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $17
                 i32.load16_u offset=8
                 local.get $4
                 i32.const 0
                 local.get $9
                 call $contract/battle/_createTwoRecords
                 local.set $16
                 local.get $10
                 call $~lib/rt/pure/__release
                 local.get $16
                 local.set $10
                 local.get $14
                 call $~lib/rt/pure/__release
                 local.get $15
                 call $~lib/rt/pure/__release
                 local.get $11
                 call $~lib/rt/pure/__release
                 local.get $17
                 call $~lib/rt/pure/__release
                else                 
                 local.get $0
                 i32.const 255
                 i32.and
                 local.get $4
                 i32.const 0
                 local.get $9
                 call $contract/battle/_createOneRecord
                 local.set $16
                 local.get $10
                 call $~lib/rt/pure/__release
                 local.get $16
                 local.set $10
                end
                local.get $12
                call $~lib/rt/pure/__release
                local.get $13
                call $~lib/rt/pure/__release
               else                
                local.get $0
                i32.const 1
                i32.sub
                local.set $5
                local.get $2
                i32.load
                local.get $5
                i32.const 255
                i32.and
                call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                local.tee $13
                i32.load16_u offset=8
                i32.const 2
                i32.mul
                i32.const 65535
                i32.and
                local.get $2
                i32.load
                local.get $5
                i32.const 255
                i32.and
                call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                local.tee $12
                i32.load16_u offset=12
                i32.lt_u
                if
                 local.get $2
                 i32.load
                 local.get $5
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $16
                 i32.load16_u offset=8
                 local.get $2
                 i32.load
                 local.get $5
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $17
                 i32.load16_u offset=12
                 i32.const 5
                 i32.div_u
                 i32.add
                 local.set $7
                 local.get $7
                 i32.const 65535
                 i32.and
                 local.get $2
                 i32.load
                 local.get $5
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $11
                 i32.load16_u offset=12
                 i32.le_u
                 if
                  local.get $2
                  i32.load
                  local.get $5
                  i32.const 255
                  i32.and
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $15
                  local.get $7
                  i32.store16 offset=8
                  local.get $15
                  call $~lib/rt/pure/__release
                 else                  
                  local.get $2
                  i32.load
                  local.get $5
                  i32.const 255
                  i32.and
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $14
                  local.get $2
                  i32.load
                  local.get $5
                  i32.const 255
                  i32.and
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $15
                  i32.load16_u offset=12
                  i32.store16 offset=8
                  local.get $15
                  call $~lib/rt/pure/__release
                  local.get $14
                  call $~lib/rt/pure/__release
                 end
                 local.get $0
                 local.get $5
                 i32.const 13
                 local.get $2
                 i32.load
                 local.get $5
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $14
                 i32.load16_u offset=8
                 local.get $4
                 i32.const 0
                 local.get $9
                 call $contract/battle/_createTwoRecords
                 local.set $15
                 local.get $10
                 call $~lib/rt/pure/__release
                 local.get $15
                 local.set $10
                 local.get $16
                 call $~lib/rt/pure/__release
                 local.get $17
                 call $~lib/rt/pure/__release
                 local.get $11
                 call $~lib/rt/pure/__release
                 local.get $14
                 call $~lib/rt/pure/__release
                else                 
                 local.get $0
                 i32.const 255
                 i32.and
                 local.get $4
                 i32.const 0
                 local.get $9
                 call $contract/battle/_createOneRecord
                 local.set $15
                 local.get $10
                 call $~lib/rt/pure/__release
                 local.get $15
                 local.set $10
                end
                local.get $13
                call $~lib/rt/pure/__release
                local.get $12
                call $~lib/rt/pure/__release
               end
              else               
               local.get $3
               i64.const 14
               i64.eq
               if
                local.get $0
                i32.const 255
                i32.and
                i32.const 3
                i32.gt_u
                if
                 local.get $2
                 i32.load offset=4
                 local.get $0
                 i32.const 1
                 i32.sub
                 global.get $contract/battle/UNIT_LIMIT
                 i32.sub
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $12
                 i32.load16_u offset=26
                 local.set $7
                 local.get $12
                 call $~lib/rt/pure/__release
                else                 
                 local.get $2
                 i32.load
                 local.get $0
                 i32.const 1
                 i32.sub
                 i32.const 255
                 i32.and
                 call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                 local.tee $12
                 i32.load16_u offset=26
                 local.set $7
                 local.get $12
                 call $~lib/rt/pure/__release
                end
                local.get $7
                i32.const 3
                i32.eq
                if
                 local.get $0
                 i32.const 255
                 i32.and
                 i32.const 3
                 i32.gt_u
                 if
                  local.get $2
                  i32.load
                  i32.const 0
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $12
                  i32.const 1
                  i32.store16 offset=22
                  local.get $2
                  i32.load
                  i32.const 1
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $13
                  i32.const 1
                  i32.store16 offset=22
                  local.get $2
                  i32.load
                  i32.const 2
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $15
                  i32.const 1
                  i32.store16 offset=22
                  local.get $12
                  call $~lib/rt/pure/__release
                  local.get $13
                  call $~lib/rt/pure/__release
                  local.get $15
                  call $~lib/rt/pure/__release
                 else                  
                  local.get $2
                  i32.load offset=4
                  i32.const 0
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $15
                  i32.const 1
                  i32.store16 offset=22
                  local.get $2
                  i32.load offset=4
                  i32.const 1
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $13
                  i32.const 1
                  i32.store16 offset=22
                  local.get $2
                  i32.load offset=4
                  i32.const 2
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $12
                  i32.const 1
                  i32.store16 offset=22
                  local.get $15
                  call $~lib/rt/pure/__release
                  local.get $13
                  call $~lib/rt/pure/__release
                  local.get $12
                  call $~lib/rt/pure/__release
                 end
                 local.get $0
                 i32.const 255
                 i32.and
                 local.get $4
                 i32.const 14
                 i32.const 0
                 call $contract/battle/_createOneRecord
                 local.set $16
                 local.get $10
                 call $~lib/rt/pure/__release
                 local.get $16
                 local.set $10
                else                 
                 local.get $2
                 local.get $0
                 local.get $4
                 i32.const 0
                 call $contract/battle/_attack
                 local.set $9
                 local.get $0
                 i32.const 255
                 i32.and
                 local.get $4
                 i32.const 0
                 local.get $9
                 call $contract/battle/_createOneRecord
                 local.set $17
                 local.get $10
                 call $~lib/rt/pure/__release
                 local.get $17
                 local.set $10
                end
               else                
                local.get $3
                i64.const 15
                i64.eq
                if
                 local.get $0
                 i32.const 255
                 i32.and
                 i32.const 3
                 i32.gt_u
                 if
                  local.get $2
                  i32.load
                  local.get $4
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $17
                  i32.load16_u offset=8
                  local.set $7
                  local.get $2
                  local.get $0
                  local.get $4
                  i32.const 0
                  call $contract/battle/_attack
                  local.set $9
                  local.get $7
                  local.get $9
                  i32.sub
                  local.set $7
                  local.get $0
                  global.get $contract/battle/UNIT_LIMIT
                  i32.sub
                  i32.const 1
                  i32.sub
                  local.set $5
                  local.get $2
                  i32.load offset=4
                  local.get $5
                  i32.const 255
                  i32.and
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $16
                  i32.load16_u offset=8
                  local.get $7
                  i32.add
                  local.set $8
                  local.get $2
                  i32.load offset=4
                  local.get $5
                  i32.const 255
                  i32.and
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $12
                  i32.load16_u offset=8
                  local.get $2
                  i32.load offset=4
                  local.get $5
                  i32.const 255
                  i32.and
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $13
                  i32.load16_u offset=12
                  i32.lt_u
                  if
                   local.get $8
                   i32.const 65535
                   i32.and
                   local.get $2
                   i32.load offset=4
                   local.get $5
                   i32.const 255
                   i32.and
                   call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                   local.tee $15
                   i32.load16_u offset=12
                   i32.le_u
                   if
                    local.get $2
                    i32.load offset=4
                    local.get $5
                    i32.const 255
                    i32.and
                    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                    local.tee $14
                    local.get $8
                    i32.store16 offset=8
                    local.get $14
                    call $~lib/rt/pure/__release
                   else                    
                    local.get $2
                    i32.load offset=4
                    local.get $5
                    i32.const 255
                    i32.and
                    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                    local.tee $11
                    local.get $2
                    i32.load offset=4
                    local.get $5
                    i32.const 255
                    i32.and
                    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                    local.tee $14
                    i32.load16_u offset=12
                    i32.store16 offset=8
                    local.get $14
                    call $~lib/rt/pure/__release
                    local.get $11
                    call $~lib/rt/pure/__release
                   end
                   local.get $2
                   i32.load offset=4
                   local.get $5
                   i32.const 255
                   i32.and
                   call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                   local.tee $11
                   i32.load16_u offset=8
                   local.set $7
                   local.get $0
                   local.get $4
                   i32.const 0
                   local.get $9
                   local.get $5
                   i32.const 15
                   local.get $7
                   call $contract/battle/_createTwoRecords
                   local.set $14
                   local.get $10
                   call $~lib/rt/pure/__release
                   local.get $14
                   local.set $10
                   local.get $15
                   call $~lib/rt/pure/__release
                   local.get $11
                   call $~lib/rt/pure/__release
                  else                   
                   local.get $0
                   i32.const 255
                   i32.and
                   local.get $4
                   i32.const 0
                   local.get $9
                   call $contract/battle/_createOneRecord
                   local.set $14
                   local.get $10
                   call $~lib/rt/pure/__release
                   local.get $14
                   local.set $10
                  end
                  local.get $17
                  call $~lib/rt/pure/__release
                  local.get $16
                  call $~lib/rt/pure/__release
                  local.get $12
                  call $~lib/rt/pure/__release
                  local.get $13
                  call $~lib/rt/pure/__release
                 else                  
                  local.get $2
                  i32.load offset=4
                  local.get $4
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $13
                  i32.load16_u offset=8
                  local.set $7
                  local.get $2
                  local.get $0
                  local.get $4
                  i32.const 0
                  call $contract/battle/_attack
                  local.set $9
                  local.get $7
                  local.get $9
                  i32.sub
                  local.set $7
                  local.get $0
                  i32.const 1
                  i32.sub
                  local.set $5
                  local.get $2
                  i32.load
                  local.get $5
                  i32.const 255
                  i32.and
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $12
                  i32.load16_u offset=8
                  local.get $7
                  i32.add
                  local.set $8
                  local.get $2
                  i32.load
                  local.get $5
                  i32.const 255
                  i32.and
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $16
                  i32.load16_u offset=8
                  local.get $2
                  i32.load offset=4
                  local.get $5
                  i32.const 255
                  i32.and
                  call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                  local.tee $17
                  i32.load16_u offset=12
                  i32.lt_u
                  if
                   local.get $8
                   i32.const 65535
                   i32.and
                   local.get $2
                   i32.load offset=4
                   local.get $5
                   i32.const 255
                   i32.and
                   call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                   local.tee $14
                   i32.load16_u offset=12
                   i32.le_u
                   if
                    local.get $2
                    i32.load
                    local.get $5
                    i32.const 255
                    i32.and
                    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                    local.tee $11
                    local.get $8
                    i32.store16 offset=8
                    local.get $11
                    call $~lib/rt/pure/__release
                   else                    
                    local.get $2
                    i32.load
                    local.get $5
                    i32.const 255
                    i32.and
                    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                    local.tee $15
                    local.get $2
                    i32.load
                    local.get $5
                    i32.const 255
                    i32.and
                    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                    local.tee $11
                    i32.load16_u offset=12
                    i32.store16 offset=8
                    local.get $11
                    call $~lib/rt/pure/__release
                    local.get $15
                    call $~lib/rt/pure/__release
                   end
                   local.get $2
                   i32.load
                   local.get $5
                   i32.const 255
                   i32.and
                   call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                   local.tee $15
                   i32.load16_u offset=8
                   local.set $7
                   local.get $0
                   local.get $4
                   i32.const 0
                   local.get $9
                   local.get $5
                   i32.const 15
                   local.get $7
                   call $contract/battle/_createTwoRecords
                   local.set $11
                   local.get $10
                   call $~lib/rt/pure/__release
                   local.get $11
                   local.set $10
                   local.get $14
                   call $~lib/rt/pure/__release
                   local.get $15
                   call $~lib/rt/pure/__release
                  else                   
                   local.get $0
                   i32.const 255
                   i32.and
                   local.get $4
                   i32.const 0
                   local.get $9
                   call $contract/battle/_createOneRecord
                   local.set $11
                   local.get $10
                   call $~lib/rt/pure/__release
                   local.get $11
                   local.set $10
                  end
                  local.get $13
                  call $~lib/rt/pure/__release
                  local.get $12
                  call $~lib/rt/pure/__release
                  local.get $16
                  call $~lib/rt/pure/__release
                  local.get $17
                  call $~lib/rt/pure/__release
                 end
                else                 
                 local.get $3
                 i64.const 16
                 i64.eq
                 if
                  local.get $0
                  i32.const 255
                  i32.and
                  i32.const 3
                  i32.gt_u
                  if
                   local.get $2
                   i32.load offset=4
                   local.get $0
                   i32.const 1
                   i32.sub
                   global.get $contract/battle/UNIT_LIMIT
                   i32.sub
                   i32.const 255
                   i32.and
                   call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                   local.tee $17
                   i32.load16_u offset=26
                   local.set $7
                   local.get $17
                   call $~lib/rt/pure/__release
                  else                   
                   local.get $2
                   i32.load
                   local.get $0
                   i32.const 1
                   i32.sub
                   i32.const 255
                   i32.and
                   call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                   local.tee $17
                   i32.load16_u offset=26
                   local.set $7
                   local.get $17
                   call $~lib/rt/pure/__release
                  end
                  local.get $7
                  i32.const 3
                  i32.rem_u
                  i32.const 0
                  i32.eq
                  if
                   local.get $2
                   local.get $0
                   i32.const 0
                   call $contract/battle/_attackAll
                   local.set $17
                   local.get $0
                   local.get $4
                   i32.const 16
                   local.get $17
                   i32.const 0
                   call $~lib/array/Array<u16>#__get
                   local.get $17
                   i32.const 1
                   call $~lib/array/Array<u16>#__get
                   local.get $17
                   i32.const 2
                   call $~lib/array/Array<u16>#__get
                   call $contract/battle/_createLongRecord
                   local.set $14
                   local.get $10
                   call $~lib/rt/pure/__release
                   local.get $14
                   local.set $10
                   local.get $17
                   call $~lib/rt/pure/__release
                  else                   
                   local.get $2
                   local.get $0
                   local.get $4
                   i32.const 0
                   call $contract/battle/_attack
                   local.set $9
                   local.get $0
                   i32.const 255
                   i32.and
                   local.get $4
                   i32.const 0
                   local.get $9
                   call $contract/battle/_createOneRecord
                   local.set $15
                   local.get $10
                   call $~lib/rt/pure/__release
                   local.get $15
                   local.set $10
                  end
                 else                  
                  local.get $3
                  i64.const 17
                  i64.eq
                  if
                   local.get $2
                   local.get $0
                   local.get $4
                   i32.const 0
                   call $contract/battle/_attack
                   local.set $9
                   local.get $0
                   i32.const 255
                   i32.and
                   i32.const 3
                   i32.gt_u
                   if
                    local.get $2
                    i32.load offset=4
                    local.get $0
                    i32.const 1
                    i32.sub
                    global.get $contract/battle/UNIT_LIMIT
                    i32.sub
                    i32.const 255
                    i32.and
                    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                    local.tee $15
                    i32.load16_u offset=26
                    local.set $7
                    local.get $15
                    call $~lib/rt/pure/__release
                   else                    
                    local.get $2
                    i32.load
                    local.get $0
                    i32.const 1
                    i32.sub
                    i32.const 255
                    i32.and
                    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                    local.tee $15
                    i32.load16_u offset=26
                    local.set $7
                    local.get $15
                    call $~lib/rt/pure/__release
                   end
                   local.get $7
                   i32.const 3
                   i32.rem_u
                   i32.const 0
                   i32.eq
                   if
                    local.get $0
                    i32.const 255
                    i32.and
                    i32.const 3
                    i32.gt_u
                    if
                     local.get $2
                     i32.load
                     local.get $4
                     call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                     local.tee $15
                     i32.const 1
                     i32.store16 offset=22
                     local.get $15
                     call $~lib/rt/pure/__release
                    else                     
                     local.get $2
                     i32.load offset=4
                     local.get $4
                     call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
                     local.tee $15
                     i32.const 1
                     i32.store16 offset=22
                     local.get $15
                     call $~lib/rt/pure/__release
                    end
                    local.get $0
                    i32.const 255
                    i32.and
                    local.get $4
                    i32.const 17
                    local.get $9
                    call $contract/battle/_createOneRecord
                    local.set $11
                    local.get $10
                    call $~lib/rt/pure/__release
                    local.get $11
                    local.set $10
                   else                    
                    local.get $0
                    i32.const 255
                    i32.and
                    local.get $4
                    i32.const 0
                    local.get $9
                    call $contract/battle/_createOneRecord
                    local.set $13
                    local.get $10
                    call $~lib/rt/pure/__release
                    local.get $13
                    local.set $10
                   end
                  else                   
                   local.get $2
                   local.get $0
                   local.get $4
                   i32.const 0
                   call $contract/battle/_attack
                   local.set $9
                   local.get $0
                   i32.const 255
                   i32.and
                   local.get $4
                   i32.const 0
                   local.get $9
                   call $contract/battle/_createOneRecord
                   local.set $12
                   local.get $10
                   call $~lib/rt/pure/__release
                   local.get $12
                   local.set $10
                  end
                 end
                end
               end
              end
             end
            end
           end
          end
         end
        end
       end
      end
     end
    end
   end
  end
  local.get $10
  local.set $12
  local.get $2
  call $~lib/rt/pure/__release
  local.get $12
 )
 (func $contract/battle/processBattleResult (; 360 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 4928
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $contract/battle/_checkResult
  local.set $2
  local.get $2
  i32.load8_u
  if
   i32.const 0
   local.get $2
   i32.load8_u offset=1
   local.get $1
   call $contract/battle/BattleResult#constructor
   local.set $3
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  i32.const 4928
  local.tee $3
  local.get $1
  local.tee $4
  i32.ne
  if
   local.get $3
   call $~lib/rt/pure/__retain
   drop
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $3
  local.set $1
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    i32.const 1000
    i32.lt_u
    i32.eqz
    br_if $break|0
    block $continue|0
     i32.const 0
     local.set $5
     i32.const 0
     local.set $6
     block $break|1
      i32.const 0
      local.set $4
      loop $loop|1
       local.get $4
       i32.const 3
       i32.lt_u
       i32.eqz
       br_if $break|1
       local.get $0
       i32.load
       local.get $4
       i32.const 255
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $7
       i32.load16_u offset=8
       i32.const 0
       i32.gt_u
       if (result i32)
        local.get $0
        i32.load
        local.get $4
        i32.const 255
        i32.and
        call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
        local.tee $8
        i32.load16_u offset=10
        local.get $5
        i32.gt_u
        local.set $9
        local.get $8
        call $~lib/rt/pure/__release
        local.get $9
       else        
        i32.const 0
       end
       if
        local.get $0
        i32.load
        local.get $4
        i32.const 255
        i32.and
        call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
        local.tee $8
        i32.load16_u offset=10
        local.set $5
        local.get $4
        i32.const 1
        i32.add
        local.set $6
        local.get $8
        call $~lib/rt/pure/__release
       end
       local.get $0
       i32.load offset=4
       local.get $4
       i32.const 255
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $8
       i32.load16_u offset=8
       i32.const 0
       i32.gt_u
       if (result i32)
        local.get $0
        i32.load offset=4
        local.get $4
        i32.const 255
        i32.and
        call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
        local.tee $9
        i32.load16_u offset=10
        local.get $5
        i32.gt_u
        local.set $10
        local.get $9
        call $~lib/rt/pure/__release
        local.get $10
       else        
        i32.const 0
       end
       if
        local.get $0
        i32.load offset=4
        local.get $4
        i32.const 255
        i32.and
        call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
        local.tee $9
        i32.load16_u offset=10
        local.set $5
        local.get $4
        global.get $contract/battle/UNIT_LIMIT
        i32.add
        i32.const 1
        i32.add
        local.set $6
        local.get $9
        call $~lib/rt/pure/__release
       end
       local.get $4
       i32.const 1
       i32.add
       local.set $4
       local.get $7
       call $~lib/rt/pure/__release
       local.get $8
       call $~lib/rt/pure/__release
       br $loop|1
      end
      unreachable
     end
     local.get $5
     i32.const 100
     i32.lt_u
     if
      block $break|2
       i32.const 0
       local.set $4
       loop $loop|2
        local.get $4
        i32.const 3
        i32.lt_u
        i32.eqz
        br_if $break|2
        local.get $0
        i32.load
        local.get $4
        i32.const 255
        i32.and
        call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
        local.tee $8
        i32.load16_u offset=8
        i32.const 0
        i32.gt_u
        if
         local.get $0
         i32.load
         local.get $4
         i32.const 255
         i32.and
         call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
         local.tee $10
         local.get $0
         i32.load
         local.get $4
         i32.const 255
         i32.and
         call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
         local.tee $7
         i32.load16_u offset=10
         local.get $0
         i32.load
         local.get $4
         i32.const 255
         i32.and
         call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
         local.tee $9
         i32.load16_u offset=20
         i32.add
         i32.store16 offset=10
         local.get $7
         call $~lib/rt/pure/__release
         local.get $9
         call $~lib/rt/pure/__release
         local.get $10
         call $~lib/rt/pure/__release
        end
        local.get $0
        i32.load offset=4
        local.get $4
        i32.const 255
        i32.and
        call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
        local.tee $10
        i32.load16_u offset=8
        i32.const 0
        i32.gt_u
        if
         local.get $0
         i32.load offset=4
         local.get $4
         i32.const 255
         i32.and
         call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
         local.tee $11
         local.get $0
         i32.load offset=4
         local.get $4
         i32.const 255
         i32.and
         call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
         local.tee $9
         i32.load16_u offset=10
         local.get $0
         i32.load offset=4
         local.get $4
         i32.const 255
         i32.and
         call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
         local.tee $7
         i32.load16_u offset=20
         i32.add
         i32.store16 offset=10
         local.get $9
         call $~lib/rt/pure/__release
         local.get $7
         call $~lib/rt/pure/__release
         local.get $11
         call $~lib/rt/pure/__release
        end
        local.get $4
        i32.const 1
        i32.add
        local.set $4
        local.get $8
        call $~lib/rt/pure/__release
        local.get $10
        call $~lib/rt/pure/__release
        br $loop|2
       end
       unreachable
      end
     else      
      local.get $6
      i32.const 3
      i32.gt_u
      if
       local.get $6
       global.get $contract/battle/UNIT_LIMIT
       i32.sub
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       i32.load offset=4
       local.get $4
       i32.const 255
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $8
       local.get $0
       i32.load offset=4
       local.get $4
       i32.const 255
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $10
       i32.load16_u offset=10
       i32.const 100
       i32.sub
       i32.store16 offset=10
       local.get $0
       i32.load offset=4
       local.get $4
       i32.const 255
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $11
       i32.load16_u offset=22
       if
        local.get $0
        i32.load offset=4
        local.get $4
        i32.const 255
        i32.and
        call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
        local.tee $7
        i32.const 0
        i32.store16 offset=22
        local.get $7
        call $~lib/rt/pure/__release
        local.get $10
        call $~lib/rt/pure/__release
        local.get $8
        call $~lib/rt/pure/__release
        local.get $11
        call $~lib/rt/pure/__release
        br $continue|0
       end
       local.get $0
       i32.load offset=4
       local.get $4
       i32.const 255
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $9
       local.get $0
       i32.load offset=4
       local.get $4
       i32.const 255
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $7
       i32.load16_u offset=26
       i32.const 1
       i32.add
       i32.store16 offset=26
       local.get $10
       call $~lib/rt/pure/__release
       local.get $8
       call $~lib/rt/pure/__release
       local.get $11
       call $~lib/rt/pure/__release
       local.get $7
       call $~lib/rt/pure/__release
       local.get $9
       call $~lib/rt/pure/__release
      else       
       local.get $6
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       i32.load
       local.get $4
       i32.const 255
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $7
       local.get $0
       i32.load
       local.get $4
       i32.const 255
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $9
       i32.load16_u offset=10
       i32.const 100
       i32.sub
       i32.store16 offset=10
       local.get $0
       i32.load
       local.get $4
       i32.const 255
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $11
       i32.load16_u offset=22
       if
        local.get $0
        i32.load
        local.get $4
        i32.const 255
        i32.and
        call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
        local.tee $8
        i32.const 0
        i32.store16 offset=22
        local.get $8
        call $~lib/rt/pure/__release
        local.get $9
        call $~lib/rt/pure/__release
        local.get $7
        call $~lib/rt/pure/__release
        local.get $11
        call $~lib/rt/pure/__release
        br $continue|0
       end
       local.get $0
       i32.load
       local.get $4
       i32.const 255
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $10
       local.get $0
       i32.load
       local.get $4
       i32.const 255
       i32.and
       call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__get
       local.tee $8
       i32.load16_u offset=26
       i32.const 1
       i32.add
       i32.store16 offset=26
       local.get $9
       call $~lib/rt/pure/__release
       local.get $7
       call $~lib/rt/pure/__release
       local.get $11
       call $~lib/rt/pure/__release
       local.get $8
       call $~lib/rt/pure/__release
       local.get $10
       call $~lib/rt/pure/__release
      end
      local.get $1
      local.get $6
      local.get $3
      local.get $0
      call $contract/battle/_battleOneRound
      local.tee $10
      call $~lib/string/String.__concat
      local.tee $8
      local.tee $9
      local.get $1
      local.tee $11
      i32.ne
      if
       local.get $9
       call $~lib/rt/pure/__retain
       drop
       local.get $11
       call $~lib/rt/pure/__release
      end
      local.get $9
      local.set $1
      local.get $0
      call $contract/battle/_checkResult
      local.set $7
      local.get $2
      call $~lib/rt/pure/__release
      local.get $7
      local.set $2
      local.get $2
      i32.load8_u
      if
       i32.const 0
       local.get $2
       i32.load8_u offset=1
       local.get $1
       call $contract/battle/BattleResult#constructor
       local.set $7
       local.get $0
       call $~lib/rt/pure/__release
       local.get $1
       call $~lib/rt/pure/__release
       local.get $2
       call $~lib/rt/pure/__release
       local.get $8
       call $~lib/rt/pure/__release
       local.get $10
       call $~lib/rt/pure/__release
       local.get $7
       return
      end
      local.get $1
      call $~lib/string/String#get:length
      i32.const 118
      i32.ge_s
      if
       local.get $10
       call $~lib/rt/pure/__release
       local.get $8
       call $~lib/rt/pure/__release
       br $break|0
      end
      local.get $10
      call $~lib/rt/pure/__release
      local.get $8
      call $~lib/rt/pure/__release
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  i32.const 0
  local.get $2
  i32.load8_u offset=1
  local.get $1
  call $contract/battle/BattleResult#constructor
  local.set $6
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $6
 )
 (func $contract/game/Game#_maybeDrop (; 361 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  i32.const 4928
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.load offset=16
    call $~lib/array/Array<u64>#get:length
    i32.const 65535
    i32.and
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $1
    i32.load offset=16
    local.get $4
    i32.const 65535
    i32.and
    call $~lib/array/Array<u64>#__get
    local.set $5
    local.get $2
    local.get $4
    i32.add
    call $contract/helper/random
    i32.const 65535
    i32.and
    i32.const 1000
    i32.rem_u
    i32.const 1000
    i32.div_u
    local.set $6
    local.get $6
    local.get $1
    i32.load offset=20
    local.get $4
    i32.const 65535
    i32.and
    call $~lib/array/Array<u16>#__get
    i32.lt_u
    if
     local.get $3
     local.get $5
     i32.wrap_i64
     call $contract/helper/u16ToString
     local.tee $7
     call $~lib/string/String.__concat
     local.tee $8
     local.tee $9
     local.get $3
     local.tee $10
     i32.ne
     if
      local.get $9
      call $~lib/rt/pure/__retain
      drop
      local.get $10
      call $~lib/rt/pure/__release
     end
     local.get $9
     local.set $3
     local.get $7
     call $~lib/rt/pure/__release
     local.get $8
     call $~lib/rt/pure/__release
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $1
  i64.load offset=24
  local.get $2
  local.get $1
  i32.load offset=16
  call $~lib/array/Array<u64>#get:length
  i32.add
  call $contract/helper/random
  i32.const 65535
  i32.and
  i64.extend_i32_u
  local.get $1
  i64.load offset=32
  local.get $1
  i64.load offset=24
  i64.sub
  i64.rem_u
  i64.add
  local.set $5
  local.get $5
  i32.wrap_i64
  call $contract/helper/u16ToString
  local.tee $6
  local.get $3
  call $~lib/string/String.__concat
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $contract/game/Game#battleWithStage (; 362 ;) (type $FUNCSIG$iiijj) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/array/Array<u64>#get:length
  global.get $contract/game/UNIT_LIMIT
  i32.eq
  i32.const 6096
  call $~lib/env/ultrain_assert
  i32.const 0
  call $contract/data_in_db/User#constructor
  local.set $4
  local.get $0
  i32.load offset=36
  call $~lib/ultrain-ts-lib/src/action/Action.sender.get:sender
  local.get $4
  call $~lib/dbmanager/DBManager<contract/data_in_db/User>#get
  local.set $5
  local.get $5
  i32.const 6136
  call $~lib/env/ultrain_assert
  i32.const 0
  call $contract/data_in_memory/BattleStatus#constructor
  local.set $6
  block $break|0
   i32.const 0
   local.set $7
   loop $loop|0
    local.get $7
    local.get $1
    call $~lib/array/Array<u64>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 0
    call $contract/data_in_memory/UnitStatus#constructor
    local.set $8
    local.get $1
    local.get $7
    call $~lib/array/Array<u64>#__get
    i64.const 0
    i64.ne
    if
     i32.const 0
     call $contract/data_in_db/Unit#constructor
     local.set $9
     local.get $0
     i32.load offset=12
     local.get $1
     local.get $7
     call $~lib/array/Array<u64>#__get
     local.get $9
     call $~lib/dbmanager/DBManager<contract/data_in_db/Unit>#get
     local.set $10
     local.get $10
     i32.const 6176
     call $~lib/env/ultrain_assert
     local.get $4
     i32.load offset=24
     local.get $1
     local.get $7
     call $~lib/array/Array<u64>#__get
     i32.const 0
     call $~lib/array/Array<u64>#indexOf
     local.set $11
     local.get $11
     i32.const 0
     i32.ge_s
     i32.const 5768
     call $~lib/env/ultrain_assert
     local.get $4
     i32.load offset=28
     local.get $11
     call $~lib/array/Array<u64>#__get
     local.set $12
     i32.const 0
     call $contract/data_in_db/UnitInfo#constructor
     local.set $13
     local.get $0
     i32.load offset=24
     local.get $12
     local.get $13
     call $~lib/dbmanager/DBManager<contract/data_in_db/UnitInfo>#get
     local.set $14
     local.get $14
     i32.const 5808
     call $~lib/env/ultrain_assert
     i32.const 0
     i32.const 2
     i32.const 52
     i32.const 6216
     call $~lib/rt/__allocArray
     call $~lib/rt/pure/__retain
     local.tee $16
     call $~lib/rt/pure/__retain
     local.set $15
     i32.const 0
     i32.const 2
     i32.const 53
     i32.const 6232
     call $~lib/rt/__allocArray
     call $~lib/rt/pure/__retain
     local.tee $18
     call $~lib/rt/pure/__retain
     local.set $17
     block $break|1
      i32.const 0
      local.set $19
      loop $loop|1
       local.get $19
       local.get $13
       i32.load offset=20
       call $~lib/array/Array<u8>#get:length
       i32.lt_s
       i32.eqz
       br_if $break|1
       i32.const 0
       call $contract/data_in_db/ItemInfo#constructor
       local.set $20
       local.get $0
       i32.load offset=28
       local.get $13
       i32.load offset=20
       local.get $19
       call $~lib/array/Array<u8>#__get
       i64.extend_i32_u
       local.get $20
       call $~lib/dbmanager/DBManager<contract/data_in_db/ItemInfo>#get
       local.set $21
       local.get $21
       i32.const 5960
       call $~lib/env/ultrain_assert
       i32.const 0
       call $contract/data_in_db/Item#constructor
       local.set $22
       local.get $0
       i32.load offset=16
       local.get $20
       i64.load offset=8
       local.get $22
       call $~lib/dbmanager/DBManager<contract/data_in_db/Item>#get
       local.set $23
       local.get $23
       i32.const 6008
       call $~lib/env/ultrain_assert
       local.get $15
       local.get $22
       call $~lib/array/Array<contract/data_in_db/Item>#push
       drop
       local.get $17
       local.get $20
       call $~lib/array/Array<contract/data_in_db/ItemInfo>#push
       drop
       local.get $19
       i32.const 1
       i32.add
       local.set $19
       local.get $20
       call $~lib/rt/pure/__release
       local.get $22
       call $~lib/rt/pure/__release
       br $loop|1
      end
      unreachable
     end
     local.get $8
     local.get $9
     local.get $13
     local.get $15
     local.get $17
     call $contract/data_in_memory/UnitStatus#fromPlayer
     local.get $9
     call $~lib/rt/pure/__release
     local.get $13
     call $~lib/rt/pure/__release
     local.get $16
     call $~lib/rt/pure/__release
     local.get $15
     call $~lib/rt/pure/__release
     local.get $18
     call $~lib/rt/pure/__release
     local.get $17
     call $~lib/rt/pure/__release
    end
    local.get $6
    i32.load
    local.get $8
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#push
    drop
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    local.get $8
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  i32.const 0
  i32.const 4576
  call $~lib/ultrain-ts-lib/src/account/NAME
  local.get $2
  call $~lib/dbmanager/DBManager<contract/data_in_db/StageBattle>#constructor
  local.set $8
  i32.const 0
  call $contract/data_in_db/StageBattle#constructor
  local.set $17
  local.get $8
  local.get $3
  local.get $17
  call $~lib/dbmanager/DBManager<contract/data_in_db/StageBattle>#get
  local.set $18
  local.get $18
  i32.const 6288
  call $~lib/env/ultrain_assert
  local.get $17
  i32.load offset=8
  call $~lib/array/Array<u64>#get:length
  global.get $contract/game/UNIT_LIMIT
  i32.eq
  i32.const 6344
  call $~lib/env/ultrain_assert
  local.get $17
  i32.load offset=12
  call $~lib/array/Array<u8>#get:length
  global.get $contract/game/UNIT_LIMIT
  i32.eq
  i32.const 6344
  call $~lib/env/ultrain_assert
  block $break|2
   i32.const 0
   local.set $7
   loop $loop|2
    local.get $7
    local.get $17
    i32.load offset=8
    call $~lib/array/Array<u64>#get:length
    i32.lt_s
    i32.eqz
    br_if $break|2
    i32.const 0
    call $contract/data_in_memory/UnitStatus#constructor
    local.set $15
    local.get $17
    i32.load offset=8
    local.get $7
    call $~lib/array/Array<u64>#__get
    i64.const 0
    i64.ne
    if
     i32.const 0
     call $contract/data_in_db/Unit#constructor
     local.set $16
     local.get $0
     i32.load offset=12
     local.get $17
     i32.load offset=8
     local.get $7
     call $~lib/array/Array<u64>#__get
     local.get $16
     call $~lib/dbmanager/DBManager<contract/data_in_db/Unit>#get
     local.set $14
     local.get $14
     i32.const 6176
     call $~lib/env/ultrain_assert
     local.get $15
     local.get $16
     local.get $17
     i32.load offset=12
     local.get $7
     call $~lib/array/Array<u8>#__get
     call $contract/data_in_memory/UnitStatus#fromNPC
     local.get $16
     call $~lib/rt/pure/__release
    end
    local.get $6
    i32.load offset=4
    local.get $15
    call $~lib/array/Array<contract/data_in_memory/UnitStatus>#push
    drop
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    local.get $15
    call $~lib/rt/pure/__release
    br $loop|2
   end
   unreachable
  end
  local.get $6
  call $contract/battle/processBattleResult
  local.set $15
  local.get $15
  i32.load8_u
  if
   i32.const 1568
   local.get $15
   i32.load offset=4
   call $~lib/string/String.__concat
   local.tee $14
   local.get $0
   local.get $17
   local.get $2
   i64.const 256
   i64.mul
   local.get $3
   i64.add
   local.get $4
   i64.load
   i64.add
   i32.wrap_i64
   call $contract/game/Game#_maybeDrop
   local.tee $16
   call $~lib/string/String.__concat
   local.tee $13
   call $~lib/rt/pure/__retain
   local.set $11
   local.get $14
   call $~lib/rt/pure/__release
   local.get $16
   call $~lib/rt/pure/__release
   local.get $13
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $15
   call $~lib/rt/pure/__release
   local.get $17
   call $~lib/rt/pure/__release
   local.get $11
   return
  else   
   i32.const 1328
   local.get $15
   i32.load offset=4
   call $~lib/string/String.__concat
   local.tee $13
   call $~lib/rt/pure/__retain
   local.set $16
   local.get $13
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $15
   call $~lib/rt/pure/__release
   local.get $17
   call $~lib/rt/pure/__release
   local.get $16
   return
  end
  unreachable
 )
 (func $~lib/ultrain-ts-lib/src/contract/Contract#onError (; 363 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/ultrain-ts-lib/src/contract/Contract#onStop (; 364 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $contract/game/apply (; 365 ;) (type $FUNCSIG$vjjjj) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  i32.const 0
  local.get $0
  call $contract/game/Game#constructor
  local.set $4
  local.get $4
  local.get $2
  local.get $3
  call $~lib/ultrain-ts-lib/src/contract/Contract#setActionName
  local.get $4
  local.get $1
  call $~lib/ultrain-ts-lib/src/contract/Contract#filterAction
  if
   local.get $4
   call $~lib/ultrain-ts-lib/src/contract/Contract#onInit
   local.get $4
   call $~lib/ultrain-ts-lib/src/contract/Contract#getDataStream
   local.set $5
   local.get $4
   i32.const 4248
   call $~lib/ultrain-ts-lib/src/contract/Contract#isAction
   if
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $6
    local.get $5
    call $~lib/datastream/DataStream#read<u16>
    local.set $7
    local.get $5
    call $~lib/datastream/DataStream#read<u16>
    local.set $8
    local.get $5
    call $~lib/datastream/DataStream#read<u16>
    local.set $9
    local.get $5
    call $~lib/datastream/DataStream#read<u16>
    local.set $10
    local.get $5
    call $~lib/datastream/DataStream#read<u16>
    local.set $11
    local.get $5
    call $~lib/datastream/DataStream#read<u16>
    local.set $12
    local.get $5
    call $~lib/datastream/DataStream#read<u16>
    local.set $13
    local.get $5
    call $~lib/datastream/DataStream#read<u16>
    local.set $14
    local.get $5
    call $~lib/datastream/DataStream#read<u16>
    local.set $15
    local.get $5
    call $~lib/datastream/DataStream#read<u16>
    local.set $16
    local.get $5
    call $~lib/datastream/DataStream#read<u16>
    local.set $17
    local.get $5
    call $~lib/datastream/DataStream#read<u16>
    local.set $18
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $19
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $20
    local.get $4
    local.get $6
    local.get $7
    local.get $8
    local.get $9
    local.get $10
    local.get $11
    local.get $12
    local.get $13
    local.get $14
    local.get $15
    local.get $16
    local.get $17
    local.get $18
    local.get $19
    local.get $20
    call $contract/game/Game#addUnit
   end
   local.get $4
   i32.const 4392
   call $~lib/ultrain-ts-lib/src/contract/Contract#isAction
   if
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $20
    local.get $5
    call $~lib/datastream/DataStream#read<u16>
    local.set $18
    local.get $5
    call $~lib/datastream/DataStream#read<u16>
    local.set $17
    local.get $5
    call $~lib/datastream/DataStream#read<u16>
    local.set $16
    local.get $5
    call $~lib/datastream/DataStream#read<u16>
    local.set $15
    local.get $5
    call $~lib/datastream/DataStream#read<u16>
    local.set $14
    local.get $5
    call $~lib/datastream/DataStream#read<u16>
    local.set $13
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $19
    local.get $4
    local.get $20
    local.get $18
    local.get $17
    local.get $16
    local.get $15
    local.get $14
    local.get $13
    local.get $19
    call $contract/game/Game#addItem
   end
   local.get $4
   i32.const 4480
   call $~lib/ultrain-ts-lib/src/contract/Contract#isAction
   if
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $19
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $20
    local.get $5
    call $~lib/datastream/DataStream#readVector<u64>
    local.set $13
    local.get $5
    call $~lib/datastream/DataStream#readVector<u8>
    local.set $14
    local.get $5
    call $~lib/datastream/DataStream#readVector<u64>
    local.set $15
    local.get $5
    call $~lib/datastream/DataStream#readVector<u16>
    local.set $16
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $6
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $21
    local.get $4
    local.get $19
    local.get $20
    local.get $13
    local.get $14
    local.get $15
    local.get $16
    local.get $6
    local.get $21
    call $contract/game/Game#setBattleInStage
    local.get $13
    call $~lib/rt/pure/__release
    local.get $14
    call $~lib/rt/pure/__release
    local.get $15
    call $~lib/rt/pure/__release
    local.get $16
    call $~lib/rt/pure/__release
   end
   local.get $4
   i32.const 4864
   call $~lib/ultrain-ts-lib/src/contract/Contract#isAction
   if
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $21
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $6
    local.get $5
    call $~lib/datastream/DataStream#read<u8>
    local.set $16
    local.get $4
    local.get $21
    local.get $6
    local.get $16
    call $contract/game/Game#setStage
   end
   local.get $4
   i32.const 4896
   call $~lib/ultrain-ts-lib/src/contract/Contract#isAction
   if
    local.get $4
    call $contract/game/Game#start
   end
   local.get $4
   i32.const 5064
   call $~lib/ultrain-ts-lib/src/contract/Contract#isAction
   if
    local.get $4
    call $contract/game/Game#isStarted
    local.set $16
    local.get $4
    local.get $16
    call $~lib/ultrain-ts-lib/src/contract/Contract#returnVal<bool>
   end
   local.get $4
   i32.const 5104
   call $~lib/ultrain-ts-lib/src/contract/Contract#isAction
   if
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $6
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $21
    local.get $4
    local.get $6
    local.get $21
    call $contract/game/Game#canPlay
    local.set $16
    local.get $4
    local.get $16
    call $~lib/ultrain-ts-lib/src/contract/Contract#returnVal<bool>
   end
   local.get $4
   i32.const 5176
   call $~lib/ultrain-ts-lib/src/contract/Contract#isAction
   if
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $21
    local.get $4
    local.get $21
    call $contract/game/Game#getProgress
    local.set $6
    local.get $4
    local.get $6
    call $~lib/ultrain-ts-lib/src/contract/Contract#returnVal<u64>
   end
   local.get $4
   i32.const 5216
   call $~lib/ultrain-ts-lib/src/contract/Contract#isAction
   if
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $6
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $21
    local.get $4
    local.get $6
    local.get $21
    call $contract/game/Game#finishStageBattle
   end
   local.get $4
   i32.const 5272
   call $~lib/ultrain-ts-lib/src/contract/Contract#isAction
   if
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $21
    i32.const 0
    i64.const 0
    i64.const 357577479428
    call $~lib/ultrain-ts-lib/src/asset/Asset#constructor
    local.set $16
    local.get $16
    local.get $5
    call $~lib/ultrain-ts-lib/src/asset/Asset#deserialize
    local.get $4
    local.get $21
    local.get $16
    call $contract/game/Game#buyFromPlatform
    local.get $16
    call $~lib/rt/pure/__release
   end
   local.get $4
   i32.const 5624
   call $~lib/ultrain-ts-lib/src/contract/Contract#isAction
   if
    local.get $4
    call $contract/game/Game#getMyUnitIdArray
    local.set $16
    local.get $4
    local.get $16
    call $~lib/ultrain-ts-lib/src/contract/Contract#returnVal<~lib/string/String>
    local.get $16
    call $~lib/rt/pure/__release
   end
   local.get $4
   i32.const 5720
   call $~lib/ultrain-ts-lib/src/contract/Contract#isAction
   if
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $21
    local.get $4
    local.get $21
    call $contract/game/Game#getMyUnitById
    local.set $16
    local.get $4
    local.get $16
    call $~lib/ultrain-ts-lib/src/contract/Contract#returnVal<~lib/string/String>
    local.get $16
    call $~lib/rt/pure/__release
   end
   local.get $4
   i32.const 5856
   call $~lib/ultrain-ts-lib/src/contract/Contract#isAction
   if
    local.get $4
    call $contract/game/Game#getMyItemRIdArray
    local.set $16
    local.get $4
    local.get $16
    call $~lib/ultrain-ts-lib/src/contract/Contract#returnVal<~lib/string/String>
    local.get $16
    call $~lib/rt/pure/__release
   end
   local.get $4
   i32.const 5912
   call $~lib/ultrain-ts-lib/src/contract/Contract#isAction
   if
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $21
    local.get $4
    local.get $21
    call $contract/game/Game#getMyItemByRId
    local.set $16
    local.get $4
    local.get $16
    call $~lib/ultrain-ts-lib/src/contract/Contract#returnVal<~lib/string/String>
    local.get $16
    call $~lib/rt/pure/__release
   end
   local.get $4
   i32.const 6048
   call $~lib/ultrain-ts-lib/src/contract/Contract#isAction
   if
    local.get $5
    call $~lib/datastream/DataStream#readVector<u64>
    local.set $16
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $21
    local.get $5
    call $~lib/datastream/DataStream#read<u64>
    local.set $6
    local.get $4
    local.get $16
    local.get $21
    local.get $6
    call $contract/game/Game#battleWithStage
    local.set $15
    local.get $4
    local.get $15
    call $~lib/ultrain-ts-lib/src/contract/Contract#returnVal<~lib/string/String>
    local.get $16
    call $~lib/rt/pure/__release
    local.get $15
    call $~lib/rt/pure/__release
   end
   local.get $4
   i32.const 4216
   call $~lib/ultrain-ts-lib/src/contract/Contract#isAction
   if
    local.get $4
    call $~lib/ultrain-ts-lib/src/contract/Contract#onError
   end
   local.get $4
   call $~lib/ultrain-ts-lib/src/contract/Contract#onStop
   local.get $5
   call $~lib/rt/pure/__release
  end
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $start (; 366 ;) (type $FUNCSIG$v)
  call $start:contract/game
 )
 (func $~lib/rt/pure/__visit (; 367 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $2
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        block $case0|0
         local.get $1
         local.set $3
         local.get $3
         i32.const 1
         i32.eq
         br_if $case0|0
         local.get $3
         i32.const 2
         i32.eq
         br_if $case1|0
         local.get $3
         i32.const 3
         i32.eq
         br_if $case2|0
         local.get $3
         i32.const 4
         i32.eq
         br_if $case3|0
         local.get $3
         i32.const 5
         i32.eq
         br_if $case4|0
         br $case5|0
        end
        local.get $2
        call $~lib/rt/pure/decrement
        br $break|0
       end
       local.get $2
       i32.load offset=4
       i32.const 268435455
       i32.and
       i32.const 0
       i32.gt_u
       i32.eqz
       if
        call $~lib/builtins/abort
        unreachable
       end
       local.get $2
       local.get $2
       i32.load offset=4
       i32.const 1
       i32.sub
       i32.store offset=4
       local.get $2
       call $~lib/rt/pure/markGray
       br $break|0
      end
      local.get $2
      call $~lib/rt/pure/scan
      br $break|0
     end
     local.get $2
     i32.load offset=4
     local.set $3
     local.get $3
     i32.const 268435455
     i32.const -1
     i32.xor
     i32.and
     local.get $3
     i32.const 1
     i32.add
     i32.const 268435455
     i32.const -1
     i32.xor
     i32.and
     i32.eq
     i32.eqz
     if
      call $~lib/builtins/abort
      unreachable
     end
     local.get $2
     local.get $3
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $3
     i32.const 1879048192
     i32.and
     i32.const 0
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/scanBlack
     end
     br $break|0
    end
    local.get $2
    call $~lib/rt/pure/collectWhite
    br $break|0
   end
   i32.const 0
   i32.eqz
   if
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $~lib/array/Array<~lib/string/String>#__visit_impl (; 368 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<u64>#__visit_impl (; 369 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<u8>#__visit_impl (; 370 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__visit_impl (; 371 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/array/Array<u64>>#__visit_impl (; 372 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#__visit_impl (; 373 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<i32>#__visit_impl (; 374 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<u16>#__visit_impl (; 375 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<contract/data_in_db/Duel>#__visit_impl (; 376 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/ultrain-ts-lib/src/permission-level/PermissionLevel>#__visit_impl (; 377 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<contract/data_in_memory/UnitStatus>#__visit_impl (; 378 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<contract/data_in_db/Item>#__visit_impl (; 379 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<contract/data_in_db/ItemInfo>#__visit_impl (; 380 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<i16>#__visit_impl (; 381 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<u32>#__visit_impl (; 382 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/rt/__visit_members (; 383 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $block$20$break
   block $block$4$break
    block $switch$1$default
     block $switch$1$case$59
      block $switch$1$case$58
       block $switch$1$case$56
        block $switch$1$case$55
         block $switch$1$case$54
          block $switch$1$case$53
           block $switch$1$case$49
            block $switch$1$case$48
             block $switch$1$case$42
              block $switch$1$case$38
               block $switch$1$case$37
                block $switch$1$case$36
                 block $switch$1$case$35
                  block $switch$1$case$29
                   block $switch$1$case$22
                    block $switch$1$case$20
                     block $switch$1$case$19
                      block $switch$1$case$18
                       block $switch$1$case$16
                        block $switch$1$case$14
                         block $switch$1$case$12
                          block $switch$1$case$10
                           block $switch$1$case$8
                            block $switch$1$case$7
                             block $switch$1$case$6
                              block $switch$1$case$4
                               block $switch$1$case$2
                                local.get $0
                                i32.const 8
                                i32.sub
                                i32.load
                                br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$2 $switch$1$case$6 $switch$1$case$7 $switch$1$case$8 $switch$1$case$8 $switch$1$case$10 $switch$1$case$8 $switch$1$case$12 $switch$1$case$8 $switch$1$case$14 $switch$1$case$8 $switch$1$case$16 $switch$1$case$8 $switch$1$case$18 $switch$1$case$19 $switch$1$case$20 $switch$1$case$2 $switch$1$case$22 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$29 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$35 $switch$1$case$36 $switch$1$case$37 $switch$1$case$38 $switch$1$case$2 $switch$1$case$4 $switch$1$case$4 $switch$1$case$42 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$20 $switch$1$case$48 $switch$1$case$49 $switch$1$case$37 $switch$1$case$8 $switch$1$case$2 $switch$1$case$53 $switch$1$case$54 $switch$1$case$55 $switch$1$case$56 $switch$1$case$2 $switch$1$case$58 $switch$1$case$59 $switch$1$default
                               end
                               return
                              end
                              br $block$4$break
                             end
                             local.get $0
                             local.get $1
                             call $~lib/array/Array<~lib/string/String>#__visit_impl
                             br $block$4$break
                            end
                            local.get $0
                            i32.load
                            local.tee $2
                            if
                             local.get $2
                             local.get $1
                             call $~lib/rt/pure/__visit
                            end
                            local.get $0
                            i32.load offset=4
                            local.tee $2
                            if
                             local.get $2
                             local.get $1
                             call $~lib/rt/pure/__visit
                            end
                            local.get $0
                            i32.load offset=8
                            local.tee $2
                            if
                             local.get $2
                             local.get $1
                             call $~lib/rt/pure/__visit
                            end
                            local.get $0
                            i32.load offset=12
                            local.tee $2
                            if
                             local.get $2
                             local.get $1
                             call $~lib/rt/pure/__visit
                            end
                            local.get $0
                            i32.load offset=16
                            local.tee $2
                            if
                             local.get $2
                             local.get $1
                             call $~lib/rt/pure/__visit
                            end
                            local.get $0
                            i32.load offset=20
                            local.tee $2
                            if
                             local.get $2
                             local.get $1
                             call $~lib/rt/pure/__visit
                            end
                            return
                           end
                           local.get $0
                           i32.load
                           local.tee $2
                           if
                            local.get $2
                            local.get $1
                            call $~lib/rt/pure/__visit
                           end
                           local.get $0
                           i32.load offset=4
                           local.tee $2
                           if
                            local.get $2
                            local.get $1
                            call $~lib/rt/pure/__visit
                           end
                           return
                          end
                          local.get $0
                          local.get $1
                          call $~lib/array/Array<u64>#__visit_impl
                          br $block$4$break
                         end
                         local.get $0
                         local.get $1
                         call $~lib/array/Array<u8>#__visit_impl
                         br $block$4$break
                        end
                        local.get $0
                        local.get $1
                        call $~lib/array/Array<~lib/array/Array<~lib/string/String>>#__visit_impl
                        br $block$4$break
                       end
                       local.get $0
                       local.get $1
                       call $~lib/array/Array<~lib/array/Array<u64>>#__visit_impl
                       br $block$4$break
                      end
                      local.get $0
                      local.get $1
                      call $~lib/array/Array<~lib/array/Array<u8>>#__visit_impl
                      br $block$4$break
                     end
                     local.get $0
                     local.get $1
                     call $~lib/array/Array<i32>#__visit_impl
                     br $block$4$break
                    end
                    br $block$20$break
                   end
                   local.get $0
                   i32.load offset=12
                   local.tee $2
                   if
                    local.get $2
                    local.get $1
                    call $~lib/rt/pure/__visit
                   end
                   local.get $0
                   i32.load offset=16
                   local.tee $2
                   if
                    local.get $2
                    local.get $1
                    call $~lib/rt/pure/__visit
                   end
                   local.get $0
                   i32.load offset=20
                   local.tee $2
                   if
                    local.get $2
                    local.get $1
                    call $~lib/rt/pure/__visit
                   end
                   local.get $0
                   i32.load offset=24
                   local.tee $2
                   if
                    local.get $2
                    local.get $1
                    call $~lib/rt/pure/__visit
                   end
                   local.get $0
                   i32.load offset=28
                   local.tee $2
                   if
                    local.get $2
                    local.get $1
                    call $~lib/rt/pure/__visit
                   end
                   local.get $0
                   i32.load offset=32
                   local.tee $2
                   if
                    local.get $2
                    local.get $1
                    call $~lib/rt/pure/__visit
                   end
                   local.get $0
                   i32.load offset=36
                   local.tee $2
                   if
                    local.get $2
                    local.get $1
                    call $~lib/rt/pure/__visit
                   end
                   br $block$20$break
                  end
                  local.get $0
                  i32.load offset=20
                  local.tee $2
                  if
                   local.get $2
                   local.get $1
                   call $~lib/rt/pure/__visit
                  end
                  return
                 end
                 local.get $0
                 i32.load offset=8
                 local.tee $2
                 if
                  local.get $2
                  local.get $1
                  call $~lib/rt/pure/__visit
                 end
                 local.get $0
                 i32.load offset=24
                 local.tee $2
                 if
                  local.get $2
                  local.get $1
                  call $~lib/rt/pure/__visit
                 end
                 local.get $0
                 i32.load offset=28
                 local.tee $2
                 if
                  local.get $2
                  local.get $1
                  call $~lib/rt/pure/__visit
                 end
                 local.get $0
                 i32.load offset=32
                 local.tee $2
                 if
                  local.get $2
                  local.get $1
                  call $~lib/rt/pure/__visit
                 end
                 local.get $0
                 i32.load offset=36
                 local.tee $2
                 if
                  local.get $2
                  local.get $1
                  call $~lib/rt/pure/__visit
                 end
                 local.get $0
                 i32.load offset=40
                 local.tee $2
                 if
                  local.get $2
                  local.get $1
                  call $~lib/rt/pure/__visit
                 end
                 return
                end
                local.get $0
                local.get $1
                call $~lib/array/Array<u16>#__visit_impl
                br $block$4$break
               end
               local.get $0
               i32.load offset=8
               local.tee $2
               if
                local.get $2
                local.get $1
                call $~lib/rt/pure/__visit
               end
               local.get $0
               i32.load offset=12
               local.tee $2
               if
                local.get $2
                local.get $1
                call $~lib/rt/pure/__visit
               end
               local.get $0
               i32.load offset=16
               local.tee $2
               if
                local.get $2
                local.get $1
                call $~lib/rt/pure/__visit
               end
               return
              end
              local.get $0
              local.get $1
              call $~lib/array/Array<contract/data_in_db/Duel>#__visit_impl
              br $block$4$break
             end
             local.get $0
             i32.load offset=8
             local.tee $2
             if
              local.get $2
              local.get $1
              call $~lib/rt/pure/__visit
             end
             local.get $0
             i32.load offset=12
             local.tee $2
             if
              local.get $2
              local.get $1
              call $~lib/rt/pure/__visit
             end
             local.get $0
             i32.load offset=16
             local.tee $2
             if
              local.get $2
              local.get $1
              call $~lib/rt/pure/__visit
             end
             local.get $0
             i32.load offset=20
             local.tee $2
             if
              local.get $2
              local.get $1
              call $~lib/rt/pure/__visit
             end
             return
            end
            local.get $0
            i32.load offset=16
            local.tee $2
            if
             local.get $2
             local.get $1
             call $~lib/rt/pure/__visit
            end
            local.get $0
            i32.load offset=20
            local.tee $2
            if
             local.get $2
             local.get $1
             call $~lib/rt/pure/__visit
            end
            return
           end
           local.get $0
           local.get $1
           call $~lib/array/Array<~lib/ultrain-ts-lib/src/permission-level/PermissionLevel>#__visit_impl
           br $block$4$break
          end
          local.get $0
          local.get $1
          call $~lib/array/Array<contract/data_in_memory/UnitStatus>#__visit_impl
          br $block$4$break
         end
         local.get $0
         local.get $1
         call $~lib/array/Array<contract/data_in_db/Item>#__visit_impl
         br $block$4$break
        end
        local.get $0
        local.get $1
        call $~lib/array/Array<contract/data_in_db/ItemInfo>#__visit_impl
        br $block$4$break
       end
       local.get $0
       i32.load offset=4
       local.tee $2
       if
        local.get $2
        local.get $1
        call $~lib/rt/pure/__visit
       end
       return
      end
      local.get $0
      local.get $1
      call $~lib/array/Array<i16>#__visit_impl
      br $block$4$break
     end
     local.get $0
     local.get $1
     call $~lib/array/Array<u32>#__visit_impl
     br $block$4$break
    end
    unreachable
   end
   local.get $0
   i32.load
   local.tee $2
   if
    local.get $2
    local.get $1
    call $~lib/rt/pure/__visit
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/pure/__visit
  end
  return
 )
 (func $null (; 384 ;) (type $FUNCSIG$v)
 )
)
