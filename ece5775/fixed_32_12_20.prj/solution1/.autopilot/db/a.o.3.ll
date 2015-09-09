; ModuleID = '/home/student/gsf52/ece5775/fixed_32_12_20.prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@str = internal constant [7 x i8] c"cordic\00"    ; [#uses=1 type=[7 x i8]*]
@angles_V = internal unnamed_addr constant [20 x i20] [i20 -225027, i20 486169, i20 256878, i20 130395, i20 65450, i20 32757, i20 16382, i20 8191, i20 4095, i20 2047, i20 1023, i20 511, i20 255, i20 127, i20 63, i20 31, i20 15, i20 7, i20 4, i20 1] ; [#uses=1 type=[20 x i20]*]

; [#uses=0]
define void @cordic(i32 %theta_V, i32* %s_V, i32* %c_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %theta_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %s_V), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %c_V), !map !17
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @str) nounwind
  %theta_V_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %theta_V) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32* %s_V}, i64 0, metadata !21), !dbg !990 ; [debug line = 18:45] [debug variable = s.V]
  call void @llvm.dbg.value(metadata !{i32* %c_V}, i64 0, metadata !991), !dbg !993 ; [debug line = 18:62] [debug variable = c.V]
  br label %0, !dbg !994                          ; [debug line = 47:8]

; <label>:0                                       ; preds = %_ifconv, %codeRepl
  %p_Val2_4 = phi i32 [ 0, %codeRepl ], [ %current_V, %_ifconv ] ; [#uses=3 type=i32]
  %p_Val2_3 = phi i32 [ 0, %codeRepl ], [ %Y_V, %_ifconv ] ; [#uses=3 type=i32]
  %p_Val2_s = phi i32 [ 636750, %codeRepl ], [ %X_V_2, %_ifconv ] ; [#uses=4 type=i32]
  %sh_assign = phi i5 [ 0, %codeRepl ], [ %step, %_ifconv ] ; [#uses=4 type=i5]
  %sh_assign_cast1 = zext i5 %sh_assign to i32, !dbg !994 ; [#uses=2 type=i32] [debug line = 47:8]
  %exitcond = icmp eq i5 %sh_assign, -2, !dbg !994 ; [#uses=1 type=i1] [debug line = 47:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 30, i64 30, i64 30) ; [#uses=0 type=i32]
  %step = add i5 %sh_assign, 1, !dbg !997         ; [#uses=1 type=i5] [debug line = 47:23]
  br i1 %exitcond, label %1, label %_ifconv, !dbg !994 ; [debug line = 47:8]

_ifconv:                                          ; preds = %0
  %tmp_2 = icmp ult i32 %p_Val2_4, %theta_V_read, !dbg !998 ; [#uses=3 type=i1] [debug line = 1836:0@48:8]
  call void @llvm.dbg.value(metadata !{i5 %sh_assign}, i64 0, metadata !1005) nounwind, !dbg !1009 ; [debug line = 1544:27@49:14] [debug variable = sh]
  %p_Val2_1 = lshr i32 %p_Val2_3, %sh_assign_cast1, !dbg !1010 ; [#uses=2 type=i32] [debug line = 1549:9@49:14]
  call void @llvm.dbg.value(metadata !{i32 %p_Val2_s}, i64 0, metadata !1012) nounwind, !dbg !1025 ; [debug line = 668:0@766:5@1282:0@49:14] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i32 %p_Val2_1}, i64 0, metadata !1012) nounwind, !dbg !1025 ; [debug line = 668:0@766:5@1282:0@49:14] [debug variable = __Val2__]
  %T_V = sub i32 %p_Val2_s, %p_Val2_1, !dbg !1026 ; [#uses=1 type=i32] [debug line = 672:13@455:61@455:62@49:14]
  call void @llvm.dbg.value(metadata !{i32 %T_V}, i64 0, metadata !1037), !dbg !1039 ; [debug line = 504:9@49:14] [debug variable = T.V]
  call void @llvm.dbg.value(metadata !{i5 %sh_assign}, i64 0, metadata !1042) nounwind, !dbg !1044 ; [debug line = 1544:27@50:10] [debug variable = sh]
  %p_Val2_2 = lshr i32 %p_Val2_s, %sh_assign_cast1, !dbg !1045 ; [#uses=2 type=i32] [debug line = 1549:9@50:10]
  call void @llvm.dbg.value(metadata !{i32 %p_Val2_2}, i64 0, metadata !1046) nounwind, !dbg !1324 ; [debug line = 668:0@766:5@1281:0@50:10] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i32 %p_Val2_3}, i64 0, metadata !1046) nounwind, !dbg !1324 ; [debug line = 668:0@766:5@1281:0@50:10] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i32 %T_V}, i64 0, metadata !1325), !dbg !1327 ; [debug line = 504:9@51:5] [debug variable = X.V]
  %tmp_6 = zext i5 %sh_assign to i64, !dbg !1329  ; [#uses=1 type=i64] [debug line = 52:5]
  call void @llvm.dbg.value(metadata !{i32 %p_Val2_4}, i64 0, metadata !1330) nounwind, !dbg !1336 ; [debug line = 668:0@766:5@1281:0@1299:243@52:5] [debug variable = __Val2__]
  %angles_V_addr = getelementptr [20 x i20]* @angles_V, i64 0, i64 %tmp_6, !dbg !1336 ; [#uses=1 type=i20*] [debug line = 668:0@766:5@1281:0@1299:243@52:5]
  %p_Val2_5 = load i20* %angles_V_addr, align 4, !dbg !1336 ; [#uses=1 type=i20] [debug line = 668:0@766:5@1281:0@1299:243@52:5]
  %p_Val2_5_cast = zext i20 %p_Val2_5 to i32, !dbg !1336 ; [#uses=2 type=i32] [debug line = 668:0@766:5@1281:0@1299:243@52:5]
  call void @llvm.dbg.value(metadata !{i20 %p_Val2_5}, i64 0, metadata !1330) nounwind, !dbg !1336 ; [debug line = 668:0@766:5@1281:0@1299:243@52:5] [debug variable = __Val2__]
  %p_Val2_8 = add i32 %p_Val2_5_cast, %p_Val2_4, !dbg !1337 ; [#uses=1 type=i32] [debug line = 672:13@766:5@1299:243@52:5]
  call void @llvm.dbg.value(metadata !{i5 %sh_assign}, i64 0, metadata !1344) nounwind, !dbg !1347 ; [debug line = 1544:27@55:14] [debug variable = sh]
  call void @llvm.dbg.value(metadata !{i32 %p_Val2_s}, i64 0, metadata !1348) nounwind, !dbg !1351 ; [debug line = 668:0@766:5@1281:0@55:14] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i32 %p_Val2_1}, i64 0, metadata !1348) nounwind, !dbg !1351 ; [debug line = 668:0@766:5@1281:0@55:14] [debug variable = __Val2__]
  %T_V_1 = add i32 %p_Val2_1, %p_Val2_s, !dbg !1352 ; [#uses=1 type=i32] [debug line = 672:13@455:61@455:62@55:14]
  call void @llvm.dbg.value(metadata !{i32 %T_V_1}, i64 0, metadata !1037), !dbg !1359 ; [debug line = 504:9@55:14] [debug variable = T.V]
  call void @llvm.dbg.value(metadata !{i5 %sh_assign}, i64 0, metadata !1360) nounwind, !dbg !1362 ; [debug line = 1544:27@56:11] [debug variable = sh]
  call void @llvm.dbg.value(metadata !{i32 %p_Val2_2}, i64 0, metadata !1363) nounwind, !dbg !1368 ; [debug line = 668:0@766:5@1341:61@56:11] [debug variable = __Val2__]
  %p_Val2_s_2 = sub i32 0, %p_Val2_2, !dbg !1369  ; [#uses=1 type=i32] [debug line = 672:13@455:61@455:62@56:11]
  call void @llvm.dbg.value(metadata !{i32 %p_Val2_3}, i64 0, metadata !1380) nounwind, !dbg !1389 ; [debug line = 668:0@766:5@1281:0@56:11] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i32 %T_V_1}, i64 0, metadata !1325), !dbg !1390 ; [debug line = 504:9@57:5] [debug variable = X.V]
  call void @llvm.dbg.value(metadata !{i32 %p_Val2_4}, i64 0, metadata !1392) nounwind, !dbg !1399 ; [debug line = 668:0@766:5@1282:0@1300:246@58:5] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i20 %p_Val2_5}, i64 0, metadata !1392) nounwind, !dbg !1399 ; [debug line = 668:0@766:5@1282:0@1300:246@58:5] [debug variable = __Val2__]
  %p_Val2_6 = sub i32 %p_Val2_4, %p_Val2_5_cast, !dbg !1400 ; [#uses=1 type=i32] [debug line = 672:13@766:5@1300:246@58:5]
  %p_Val2_3_pn = select i1 %tmp_2, i32 %p_Val2_2, i32 %p_Val2_s_2 ; [#uses=1 type=i32]
  %X_V_2 = select i1 %tmp_2, i32 %T_V, i32 %T_V_1 ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %X_V_2}, i64 0, metadata !1325), !dbg !1390 ; [debug line = 504:9@57:5] [debug variable = X.V]
  %current_V = select i1 %tmp_2, i32 %p_Val2_8, i32 %p_Val2_6, !dbg !1403 ; [#uses=1 type=i32] [debug line = 985:9@1299:243@52:5]
  %Y_V = add i32 %p_Val2_3_pn, %p_Val2_3, !dbg !1406 ; [#uses=1 type=i32] [debug line = 504:9@50:10]
  call void @llvm.dbg.value(metadata !{i32 %Y_V}, i64 0, metadata !1407), !dbg !1406 ; [debug line = 504:9@50:10] [debug variable = Y.V]
  call void @llvm.dbg.value(metadata !{i32 %current_V}, i64 0, metadata !1409), !dbg !1403 ; [debug line = 985:9@1299:243@52:5] [debug variable = current.V]
  call void @llvm.dbg.value(metadata !{i5 %step}, i64 0, metadata !1411), !dbg !997 ; [debug line = 47:23] [debug variable = step]
  br label %0, !dbg !997                          ; [debug line = 47:23]

; <label>:1                                       ; preds = %0
  call void @llvm.dbg.value(metadata !{i32* %c_V}, i64 0, metadata !1412), !dbg !1415 ; [debug line = 502:54@61:4] [debug variable = ssdm_int<32 + 1024 * 0, false>.V]
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %c_V, i32 %p_Val2_s), !dbg !1417 ; [debug line = 504:9@61:4]
  call void @llvm.dbg.value(metadata !{i32* %s_V}, i64 0, metadata !1412), !dbg !1418 ; [debug line = 502:54@62:4] [debug variable = ssdm_int<32 + 1024 * 0, false>.V]
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %s_V, i32 %p_Val2_3), !dbg !1420 ; [debug line = 504:9@62:4]
  ret void, !dbg !1421                            ; [debug line = 108:1]
}

; [#uses=28]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=2]
define weak void @_ssdm_op_Write.ap_auto.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !""}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"theta.V", metadata !11, metadata !"uint32"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"s.V", metadata !5, metadata !"uint32"}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 31, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"c.V", metadata !5, metadata !"uint32"}
!21 = metadata !{i32 790531, metadata !22, metadata !"s.V", null, i32 18, metadata !983, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!22 = metadata !{i32 786689, metadata !23, metadata !"s", metadata !24, i32 33554450, metadata !981, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!23 = metadata !{i32 786478, i32 0, metadata !24, metadata !"cordic", metadata !"cordic", metadata !"_Z6cordic9ap_ufixedILi32ELi12EL9ap_q_mode5EL9ap_o_mode3ELi0EEPS2_S3_", metadata !24, i32 18, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !46, i32 19} ; [ DW_TAG_subprogram ]
!24 = metadata !{i32 786473, metadata !"cordic.cpp", metadata !"/home/student/gsf52/ece5775", null} ; [ DW_TAG_file_type ]
!25 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!26 = metadata !{null, metadata !27, metadata !981, metadata !981}
!27 = metadata !{i32 786454, null, metadata !"theta_type", metadata !28, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!28 = metadata !{i32 786473, metadata !"./cordic.h", metadata !"/home/student/gsf52/ece5775", null} ; [ DW_TAG_file_type ]
!29 = metadata !{i32 786434, null, metadata !"ap_ufixed<32, 12, 5, 3, 0>", metadata !30, i32 407, i64 32, i64 32, i32 0, i32 0, null, metadata !31, i32 0, null, metadata !980} ; [ DW_TAG_class_type ]
!30 = metadata !{i32 786473, metadata !"/opt/xilinx/Vivado_HLS/2014.2/common/technology/autopilot/ap_int.h", metadata !"/home/student/gsf52/ece5775", null} ; [ DW_TAG_file_type ]
!31 = metadata !{metadata !32, metadata !906, metadata !910, metadata !915, metadata !916, metadata !919, metadata !922, metadata !925, metadata !928, metadata !931, metadata !934, metadata !937, metadata !940, metadata !943, metadata !946, metadata !949, metadata !952, metadata !955, metadata !958, metadata !961, metadata !964, metadata !967, metadata !968, metadata !973, metadata !974, metadata !979}
!32 = metadata !{i32 786460, metadata !29, null, metadata !30, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_inheritance ]
!33 = metadata !{i32 786434, null, metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !34, i32 510, i64 32, i64 32, i32 0, i32 0, null, metadata !35, i32 0, null, metadata !903} ; [ DW_TAG_class_type ]
!34 = metadata !{i32 786473, metadata !"/opt/xilinx/Vivado_HLS/2014.2/common/technology/autopilot/ap_fixed_syn.h", metadata !"/home/student/gsf52/ece5775", null} ; [ DW_TAG_file_type ]
!35 = metadata !{metadata !36, metadata !58, metadata !62, metadata !65, metadata !68, metadata !96, metadata !97, metadata !100, metadata !104, metadata !108, metadata !112, metadata !116, metadata !120, metadata !123, metadata !127, metadata !131, metadata !135, metadata !140, metadata !145, metadata !150, metadata !153, metadata !159, metadata !162, metadata !166, metadata !169, metadata !172, metadata !173, metadata !178, metadata !179, metadata !182, metadata !185, metadata !189, metadata !192, metadata !195, metadata !198, metadata !201, metadata !204, metadata !207, metadata !208, metadata !209, metadata !212, metadata !215, metadata !218, metadata !221, metadata !224, metadata !225, metadata !226, metadata !229, metadata !232, metadata !235, metadata !238, metadata !239, metadata !242, metadata !245, metadata !246, metadata !249, metadata !250, metadata !253, metadata !818, metadata !822, metadata !825, metadata !828, metadata !831, metadata !834, metadata !835, metadata !836, metadata !839, metadata !842, metadata !843, metadata !844, metadata !847, metadata !848, metadata !849, metadata !850, metadata !851, metadata !852, metadata !856, metadata !859, metadata !860, metadata !861, metadata !864, metadata !867, metadata !871, metadata !872, metadata !875, metadata !876, metadata !879, metadata !882, metadata !883, metadata !884, metadata !885, metadata !886, metadata !889, metadata !892, metadata !893, metadata !896, metadata !899}
!36 = metadata !{i32 786460, metadata !33, null, metadata !34, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_inheritance ]
!37 = metadata !{i32 786434, null, metadata !"ssdm_int<32 + 1024 * 0, false>", metadata !38, i32 34, i64 32, i64 32, i32 0, i32 0, null, metadata !39, i32 0, null, metadata !53} ; [ DW_TAG_class_type ]
!38 = metadata !{i32 786473, metadata !"/opt/xilinx/Vivado_HLS/2014.2/common/technology/autopilot/etc/autopilot_dt.def", metadata !"/home/student/gsf52/ece5775", null} ; [ DW_TAG_file_type ]
!39 = metadata !{metadata !40, metadata !42, metadata !48}
!40 = metadata !{i32 786445, metadata !37, metadata !"V", metadata !38, i32 34, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ]
!41 = metadata !{i32 786468, null, metadata !"uint32", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!42 = metadata !{i32 786478, i32 0, metadata !37, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !38, i32 34, metadata !43, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 34} ; [ DW_TAG_subprogram ]
!43 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!44 = metadata !{null, metadata !45}
!45 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !37} ; [ DW_TAG_pointer_type ]
!46 = metadata !{metadata !47}
!47 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!48 = metadata !{i32 786478, i32 0, metadata !37, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !38, i32 34, metadata !49, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !46, i32 34} ; [ DW_TAG_subprogram ]
!49 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!50 = metadata !{null, metadata !45, metadata !51}
!51 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_reference_type ]
!52 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_const_type ]
!53 = metadata !{metadata !54, metadata !56}
!54 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !55, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!55 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!56 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !57, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!57 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!58 = metadata !{i32 786478, i32 0, metadata !33, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", metadata !34, i32 515, metadata !59, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 515} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{null, metadata !61, metadata !57, metadata !57, metadata !57, metadata !57}
!61 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !33} ; [ DW_TAG_pointer_type ]
!62 = metadata !{i32 786478, i32 0, metadata !33, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", metadata !34, i32 588, metadata !63, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 588} ; [ DW_TAG_subprogram ]
!63 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!64 = metadata !{metadata !57, metadata !61, metadata !57, metadata !57, metadata !57}
!65 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 646, metadata !66, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 646} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!67 = metadata !{null, metadata !61}
!68 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"", metadata !34, i32 656, metadata !69, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, i32 0, metadata !46, i32 656} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!70 = metadata !{null, metadata !61, metadata !71}
!71 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_reference_type ]
!72 = metadata !{metadata !73, metadata !74, metadata !75, metadata !76, metadata !87, metadata !95}
!73 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !55, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!74 = metadata !{i32 786480, null, metadata !"_AP_I2", metadata !55, i64 12, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!75 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !57, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!76 = metadata !{i32 786480, null, metadata !"_AP_Q2", metadata !77, i64 5, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!77 = metadata !{i32 786436, null, metadata !"ap_q_mode", metadata !78, i32 657, i64 3, i64 4, i32 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!78 = metadata !{i32 786473, metadata !"/opt/xilinx/Vivado_HLS/2014.2/common/technology/autopilot/ap_int_syn.h", metadata !"/home/student/gsf52/ece5775", null} ; [ DW_TAG_file_type ]
!79 = metadata !{metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86}
!80 = metadata !{i32 786472, metadata !"SC_RND", i64 0} ; [ DW_TAG_enumerator ]
!81 = metadata !{i32 786472, metadata !"SC_RND_ZERO", i64 1} ; [ DW_TAG_enumerator ]
!82 = metadata !{i32 786472, metadata !"SC_RND_MIN_INF", i64 2} ; [ DW_TAG_enumerator ]
!83 = metadata !{i32 786472, metadata !"SC_RND_INF", i64 3} ; [ DW_TAG_enumerator ]
!84 = metadata !{i32 786472, metadata !"SC_RND_CONV", i64 4} ; [ DW_TAG_enumerator ]
!85 = metadata !{i32 786472, metadata !"SC_TRN", i64 5} ; [ DW_TAG_enumerator ]
!86 = metadata !{i32 786472, metadata !"SC_TRN_ZERO", i64 6} ; [ DW_TAG_enumerator ]
!87 = metadata !{i32 786480, null, metadata !"_AP_O2", metadata !88, i64 3, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!88 = metadata !{i32 786436, null, metadata !"ap_o_mode", metadata !78, i32 667, i64 3, i64 4, i32 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!89 = metadata !{metadata !90, metadata !91, metadata !92, metadata !93, metadata !94}
!90 = metadata !{i32 786472, metadata !"SC_SAT", i64 0} ; [ DW_TAG_enumerator ]
!91 = metadata !{i32 786472, metadata !"SC_SAT_ZERO", i64 1} ; [ DW_TAG_enumerator ]
!92 = metadata !{i32 786472, metadata !"SC_SAT_SYM", i64 2} ; [ DW_TAG_enumerator ]
!93 = metadata !{i32 786472, metadata !"SC_WRAP", i64 3} ; [ DW_TAG_enumerator ]
!94 = metadata !{i32 786472, metadata !"SC_WRAP_SM", i64 4} ; [ DW_TAG_enumerator ]
!95 = metadata !{i32 786480, null, metadata !"_AP_N2", metadata !55, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!96 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"", metadata !34, i32 770, metadata !69, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, i32 0, metadata !46, i32 770} ; [ DW_TAG_subprogram ]
!97 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 782, metadata !98, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 782} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{null, metadata !61, metadata !57}
!100 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 783, metadata !101, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 783} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!102 = metadata !{null, metadata !61, metadata !103}
!103 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!104 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 784, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 784} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!106 = metadata !{null, metadata !61, metadata !107}
!107 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!108 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 785, metadata !109, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 785} ; [ DW_TAG_subprogram ]
!109 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!110 = metadata !{null, metadata !61, metadata !111}
!111 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!112 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 786, metadata !113, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 786} ; [ DW_TAG_subprogram ]
!113 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !114, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!114 = metadata !{null, metadata !61, metadata !115}
!115 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!116 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 787, metadata !117, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 787} ; [ DW_TAG_subprogram ]
!117 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!118 = metadata !{null, metadata !61, metadata !119}
!119 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!120 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 788, metadata !121, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 788} ; [ DW_TAG_subprogram ]
!121 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !122, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!122 = metadata !{null, metadata !61, metadata !55}
!123 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 789, metadata !124, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 789} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!125 = metadata !{null, metadata !61, metadata !126}
!126 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!127 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 791, metadata !128, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 791} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!129 = metadata !{null, metadata !61, metadata !130}
!130 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!131 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 792, metadata !132, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 792} ; [ DW_TAG_subprogram ]
!132 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !133, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!133 = metadata !{null, metadata !61, metadata !134}
!134 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!135 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 797, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 797} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!137 = metadata !{null, metadata !61, metadata !138}
!138 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !34, i32 112, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_typedef ]
!139 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!140 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 798, metadata !141, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 798} ; [ DW_TAG_subprogram ]
!141 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !142, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!142 = metadata !{null, metadata !61, metadata !143}
!143 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !34, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !144} ; [ DW_TAG_typedef ]
!144 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!145 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 799, metadata !146, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 799} ; [ DW_TAG_subprogram ]
!146 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!147 = metadata !{null, metadata !61, metadata !148}
!148 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !149} ; [ DW_TAG_pointer_type ]
!149 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_const_type ]
!150 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 806, metadata !151, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 806} ; [ DW_TAG_subprogram ]
!151 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!152 = metadata !{null, metadata !61, metadata !148, metadata !107}
!153 = metadata !{i32 786478, i32 0, metadata !33, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE15doubleToRawBitsEd", metadata !34, i32 842, metadata !154, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 842} ; [ DW_TAG_subprogram ]
!154 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!155 = metadata !{metadata !144, metadata !156, metadata !158}
!156 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !157} ; [ DW_TAG_pointer_type ]
!157 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_const_type ]
!158 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!159 = metadata !{i32 786478, i32 0, metadata !33, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE15rawBitsToDoubleEy", metadata !34, i32 851, metadata !160, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 851} ; [ DW_TAG_subprogram ]
!160 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!161 = metadata !{metadata !158, metadata !156, metadata !144}
!162 = metadata !{i32 786478, i32 0, metadata !33, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE14rawBitsToFloatEj", metadata !34, i32 860, metadata !163, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 860} ; [ DW_TAG_subprogram ]
!163 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!164 = metadata !{metadata !165, metadata !156, metadata !126}
!165 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!166 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 869, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 869} ; [ DW_TAG_subprogram ]
!167 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!168 = metadata !{null, metadata !61, metadata !158}
!169 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !34, i32 982, metadata !170, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 982} ; [ DW_TAG_subprogram ]
!170 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !171, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!171 = metadata !{metadata !71, metadata !61, metadata !71}
!172 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !34, i32 989, metadata !170, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 989} ; [ DW_TAG_subprogram ]
!173 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !34, i32 996, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 996} ; [ DW_TAG_subprogram ]
!174 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !175, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!175 = metadata !{null, metadata !176, metadata !71}
!176 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !177} ; [ DW_TAG_pointer_type ]
!177 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_volatile_type ]
!178 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !34, i32 1002, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1002} ; [ DW_TAG_subprogram ]
!179 = metadata !{i32 786478, i32 0, metadata !33, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", metadata !34, i32 1011, metadata !180, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1011} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!181 = metadata !{metadata !71, metadata !61, metadata !144}
!182 = metadata !{i32 786478, i32 0, metadata !33, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", metadata !34, i32 1017, metadata !183, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1017} ; [ DW_TAG_subprogram ]
!183 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !184, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!184 = metadata !{metadata !33, metadata !144}
!185 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", metadata !34, i32 1026, metadata !186, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1026} ; [ DW_TAG_subprogram ]
!186 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !187, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!187 = metadata !{metadata !188, metadata !156, metadata !57}
!188 = metadata !{i32 786434, null, metadata !"ap_int_base<12, false, true>", metadata !78, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!189 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", metadata !34, i32 1061, metadata !190, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1061} ; [ DW_TAG_subprogram ]
!190 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !191, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!191 = metadata !{metadata !55, metadata !156}
!192 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", metadata !34, i32 1064, metadata !193, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1064} ; [ DW_TAG_subprogram ]
!193 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!194 = metadata !{metadata !126, metadata !156}
!195 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", metadata !34, i32 1067, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1067} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!197 = metadata !{metadata !138, metadata !156}
!198 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", metadata !34, i32 1070, metadata !199, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1070} ; [ DW_TAG_subprogram ]
!199 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!200 = metadata !{metadata !143, metadata !156}
!201 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", metadata !34, i32 1073, metadata !202, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1073} ; [ DW_TAG_subprogram ]
!202 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !203, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!203 = metadata !{metadata !158, metadata !156}
!204 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", metadata !34, i32 1107, metadata !205, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1107} ; [ DW_TAG_subprogram ]
!205 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !206, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!206 = metadata !{metadata !165, metadata !156}
!207 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", metadata !34, i32 1142, metadata !202, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1142} ; [ DW_TAG_subprogram ]
!208 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", metadata !34, i32 1146, metadata !205, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1146} ; [ DW_TAG_subprogram ]
!209 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", metadata !34, i32 1150, metadata !210, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1150} ; [ DW_TAG_subprogram ]
!210 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !211, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!211 = metadata !{metadata !103, metadata !156}
!212 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator signed char", metadata !"operator signed char", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", metadata !34, i32 1154, metadata !213, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1154} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !214, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!214 = metadata !{metadata !107, metadata !156}
!215 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", metadata !34, i32 1158, metadata !216, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1158} ; [ DW_TAG_subprogram ]
!216 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!217 = metadata !{metadata !111, metadata !156}
!218 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator short", metadata !"operator short", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", metadata !34, i32 1162, metadata !219, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1162} ; [ DW_TAG_subprogram ]
!219 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!220 = metadata !{metadata !115, metadata !156}
!221 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator unsigned short", metadata !"operator unsigned short", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", metadata !34, i32 1166, metadata !222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1166} ; [ DW_TAG_subprogram ]
!222 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!223 = metadata !{metadata !119, metadata !156}
!224 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", metadata !34, i32 1171, metadata !190, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1171} ; [ DW_TAG_subprogram ]
!225 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", metadata !34, i32 1175, metadata !193, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1175} ; [ DW_TAG_subprogram ]
!226 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator long", metadata !"operator long", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", metadata !34, i32 1180, metadata !227, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1180} ; [ DW_TAG_subprogram ]
!227 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !228, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!228 = metadata !{metadata !130, metadata !156}
!229 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator unsigned long", metadata !"operator unsigned long", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", metadata !34, i32 1184, metadata !230, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1184} ; [ DW_TAG_subprogram ]
!230 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !231, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!231 = metadata !{metadata !134, metadata !156}
!232 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", metadata !34, i32 1197, metadata !233, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1197} ; [ DW_TAG_subprogram ]
!233 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !234, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!234 = metadata !{metadata !144, metadata !156}
!235 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", metadata !34, i32 1201, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1201} ; [ DW_TAG_subprogram ]
!236 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !237, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!237 = metadata !{metadata !139, metadata !156}
!238 = metadata !{i32 786478, i32 0, metadata !33, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", metadata !34, i32 1205, metadata !190, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1205} ; [ DW_TAG_subprogram ]
!239 = metadata !{i32 786478, i32 0, metadata !33, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", metadata !34, i32 1209, metadata !240, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1209} ; [ DW_TAG_subprogram ]
!240 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !241, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!241 = metadata !{metadata !55, metadata !61}
!242 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", metadata !34, i32 1310, metadata !243, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1310} ; [ DW_TAG_subprogram ]
!243 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !244, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!244 = metadata !{metadata !71, metadata !61}
!245 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", metadata !34, i32 1314, metadata !243, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1314} ; [ DW_TAG_subprogram ]
!246 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", metadata !34, i32 1322, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1322} ; [ DW_TAG_subprogram ]
!247 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !248, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!248 = metadata !{metadata !157, metadata !61, metadata !55}
!249 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", metadata !34, i32 1328, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1328} ; [ DW_TAG_subprogram ]
!250 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", metadata !34, i32 1336, metadata !251, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1336} ; [ DW_TAG_subprogram ]
!251 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!252 = metadata !{metadata !33, metadata !61}
!253 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", metadata !34, i32 1340, metadata !254, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1340} ; [ DW_TAG_subprogram ]
!254 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !255, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!255 = metadata !{metadata !256, metadata !156}
!256 = metadata !{i32 786434, null, metadata !"ap_fixed_base<33, 13, true, 5, 3, 0>", metadata !34, i32 510, i64 64, i64 64, i32 0, i32 0, null, metadata !257, i32 0, null, metadata !815} ; [ DW_TAG_class_type ]
!257 = metadata !{metadata !258, metadata !275, metadata !279, metadata !282, metadata !285, metadata !288, metadata !296, metadata !297, metadata !298, metadata !301, metadata !304, metadata !307, metadata !310, metadata !313, metadata !316, metadata !319, metadata !322, metadata !325, metadata !328, metadata !331, metadata !334, metadata !337, metadata !340, metadata !345, metadata !348, metadata !351, metadata !354, metadata !357, metadata !358, metadata !363, metadata !364, metadata !367, metadata !370, metadata !374, metadata !377, metadata !380, metadata !383, metadata !386, metadata !389, metadata !392, metadata !393, metadata !394, metadata !397, metadata !400, metadata !403, metadata !406, metadata !409, metadata !410, metadata !411, metadata !414, metadata !417, metadata !420, metadata !423, metadata !424, metadata !427, metadata !718, metadata !721, metadata !722, metadata !725, metadata !726, metadata !729, metadata !732, metadata !733, metadata !736, metadata !739, metadata !742, metadata !745, metadata !746, metadata !747, metadata !750, metadata !753, metadata !754, metadata !755, metadata !758, metadata !759, metadata !760, metadata !761, metadata !762, metadata !763, metadata !767, metadata !770, metadata !771, metadata !772, metadata !775, metadata !778, metadata !782, metadata !783, metadata !786, metadata !787, metadata !790, metadata !793, metadata !794, metadata !795, metadata !796, metadata !797, metadata !800, metadata !803, metadata !804, metadata !807, metadata !810, metadata !811}
!258 = metadata !{i32 786460, metadata !256, null, metadata !34, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !259} ; [ DW_TAG_inheritance ]
!259 = metadata !{i32 786434, null, metadata !"ssdm_int<33 + 1024 * 0, true>", metadata !38, i32 35, i64 64, i64 64, i32 0, i32 0, null, metadata !260, i32 0, null, metadata !272} ; [ DW_TAG_class_type ]
!260 = metadata !{metadata !261, metadata !263, metadata !267}
!261 = metadata !{i32 786445, metadata !259, metadata !"V", metadata !38, i32 35, i64 33, i64 64, i64 0, i32 0, metadata !262} ; [ DW_TAG_member ]
!262 = metadata !{i32 786468, null, metadata !"int33", null, i32 0, i64 33, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!263 = metadata !{i32 786478, i32 0, metadata !259, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !38, i32 35, metadata !264, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 35} ; [ DW_TAG_subprogram ]
!264 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !265, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!265 = metadata !{null, metadata !266}
!266 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !259} ; [ DW_TAG_pointer_type ]
!267 = metadata !{i32 786478, i32 0, metadata !259, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !38, i32 35, metadata !268, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !46, i32 35} ; [ DW_TAG_subprogram ]
!268 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !269, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!269 = metadata !{null, metadata !266, metadata !270}
!270 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !271} ; [ DW_TAG_reference_type ]
!271 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !259} ; [ DW_TAG_const_type ]
!272 = metadata !{metadata !273, metadata !274}
!273 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !55, i64 33, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!274 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !57, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!275 = metadata !{i32 786478, i32 0, metadata !256, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", metadata !34, i32 515, metadata !276, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 515} ; [ DW_TAG_subprogram ]
!276 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!277 = metadata !{null, metadata !278, metadata !57, metadata !57, metadata !57, metadata !57}
!278 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !256} ; [ DW_TAG_pointer_type ]
!279 = metadata !{i32 786478, i32 0, metadata !256, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", metadata !34, i32 588, metadata !280, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 588} ; [ DW_TAG_subprogram ]
!280 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !281, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!281 = metadata !{metadata !57, metadata !278, metadata !57, metadata !57, metadata !57}
!282 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 646, metadata !283, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 646} ; [ DW_TAG_subprogram ]
!283 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !284, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!284 = metadata !{null, metadata !278}
!285 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"", metadata !34, i32 656, metadata !286, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, i32 0, metadata !46, i32 656} ; [ DW_TAG_subprogram ]
!286 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !287, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!287 = metadata !{null, metadata !278, metadata !71}
!288 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base<33, 13, true, 5, 3, 0>", metadata !"ap_fixed_base<33, 13, true, 5, 3, 0>", metadata !"", metadata !34, i32 656, metadata !289, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !292, i32 0, metadata !46, i32 656} ; [ DW_TAG_subprogram ]
!289 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !290, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!290 = metadata !{null, metadata !278, metadata !291}
!291 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !256} ; [ DW_TAG_reference_type ]
!292 = metadata !{metadata !293, metadata !294, metadata !295, metadata !76, metadata !87, metadata !95}
!293 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !55, i64 33, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!294 = metadata !{i32 786480, null, metadata !"_AP_I2", metadata !55, i64 13, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!295 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !57, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!296 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"", metadata !34, i32 770, metadata !286, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, i32 0, metadata !46, i32 770} ; [ DW_TAG_subprogram ]
!297 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base<33, 13, true, 5, 3, 0>", metadata !"ap_fixed_base<33, 13, true, 5, 3, 0>", metadata !"", metadata !34, i32 770, metadata !289, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !292, i32 0, metadata !46, i32 770} ; [ DW_TAG_subprogram ]
!298 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 782, metadata !299, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 782} ; [ DW_TAG_subprogram ]
!299 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !300, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!300 = metadata !{null, metadata !278, metadata !57}
!301 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 783, metadata !302, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 783} ; [ DW_TAG_subprogram ]
!302 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !303, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!303 = metadata !{null, metadata !278, metadata !103}
!304 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 784, metadata !305, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 784} ; [ DW_TAG_subprogram ]
!305 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !306, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!306 = metadata !{null, metadata !278, metadata !107}
!307 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 785, metadata !308, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 785} ; [ DW_TAG_subprogram ]
!308 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !309, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!309 = metadata !{null, metadata !278, metadata !111}
!310 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 786, metadata !311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 786} ; [ DW_TAG_subprogram ]
!311 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !312, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!312 = metadata !{null, metadata !278, metadata !115}
!313 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 787, metadata !314, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 787} ; [ DW_TAG_subprogram ]
!314 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !315, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!315 = metadata !{null, metadata !278, metadata !119}
!316 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 788, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 788} ; [ DW_TAG_subprogram ]
!317 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !318, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!318 = metadata !{null, metadata !278, metadata !55}
!319 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 789, metadata !320, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 789} ; [ DW_TAG_subprogram ]
!320 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !321, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!321 = metadata !{null, metadata !278, metadata !126}
!322 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 791, metadata !323, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 791} ; [ DW_TAG_subprogram ]
!323 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !324, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!324 = metadata !{null, metadata !278, metadata !130}
!325 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 792, metadata !326, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 792} ; [ DW_TAG_subprogram ]
!326 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !327, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!327 = metadata !{null, metadata !278, metadata !134}
!328 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 797, metadata !329, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 797} ; [ DW_TAG_subprogram ]
!329 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !330, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!330 = metadata !{null, metadata !278, metadata !138}
!331 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 798, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 798} ; [ DW_TAG_subprogram ]
!332 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !333, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!333 = metadata !{null, metadata !278, metadata !143}
!334 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 799, metadata !335, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 799} ; [ DW_TAG_subprogram ]
!335 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !336, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!336 = metadata !{null, metadata !278, metadata !148}
!337 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 806, metadata !338, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 806} ; [ DW_TAG_subprogram ]
!338 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !339, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!339 = metadata !{null, metadata !278, metadata !148, metadata !107}
!340 = metadata !{i32 786478, i32 0, metadata !256, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15doubleToRawBitsEd", metadata !34, i32 842, metadata !341, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 842} ; [ DW_TAG_subprogram ]
!341 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !342, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!342 = metadata !{metadata !144, metadata !343, metadata !158}
!343 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !344} ; [ DW_TAG_pointer_type ]
!344 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !256} ; [ DW_TAG_const_type ]
!345 = metadata !{i32 786478, i32 0, metadata !256, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15rawBitsToDoubleEy", metadata !34, i32 851, metadata !346, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 851} ; [ DW_TAG_subprogram ]
!346 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !347, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!347 = metadata !{metadata !158, metadata !343, metadata !144}
!348 = metadata !{i32 786478, i32 0, metadata !256, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14rawBitsToFloatEj", metadata !34, i32 860, metadata !349, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 860} ; [ DW_TAG_subprogram ]
!349 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !350, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!350 = metadata !{metadata !165, metadata !343, metadata !126}
!351 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 869, metadata !352, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 869} ; [ DW_TAG_subprogram ]
!352 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !353, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!353 = metadata !{null, metadata !278, metadata !158}
!354 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !34, i32 982, metadata !355, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 982} ; [ DW_TAG_subprogram ]
!355 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !356, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!356 = metadata !{metadata !291, metadata !278, metadata !291}
!357 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !34, i32 989, metadata !355, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 989} ; [ DW_TAG_subprogram ]
!358 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !34, i32 996, metadata !359, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 996} ; [ DW_TAG_subprogram ]
!359 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !360, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!360 = metadata !{null, metadata !361, metadata !291}
!361 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !362} ; [ DW_TAG_pointer_type ]
!362 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !256} ; [ DW_TAG_volatile_type ]
!363 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !34, i32 1002, metadata !359, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1002} ; [ DW_TAG_subprogram ]
!364 = metadata !{i32 786478, i32 0, metadata !256, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", metadata !34, i32 1011, metadata !365, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1011} ; [ DW_TAG_subprogram ]
!365 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !366, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!366 = metadata !{metadata !291, metadata !278, metadata !144}
!367 = metadata !{i32 786478, i32 0, metadata !256, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", metadata !34, i32 1017, metadata !368, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1017} ; [ DW_TAG_subprogram ]
!368 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !369, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!369 = metadata !{metadata !256, metadata !144}
!370 = metadata !{i32 786478, i32 0, metadata !256, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", metadata !34, i32 1026, metadata !371, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1026} ; [ DW_TAG_subprogram ]
!371 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !372, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!372 = metadata !{metadata !373, metadata !343, metadata !57}
!373 = metadata !{i32 786434, null, metadata !"ap_int_base<13, true, true>", metadata !78, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!374 = metadata !{i32 786478, i32 0, metadata !256, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", metadata !34, i32 1061, metadata !375, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1061} ; [ DW_TAG_subprogram ]
!375 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !376, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!376 = metadata !{metadata !55, metadata !343}
!377 = metadata !{i32 786478, i32 0, metadata !256, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", metadata !34, i32 1064, metadata !378, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1064} ; [ DW_TAG_subprogram ]
!378 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !379, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!379 = metadata !{metadata !126, metadata !343}
!380 = metadata !{i32 786478, i32 0, metadata !256, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", metadata !34, i32 1067, metadata !381, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1067} ; [ DW_TAG_subprogram ]
!381 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !382, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!382 = metadata !{metadata !138, metadata !343}
!383 = metadata !{i32 786478, i32 0, metadata !256, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", metadata !34, i32 1070, metadata !384, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1070} ; [ DW_TAG_subprogram ]
!384 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !385, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!385 = metadata !{metadata !143, metadata !343}
!386 = metadata !{i32 786478, i32 0, metadata !256, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", metadata !34, i32 1073, metadata !387, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1073} ; [ DW_TAG_subprogram ]
!387 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !388, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!388 = metadata !{metadata !158, metadata !343}
!389 = metadata !{i32 786478, i32 0, metadata !256, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", metadata !34, i32 1107, metadata !390, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1107} ; [ DW_TAG_subprogram ]
!390 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !391, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!391 = metadata !{metadata !165, metadata !343}
!392 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", metadata !34, i32 1142, metadata !387, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1142} ; [ DW_TAG_subprogram ]
!393 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", metadata !34, i32 1146, metadata !390, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1146} ; [ DW_TAG_subprogram ]
!394 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", metadata !34, i32 1150, metadata !395, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1150} ; [ DW_TAG_subprogram ]
!395 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !396, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!396 = metadata !{metadata !103, metadata !343}
!397 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator signed char", metadata !"operator signed char", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", metadata !34, i32 1154, metadata !398, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1154} ; [ DW_TAG_subprogram ]
!398 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !399, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!399 = metadata !{metadata !107, metadata !343}
!400 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", metadata !34, i32 1158, metadata !401, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1158} ; [ DW_TAG_subprogram ]
!401 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !402, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!402 = metadata !{metadata !111, metadata !343}
!403 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator short", metadata !"operator short", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", metadata !34, i32 1162, metadata !404, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1162} ; [ DW_TAG_subprogram ]
!404 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !405, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!405 = metadata !{metadata !115, metadata !343}
!406 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator unsigned short", metadata !"operator unsigned short", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", metadata !34, i32 1166, metadata !407, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1166} ; [ DW_TAG_subprogram ]
!407 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !408, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!408 = metadata !{metadata !119, metadata !343}
!409 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", metadata !34, i32 1171, metadata !375, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1171} ; [ DW_TAG_subprogram ]
!410 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", metadata !34, i32 1175, metadata !378, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1175} ; [ DW_TAG_subprogram ]
!411 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator long", metadata !"operator long", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", metadata !34, i32 1180, metadata !412, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1180} ; [ DW_TAG_subprogram ]
!412 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !413, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!413 = metadata !{metadata !130, metadata !343}
!414 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator unsigned long", metadata !"operator unsigned long", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", metadata !34, i32 1184, metadata !415, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1184} ; [ DW_TAG_subprogram ]
!415 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !416, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!416 = metadata !{metadata !134, metadata !343}
!417 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", metadata !34, i32 1197, metadata !418, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1197} ; [ DW_TAG_subprogram ]
!418 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !419, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!419 = metadata !{metadata !144, metadata !343}
!420 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", metadata !34, i32 1201, metadata !421, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1201} ; [ DW_TAG_subprogram ]
!421 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !422, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!422 = metadata !{metadata !139, metadata !343}
!423 = metadata !{i32 786478, i32 0, metadata !256, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", metadata !34, i32 1205, metadata !375, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1205} ; [ DW_TAG_subprogram ]
!424 = metadata !{i32 786478, i32 0, metadata !256, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", metadata !34, i32 1209, metadata !425, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1209} ; [ DW_TAG_subprogram ]
!425 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !426, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!426 = metadata !{metadata !55, metadata !278}
!427 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator+<32, 12, false, 5, 3, 0>", metadata !"operator+<32, 12, false, 5, 3, 0>", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEplILi32ELi12ELb0ELS0_5ELS1_3ELi0EEENS2_5RTypeIXT_EXT0_EXT1_EE4plusERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !34, i32 1281, metadata !428, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, i32 0, metadata !46, i32 1281} ; [ DW_TAG_subprogram ]
!428 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !429, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!429 = metadata !{metadata !430, metadata !343, metadata !71}
!430 = metadata !{i32 786454, metadata !431, metadata !"plus", metadata !34, i32 637, i64 0, i64 0, i64 0, i32 0, metadata !434} ; [ DW_TAG_typedef ]
!431 = metadata !{i32 786434, metadata !256, metadata !"RType<32, 12, false>", metadata !34, i32 611, i64 8, i64 8, i32 0, i32 0, null, metadata !432, i32 0, null, metadata !433} ; [ DW_TAG_class_type ]
!432 = metadata !{i32 0}
!433 = metadata !{metadata !73, metadata !74, metadata !75}
!434 = metadata !{i32 786434, null, metadata !"ap_fixed_base<34, 14, true, 5, 3, 0>", metadata !34, i32 510, i64 64, i64 64, i32 0, i32 0, null, metadata !435, i32 0, null, metadata !712} ; [ DW_TAG_class_type ]
!435 = metadata !{metadata !436, metadata !452, metadata !456, metadata !459, metadata !462, metadata !469, metadata !472, metadata !475, metadata !476, metadata !477, metadata !478, metadata !481, metadata !484, metadata !487, metadata !490, metadata !493, metadata !496, metadata !499, metadata !502, metadata !505, metadata !508, metadata !511, metadata !514, metadata !517, metadata !520, metadata !525, metadata !528, metadata !531, metadata !534, metadata !537, metadata !538, metadata !543, metadata !544, metadata !547, metadata !550, metadata !554, metadata !557, metadata !560, metadata !563, metadata !566, metadata !569, metadata !572, metadata !573, metadata !574, metadata !577, metadata !580, metadata !583, metadata !586, metadata !589, metadata !590, metadata !591, metadata !594, metadata !597, metadata !600, metadata !603, metadata !604, metadata !607, metadata !610, metadata !611, metadata !614, metadata !615, metadata !618, metadata !622, metadata !623, metadata !626, metadata !629, metadata !632, metadata !635, metadata !636, metadata !637, metadata !640, metadata !643, metadata !644, metadata !645, metadata !648, metadata !649, metadata !650, metadata !651, metadata !652, metadata !653, metadata !657, metadata !660, metadata !661, metadata !662, metadata !665, metadata !668, metadata !672, metadata !673, metadata !676, metadata !677, metadata !680, metadata !683, metadata !684, metadata !685, metadata !686, metadata !687, metadata !690, metadata !693, metadata !694, metadata !704, metadata !707, metadata !708}
!436 = metadata !{i32 786460, metadata !434, null, metadata !34, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !437} ; [ DW_TAG_inheritance ]
!437 = metadata !{i32 786434, null, metadata !"ssdm_int<34 + 1024 * 0, true>", metadata !38, i32 36, i64 64, i64 64, i32 0, i32 0, null, metadata !438, i32 0, null, metadata !450} ; [ DW_TAG_class_type ]
!438 = metadata !{metadata !439, metadata !441, metadata !445}
!439 = metadata !{i32 786445, metadata !437, metadata !"V", metadata !38, i32 36, i64 34, i64 64, i64 0, i32 0, metadata !440} ; [ DW_TAG_member ]
!440 = metadata !{i32 786468, null, metadata !"int34", null, i32 0, i64 34, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!441 = metadata !{i32 786478, i32 0, metadata !437, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !38, i32 36, metadata !442, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 36} ; [ DW_TAG_subprogram ]
!442 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !443, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!443 = metadata !{null, metadata !444}
!444 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !437} ; [ DW_TAG_pointer_type ]
!445 = metadata !{i32 786478, i32 0, metadata !437, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !38, i32 36, metadata !446, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !46, i32 36} ; [ DW_TAG_subprogram ]
!446 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !447, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!447 = metadata !{null, metadata !444, metadata !448}
!448 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !449} ; [ DW_TAG_reference_type ]
!449 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !437} ; [ DW_TAG_const_type ]
!450 = metadata !{metadata !451, metadata !274}
!451 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !55, i64 34, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!452 = metadata !{i32 786478, i32 0, metadata !434, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", metadata !34, i32 515, metadata !453, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 515} ; [ DW_TAG_subprogram ]
!453 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !454, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!454 = metadata !{null, metadata !455, metadata !57, metadata !57, metadata !57, metadata !57}
!455 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !434} ; [ DW_TAG_pointer_type ]
!456 = metadata !{i32 786478, i32 0, metadata !434, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", metadata !34, i32 588, metadata !457, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 588} ; [ DW_TAG_subprogram ]
!457 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !458, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!458 = metadata !{metadata !57, metadata !455, metadata !57, metadata !57, metadata !57}
!459 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 646, metadata !460, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 646} ; [ DW_TAG_subprogram ]
!460 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !461, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!461 = metadata !{null, metadata !455}
!462 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base<34, 14, true, 5, 3, 0>", metadata !"ap_fixed_base<34, 14, true, 5, 3, 0>", metadata !"", metadata !34, i32 656, metadata !463, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !466, i32 0, metadata !46, i32 656} ; [ DW_TAG_subprogram ]
!463 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !464, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!464 = metadata !{null, metadata !455, metadata !465}
!465 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !434} ; [ DW_TAG_reference_type ]
!466 = metadata !{metadata !467, metadata !468, metadata !295, metadata !76, metadata !87, metadata !95}
!467 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !55, i64 34, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!468 = metadata !{i32 786480, null, metadata !"_AP_I2", metadata !55, i64 14, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!469 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"", metadata !34, i32 656, metadata !470, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, i32 0, metadata !46, i32 656} ; [ DW_TAG_subprogram ]
!470 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !471, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!471 = metadata !{null, metadata !455, metadata !71}
!472 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base<33, 13, true, 5, 3, 0>", metadata !"ap_fixed_base<33, 13, true, 5, 3, 0>", metadata !"", metadata !34, i32 656, metadata !473, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !292, i32 0, metadata !46, i32 656} ; [ DW_TAG_subprogram ]
!473 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !474, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!474 = metadata !{null, metadata !455, metadata !291}
!475 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base<34, 14, true, 5, 3, 0>", metadata !"ap_fixed_base<34, 14, true, 5, 3, 0>", metadata !"", metadata !34, i32 770, metadata !463, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !466, i32 0, metadata !46, i32 770} ; [ DW_TAG_subprogram ]
!476 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"", metadata !34, i32 770, metadata !470, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, i32 0, metadata !46, i32 770} ; [ DW_TAG_subprogram ]
!477 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base<33, 13, true, 5, 3, 0>", metadata !"ap_fixed_base<33, 13, true, 5, 3, 0>", metadata !"", metadata !34, i32 770, metadata !473, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !292, i32 0, metadata !46, i32 770} ; [ DW_TAG_subprogram ]
!478 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 782, metadata !479, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 782} ; [ DW_TAG_subprogram ]
!479 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !480, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!480 = metadata !{null, metadata !455, metadata !57}
!481 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 783, metadata !482, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 783} ; [ DW_TAG_subprogram ]
!482 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !483, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!483 = metadata !{null, metadata !455, metadata !103}
!484 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 784, metadata !485, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 784} ; [ DW_TAG_subprogram ]
!485 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !486, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!486 = metadata !{null, metadata !455, metadata !107}
!487 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 785, metadata !488, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 785} ; [ DW_TAG_subprogram ]
!488 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !489, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!489 = metadata !{null, metadata !455, metadata !111}
!490 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 786, metadata !491, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 786} ; [ DW_TAG_subprogram ]
!491 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !492, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!492 = metadata !{null, metadata !455, metadata !115}
!493 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 787, metadata !494, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 787} ; [ DW_TAG_subprogram ]
!494 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !495, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!495 = metadata !{null, metadata !455, metadata !119}
!496 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 788, metadata !497, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 788} ; [ DW_TAG_subprogram ]
!497 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !498, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!498 = metadata !{null, metadata !455, metadata !55}
!499 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 789, metadata !500, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 789} ; [ DW_TAG_subprogram ]
!500 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !501, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!501 = metadata !{null, metadata !455, metadata !126}
!502 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 791, metadata !503, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 791} ; [ DW_TAG_subprogram ]
!503 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !504, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!504 = metadata !{null, metadata !455, metadata !130}
!505 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 792, metadata !506, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 792} ; [ DW_TAG_subprogram ]
!506 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !507, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!507 = metadata !{null, metadata !455, metadata !134}
!508 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 797, metadata !509, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 797} ; [ DW_TAG_subprogram ]
!509 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !510, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!510 = metadata !{null, metadata !455, metadata !138}
!511 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 798, metadata !512, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 798} ; [ DW_TAG_subprogram ]
!512 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !513, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!513 = metadata !{null, metadata !455, metadata !143}
!514 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 799, metadata !515, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 799} ; [ DW_TAG_subprogram ]
!515 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !516, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!516 = metadata !{null, metadata !455, metadata !148}
!517 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 806, metadata !518, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 806} ; [ DW_TAG_subprogram ]
!518 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !519, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!519 = metadata !{null, metadata !455, metadata !148, metadata !107}
!520 = metadata !{i32 786478, i32 0, metadata !434, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15doubleToRawBitsEd", metadata !34, i32 842, metadata !521, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 842} ; [ DW_TAG_subprogram ]
!521 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !522, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!522 = metadata !{metadata !144, metadata !523, metadata !158}
!523 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !524} ; [ DW_TAG_pointer_type ]
!524 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !434} ; [ DW_TAG_const_type ]
!525 = metadata !{i32 786478, i32 0, metadata !434, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15rawBitsToDoubleEy", metadata !34, i32 851, metadata !526, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 851} ; [ DW_TAG_subprogram ]
!526 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !527, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!527 = metadata !{metadata !158, metadata !523, metadata !144}
!528 = metadata !{i32 786478, i32 0, metadata !434, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14rawBitsToFloatEj", metadata !34, i32 860, metadata !529, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 860} ; [ DW_TAG_subprogram ]
!529 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !530, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!530 = metadata !{metadata !165, metadata !523, metadata !126}
!531 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 869, metadata !532, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 869} ; [ DW_TAG_subprogram ]
!532 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !533, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!533 = metadata !{null, metadata !455, metadata !158}
!534 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !34, i32 982, metadata !535, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 982} ; [ DW_TAG_subprogram ]
!535 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !536, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!536 = metadata !{metadata !465, metadata !455, metadata !465}
!537 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !34, i32 989, metadata !535, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 989} ; [ DW_TAG_subprogram ]
!538 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !34, i32 996, metadata !539, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 996} ; [ DW_TAG_subprogram ]
!539 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !540, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!540 = metadata !{null, metadata !541, metadata !465}
!541 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !542} ; [ DW_TAG_pointer_type ]
!542 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !434} ; [ DW_TAG_volatile_type ]
!543 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !34, i32 1002, metadata !539, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1002} ; [ DW_TAG_subprogram ]
!544 = metadata !{i32 786478, i32 0, metadata !434, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", metadata !34, i32 1011, metadata !545, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1011} ; [ DW_TAG_subprogram ]
!545 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !546, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!546 = metadata !{metadata !465, metadata !455, metadata !144}
!547 = metadata !{i32 786478, i32 0, metadata !434, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", metadata !34, i32 1017, metadata !548, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1017} ; [ DW_TAG_subprogram ]
!548 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !549, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!549 = metadata !{metadata !434, metadata !144}
!550 = metadata !{i32 786478, i32 0, metadata !434, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", metadata !34, i32 1026, metadata !551, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1026} ; [ DW_TAG_subprogram ]
!551 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !552, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!552 = metadata !{metadata !553, metadata !523, metadata !57}
!553 = metadata !{i32 786434, null, metadata !"ap_int_base<14, true, true>", metadata !78, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!554 = metadata !{i32 786478, i32 0, metadata !434, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", metadata !34, i32 1061, metadata !555, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1061} ; [ DW_TAG_subprogram ]
!555 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !556, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!556 = metadata !{metadata !55, metadata !523}
!557 = metadata !{i32 786478, i32 0, metadata !434, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", metadata !34, i32 1064, metadata !558, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1064} ; [ DW_TAG_subprogram ]
!558 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !559, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!559 = metadata !{metadata !126, metadata !523}
!560 = metadata !{i32 786478, i32 0, metadata !434, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", metadata !34, i32 1067, metadata !561, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1067} ; [ DW_TAG_subprogram ]
!561 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !562, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!562 = metadata !{metadata !138, metadata !523}
!563 = metadata !{i32 786478, i32 0, metadata !434, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", metadata !34, i32 1070, metadata !564, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1070} ; [ DW_TAG_subprogram ]
!564 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !565, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!565 = metadata !{metadata !143, metadata !523}
!566 = metadata !{i32 786478, i32 0, metadata !434, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", metadata !34, i32 1073, metadata !567, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1073} ; [ DW_TAG_subprogram ]
!567 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !568, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!568 = metadata !{metadata !158, metadata !523}
!569 = metadata !{i32 786478, i32 0, metadata !434, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", metadata !34, i32 1107, metadata !570, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1107} ; [ DW_TAG_subprogram ]
!570 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !571, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!571 = metadata !{metadata !165, metadata !523}
!572 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", metadata !34, i32 1142, metadata !567, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1142} ; [ DW_TAG_subprogram ]
!573 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", metadata !34, i32 1146, metadata !570, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1146} ; [ DW_TAG_subprogram ]
!574 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", metadata !34, i32 1150, metadata !575, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1150} ; [ DW_TAG_subprogram ]
!575 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !576, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!576 = metadata !{metadata !103, metadata !523}
!577 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator signed char", metadata !"operator signed char", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", metadata !34, i32 1154, metadata !578, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1154} ; [ DW_TAG_subprogram ]
!578 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !579, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!579 = metadata !{metadata !107, metadata !523}
!580 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", metadata !34, i32 1158, metadata !581, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1158} ; [ DW_TAG_subprogram ]
!581 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !582, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!582 = metadata !{metadata !111, metadata !523}
!583 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator short", metadata !"operator short", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", metadata !34, i32 1162, metadata !584, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1162} ; [ DW_TAG_subprogram ]
!584 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !585, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!585 = metadata !{metadata !115, metadata !523}
!586 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator unsigned short", metadata !"operator unsigned short", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", metadata !34, i32 1166, metadata !587, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1166} ; [ DW_TAG_subprogram ]
!587 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !588, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!588 = metadata !{metadata !119, metadata !523}
!589 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", metadata !34, i32 1171, metadata !555, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1171} ; [ DW_TAG_subprogram ]
!590 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", metadata !34, i32 1175, metadata !558, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1175} ; [ DW_TAG_subprogram ]
!591 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator long", metadata !"operator long", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", metadata !34, i32 1180, metadata !592, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1180} ; [ DW_TAG_subprogram ]
!592 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !593, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!593 = metadata !{metadata !130, metadata !523}
!594 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator unsigned long", metadata !"operator unsigned long", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", metadata !34, i32 1184, metadata !595, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1184} ; [ DW_TAG_subprogram ]
!595 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !596, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!596 = metadata !{metadata !134, metadata !523}
!597 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", metadata !34, i32 1197, metadata !598, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1197} ; [ DW_TAG_subprogram ]
!598 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !599, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!599 = metadata !{metadata !144, metadata !523}
!600 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", metadata !34, i32 1201, metadata !601, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1201} ; [ DW_TAG_subprogram ]
!601 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !602, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!602 = metadata !{metadata !139, metadata !523}
!603 = metadata !{i32 786478, i32 0, metadata !434, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", metadata !34, i32 1205, metadata !555, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1205} ; [ DW_TAG_subprogram ]
!604 = metadata !{i32 786478, i32 0, metadata !434, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", metadata !34, i32 1209, metadata !605, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1209} ; [ DW_TAG_subprogram ]
!605 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !606, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!606 = metadata !{metadata !55, metadata !455}
!607 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", metadata !34, i32 1310, metadata !608, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1310} ; [ DW_TAG_subprogram ]
!608 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !609, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!609 = metadata !{metadata !465, metadata !455}
!610 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", metadata !34, i32 1314, metadata !608, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1314} ; [ DW_TAG_subprogram ]
!611 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", metadata !34, i32 1322, metadata !612, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1322} ; [ DW_TAG_subprogram ]
!612 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !613, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!613 = metadata !{metadata !524, metadata !455, metadata !55}
!614 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", metadata !34, i32 1328, metadata !612, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1328} ; [ DW_TAG_subprogram ]
!615 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", metadata !34, i32 1336, metadata !616, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1336} ; [ DW_TAG_subprogram ]
!616 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !617, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!617 = metadata !{metadata !434, metadata !455}
!618 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", metadata !34, i32 1340, metadata !619, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1340} ; [ DW_TAG_subprogram ]
!619 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !620, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!620 = metadata !{metadata !621, metadata !523}
!621 = metadata !{i32 786434, null, metadata !"ap_fixed_base<35, 15, true, 5, 3, 0>", metadata !34, i32 510, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!622 = metadata !{i32 786478, i32 0, metadata !434, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", metadata !34, i32 1346, metadata !616, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1346} ; [ DW_TAG_subprogram ]
!623 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", metadata !34, i32 1354, metadata !624, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1354} ; [ DW_TAG_subprogram ]
!624 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !625, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!625 = metadata !{metadata !57, metadata !523}
!626 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", metadata !34, i32 1360, metadata !627, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1360} ; [ DW_TAG_subprogram ]
!627 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !628, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!628 = metadata !{metadata !434, metadata !523}
!629 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", metadata !34, i32 1383, metadata !630, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1383} ; [ DW_TAG_subprogram ]
!630 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !631, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!631 = metadata !{metadata !434, metadata !523, metadata !55}
!632 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", metadata !34, i32 1442, metadata !633, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1442} ; [ DW_TAG_subprogram ]
!633 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !634, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!634 = metadata !{metadata !434, metadata !523, metadata !126}
!635 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", metadata !34, i32 1486, metadata !630, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1486} ; [ DW_TAG_subprogram ]
!636 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", metadata !34, i32 1544, metadata !633, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1544} ; [ DW_TAG_subprogram ]
!637 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", metadata !34, i32 1596, metadata !638, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1596} ; [ DW_TAG_subprogram ]
!638 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !639, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!639 = metadata !{metadata !465, metadata !455, metadata !55}
!640 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", metadata !34, i32 1659, metadata !641, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1659} ; [ DW_TAG_subprogram ]
!641 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !642, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!642 = metadata !{metadata !465, metadata !455, metadata !126}
!643 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", metadata !34, i32 1706, metadata !638, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1706} ; [ DW_TAG_subprogram ]
!644 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", metadata !34, i32 1768, metadata !641, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1768} ; [ DW_TAG_subprogram ]
!645 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", metadata !34, i32 1846, metadata !646, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1846} ; [ DW_TAG_subprogram ]
!646 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !647, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!647 = metadata !{metadata !57, metadata !523, metadata !158}
!648 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", metadata !34, i32 1847, metadata !646, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1847} ; [ DW_TAG_subprogram ]
!649 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", metadata !34, i32 1848, metadata !646, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1848} ; [ DW_TAG_subprogram ]
!650 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", metadata !34, i32 1849, metadata !646, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1849} ; [ DW_TAG_subprogram ]
!651 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", metadata !34, i32 1850, metadata !646, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1850} ; [ DW_TAG_subprogram ]
!652 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", metadata !34, i32 1851, metadata !646, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1851} ; [ DW_TAG_subprogram ]
!653 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !34, i32 1854, metadata !654, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1854} ; [ DW_TAG_subprogram ]
!654 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !655, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!655 = metadata !{metadata !656, metadata !455, metadata !126}
!656 = metadata !{i32 786434, null, metadata !"af_bit_ref<34, 14, true, 5, 3, 0>", metadata !34, i32 91, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!657 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !34, i32 1866, metadata !658, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1866} ; [ DW_TAG_subprogram ]
!658 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !659, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!659 = metadata !{metadata !57, metadata !523, metadata !126}
!660 = metadata !{i32 786478, i32 0, metadata !434, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !34, i32 1871, metadata !654, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1871} ; [ DW_TAG_subprogram ]
!661 = metadata !{i32 786478, i32 0, metadata !434, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !34, i32 1884, metadata !658, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1884} ; [ DW_TAG_subprogram ]
!662 = metadata !{i32 786478, i32 0, metadata !434, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !34, i32 1896, metadata !663, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1896} ; [ DW_TAG_subprogram ]
!663 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !664, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!664 = metadata !{metadata !57, metadata !523, metadata !55}
!665 = metadata !{i32 786478, i32 0, metadata !434, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !34, i32 1902, metadata !666, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1902} ; [ DW_TAG_subprogram ]
!666 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !667, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!667 = metadata !{metadata !656, metadata !455, metadata !55}
!668 = metadata !{i32 786478, i32 0, metadata !434, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !34, i32 1917, metadata !669, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1917} ; [ DW_TAG_subprogram ]
!669 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !670, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!670 = metadata !{metadata !671, metadata !455, metadata !55, metadata !55}
!671 = metadata !{i32 786434, null, metadata !"af_range_ref<34, 14, true, 5, 3, 0>", metadata !34, i32 236, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!672 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !34, i32 1923, metadata !669, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1923} ; [ DW_TAG_subprogram ]
!673 = metadata !{i32 786478, i32 0, metadata !434, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !34, i32 1929, metadata !674, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1929} ; [ DW_TAG_subprogram ]
!674 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !675, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!675 = metadata !{metadata !671, metadata !523, metadata !55, metadata !55}
!676 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !34, i32 1978, metadata !674, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1978} ; [ DW_TAG_subprogram ]
!677 = metadata !{i32 786478, i32 0, metadata !434, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !34, i32 1983, metadata !678, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1983} ; [ DW_TAG_subprogram ]
!678 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !679, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!679 = metadata !{metadata !671, metadata !455}
!680 = metadata !{i32 786478, i32 0, metadata !434, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !34, i32 1988, metadata !681, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1988} ; [ DW_TAG_subprogram ]
!681 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !682, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!682 = metadata !{metadata !671, metadata !523}
!683 = metadata !{i32 786478, i32 0, metadata !434, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", metadata !34, i32 1992, metadata !624, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1992} ; [ DW_TAG_subprogram ]
!684 = metadata !{i32 786478, i32 0, metadata !434, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", metadata !34, i32 1996, metadata !624, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1996} ; [ DW_TAG_subprogram ]
!685 = metadata !{i32 786478, i32 0, metadata !434, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", metadata !34, i32 2002, metadata !555, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2002} ; [ DW_TAG_subprogram ]
!686 = metadata !{i32 786478, i32 0, metadata !434, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", metadata !34, i32 2006, metadata !555, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2006} ; [ DW_TAG_subprogram ]
!687 = metadata !{i32 786478, i32 0, metadata !434, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", metadata !34, i32 2010, metadata !688, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2010} ; [ DW_TAG_subprogram ]
!688 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !689, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!689 = metadata !{metadata !77, metadata !523}
!690 = metadata !{i32 786478, i32 0, metadata !434, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", metadata !34, i32 2014, metadata !691, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2014} ; [ DW_TAG_subprogram ]
!691 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !692, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!692 = metadata !{metadata !88, metadata !523}
!693 = metadata !{i32 786478, i32 0, metadata !434, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", metadata !34, i32 2018, metadata !555, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2018} ; [ DW_TAG_subprogram ]
!694 = metadata !{i32 786478, i32 0, metadata !434, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringE8BaseMode", metadata !34, i32 2022, metadata !695, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2022} ; [ DW_TAG_subprogram ]
!695 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !696, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!696 = metadata !{metadata !697, metadata !455, metadata !698}
!697 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ]
!698 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !78, i32 603, i64 5, i64 8, i32 0, i32 0, null, metadata !699, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!699 = metadata !{metadata !700, metadata !701, metadata !702, metadata !703}
!700 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!701 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!702 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!703 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!704 = metadata !{i32 786478, i32 0, metadata !434, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEa", metadata !34, i32 2026, metadata !705, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2026} ; [ DW_TAG_subprogram ]
!705 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !706, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!706 = metadata !{metadata !697, metadata !455, metadata !107}
!707 = metadata !{i32 786478, i32 0, metadata !434, metadata !"~ap_fixed_base", metadata !"~ap_fixed_base", metadata !"", metadata !34, i32 510, metadata !460, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !46, i32 510} ; [ DW_TAG_subprogram ]
!708 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 510, metadata !709, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !46, i32 510} ; [ DW_TAG_subprogram ]
!709 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !710, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!710 = metadata !{null, metadata !455, metadata !711}
!711 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !524} ; [ DW_TAG_reference_type ]
!712 = metadata !{metadata !713, metadata !714, metadata !274, metadata !715, metadata !716, metadata !717}
!713 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !55, i64 34, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!714 = metadata !{i32 786480, null, metadata !"_AP_I", metadata !55, i64 14, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!715 = metadata !{i32 786480, null, metadata !"_AP_Q", metadata !77, i64 5, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!716 = metadata !{i32 786480, null, metadata !"_AP_O", metadata !88, i64 3, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!717 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !55, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!718 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", metadata !34, i32 1310, metadata !719, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1310} ; [ DW_TAG_subprogram ]
!719 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !720, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!720 = metadata !{metadata !291, metadata !278}
!721 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", metadata !34, i32 1314, metadata !719, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1314} ; [ DW_TAG_subprogram ]
!722 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", metadata !34, i32 1322, metadata !723, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1322} ; [ DW_TAG_subprogram ]
!723 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !724, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!724 = metadata !{metadata !344, metadata !278, metadata !55}
!725 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", metadata !34, i32 1328, metadata !723, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1328} ; [ DW_TAG_subprogram ]
!726 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", metadata !34, i32 1336, metadata !727, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1336} ; [ DW_TAG_subprogram ]
!727 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !728, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!728 = metadata !{metadata !256, metadata !278}
!729 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", metadata !34, i32 1340, metadata !730, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1340} ; [ DW_TAG_subprogram ]
!730 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !731, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!731 = metadata !{metadata !434, metadata !343}
!732 = metadata !{i32 786478, i32 0, metadata !256, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", metadata !34, i32 1346, metadata !727, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1346} ; [ DW_TAG_subprogram ]
!733 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", metadata !34, i32 1354, metadata !734, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1354} ; [ DW_TAG_subprogram ]
!734 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !735, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!735 = metadata !{metadata !57, metadata !343}
!736 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", metadata !34, i32 1360, metadata !737, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1360} ; [ DW_TAG_subprogram ]
!737 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !738, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!738 = metadata !{metadata !256, metadata !343}
!739 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", metadata !34, i32 1383, metadata !740, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1383} ; [ DW_TAG_subprogram ]
!740 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !741, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!741 = metadata !{metadata !256, metadata !343, metadata !55}
!742 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", metadata !34, i32 1442, metadata !743, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1442} ; [ DW_TAG_subprogram ]
!743 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !744, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!744 = metadata !{metadata !256, metadata !343, metadata !126}
!745 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", metadata !34, i32 1486, metadata !740, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1486} ; [ DW_TAG_subprogram ]
!746 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", metadata !34, i32 1544, metadata !743, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1544} ; [ DW_TAG_subprogram ]
!747 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", metadata !34, i32 1596, metadata !748, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1596} ; [ DW_TAG_subprogram ]
!748 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !749, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!749 = metadata !{metadata !291, metadata !278, metadata !55}
!750 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", metadata !34, i32 1659, metadata !751, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1659} ; [ DW_TAG_subprogram ]
!751 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !752, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!752 = metadata !{metadata !291, metadata !278, metadata !126}
!753 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", metadata !34, i32 1706, metadata !748, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1706} ; [ DW_TAG_subprogram ]
!754 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", metadata !34, i32 1768, metadata !751, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1768} ; [ DW_TAG_subprogram ]
!755 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", metadata !34, i32 1846, metadata !756, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1846} ; [ DW_TAG_subprogram ]
!756 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !757, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!757 = metadata !{metadata !57, metadata !343, metadata !158}
!758 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", metadata !34, i32 1847, metadata !756, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1847} ; [ DW_TAG_subprogram ]
!759 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", metadata !34, i32 1848, metadata !756, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1848} ; [ DW_TAG_subprogram ]
!760 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", metadata !34, i32 1849, metadata !756, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1849} ; [ DW_TAG_subprogram ]
!761 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", metadata !34, i32 1850, metadata !756, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1850} ; [ DW_TAG_subprogram ]
!762 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", metadata !34, i32 1851, metadata !756, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1851} ; [ DW_TAG_subprogram ]
!763 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !34, i32 1854, metadata !764, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1854} ; [ DW_TAG_subprogram ]
!764 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !765, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!765 = metadata !{metadata !766, metadata !278, metadata !126}
!766 = metadata !{i32 786434, null, metadata !"af_bit_ref<33, 13, true, 5, 3, 0>", metadata !34, i32 91, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!767 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !34, i32 1866, metadata !768, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1866} ; [ DW_TAG_subprogram ]
!768 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !769, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!769 = metadata !{metadata !57, metadata !343, metadata !126}
!770 = metadata !{i32 786478, i32 0, metadata !256, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !34, i32 1871, metadata !764, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1871} ; [ DW_TAG_subprogram ]
!771 = metadata !{i32 786478, i32 0, metadata !256, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !34, i32 1884, metadata !768, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1884} ; [ DW_TAG_subprogram ]
!772 = metadata !{i32 786478, i32 0, metadata !256, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !34, i32 1896, metadata !773, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1896} ; [ DW_TAG_subprogram ]
!773 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !774, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!774 = metadata !{metadata !57, metadata !343, metadata !55}
!775 = metadata !{i32 786478, i32 0, metadata !256, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !34, i32 1902, metadata !776, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1902} ; [ DW_TAG_subprogram ]
!776 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !777, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!777 = metadata !{metadata !766, metadata !278, metadata !55}
!778 = metadata !{i32 786478, i32 0, metadata !256, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !34, i32 1917, metadata !779, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1917} ; [ DW_TAG_subprogram ]
!779 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !780, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!780 = metadata !{metadata !781, metadata !278, metadata !55, metadata !55}
!781 = metadata !{i32 786434, null, metadata !"af_range_ref<33, 13, true, 5, 3, 0>", metadata !34, i32 236, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!782 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !34, i32 1923, metadata !779, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1923} ; [ DW_TAG_subprogram ]
!783 = metadata !{i32 786478, i32 0, metadata !256, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !34, i32 1929, metadata !784, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1929} ; [ DW_TAG_subprogram ]
!784 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !785, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!785 = metadata !{metadata !781, metadata !343, metadata !55, metadata !55}
!786 = metadata !{i32 786478, i32 0, metadata !256, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !34, i32 1978, metadata !784, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1978} ; [ DW_TAG_subprogram ]
!787 = metadata !{i32 786478, i32 0, metadata !256, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !34, i32 1983, metadata !788, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1983} ; [ DW_TAG_subprogram ]
!788 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !789, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!789 = metadata !{metadata !781, metadata !278}
!790 = metadata !{i32 786478, i32 0, metadata !256, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !34, i32 1988, metadata !791, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1988} ; [ DW_TAG_subprogram ]
!791 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !792, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!792 = metadata !{metadata !781, metadata !343}
!793 = metadata !{i32 786478, i32 0, metadata !256, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", metadata !34, i32 1992, metadata !734, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1992} ; [ DW_TAG_subprogram ]
!794 = metadata !{i32 786478, i32 0, metadata !256, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", metadata !34, i32 1996, metadata !734, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1996} ; [ DW_TAG_subprogram ]
!795 = metadata !{i32 786478, i32 0, metadata !256, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", metadata !34, i32 2002, metadata !375, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2002} ; [ DW_TAG_subprogram ]
!796 = metadata !{i32 786478, i32 0, metadata !256, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", metadata !34, i32 2006, metadata !375, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2006} ; [ DW_TAG_subprogram ]
!797 = metadata !{i32 786478, i32 0, metadata !256, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", metadata !34, i32 2010, metadata !798, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2010} ; [ DW_TAG_subprogram ]
!798 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !799, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!799 = metadata !{metadata !77, metadata !343}
!800 = metadata !{i32 786478, i32 0, metadata !256, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", metadata !34, i32 2014, metadata !801, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2014} ; [ DW_TAG_subprogram ]
!801 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !802, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!802 = metadata !{metadata !88, metadata !343}
!803 = metadata !{i32 786478, i32 0, metadata !256, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", metadata !34, i32 2018, metadata !375, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2018} ; [ DW_TAG_subprogram ]
!804 = metadata !{i32 786478, i32 0, metadata !256, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringE8BaseMode", metadata !34, i32 2022, metadata !805, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2022} ; [ DW_TAG_subprogram ]
!805 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !806, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!806 = metadata !{metadata !697, metadata !278, metadata !698}
!807 = metadata !{i32 786478, i32 0, metadata !256, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEa", metadata !34, i32 2026, metadata !808, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2026} ; [ DW_TAG_subprogram ]
!808 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !809, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!809 = metadata !{metadata !697, metadata !278, metadata !107}
!810 = metadata !{i32 786478, i32 0, metadata !256, metadata !"~ap_fixed_base", metadata !"~ap_fixed_base", metadata !"", metadata !34, i32 510, metadata !283, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !46, i32 510} ; [ DW_TAG_subprogram ]
!811 = metadata !{i32 786478, i32 0, metadata !256, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 510, metadata !812, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !46, i32 510} ; [ DW_TAG_subprogram ]
!812 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !813, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!813 = metadata !{null, metadata !278, metadata !814}
!814 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !344} ; [ DW_TAG_reference_type ]
!815 = metadata !{metadata !816, metadata !817, metadata !274, metadata !715, metadata !716, metadata !717}
!816 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !55, i64 33, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!817 = metadata !{i32 786480, null, metadata !"_AP_I", metadata !55, i64 13, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!818 = metadata !{i32 786478, i32 0, metadata !33, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", metadata !34, i32 1346, metadata !819, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1346} ; [ DW_TAG_subprogram ]
!819 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !820, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!820 = metadata !{metadata !821, metadata !61}
!821 = metadata !{i32 786434, null, metadata !"ap_fixed_base<32, 12, true, 5, 3, 0>", metadata !34, i32 510, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!822 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", metadata !34, i32 1354, metadata !823, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1354} ; [ DW_TAG_subprogram ]
!823 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !824, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!824 = metadata !{metadata !57, metadata !156}
!825 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", metadata !34, i32 1360, metadata !826, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1360} ; [ DW_TAG_subprogram ]
!826 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !827, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!827 = metadata !{metadata !33, metadata !156}
!828 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", metadata !34, i32 1383, metadata !829, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1383} ; [ DW_TAG_subprogram ]
!829 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !830, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!830 = metadata !{metadata !33, metadata !156, metadata !55}
!831 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", metadata !34, i32 1442, metadata !832, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1442} ; [ DW_TAG_subprogram ]
!832 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !833, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!833 = metadata !{metadata !33, metadata !156, metadata !126}
!834 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", metadata !34, i32 1486, metadata !829, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1486} ; [ DW_TAG_subprogram ]
!835 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", metadata !34, i32 1544, metadata !832, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1544} ; [ DW_TAG_subprogram ]
!836 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", metadata !34, i32 1596, metadata !837, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1596} ; [ DW_TAG_subprogram ]
!837 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !838, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!838 = metadata !{metadata !71, metadata !61, metadata !55}
!839 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", metadata !34, i32 1659, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1659} ; [ DW_TAG_subprogram ]
!840 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !841, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!841 = metadata !{metadata !71, metadata !61, metadata !126}
!842 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", metadata !34, i32 1706, metadata !837, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1706} ; [ DW_TAG_subprogram ]
!843 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", metadata !34, i32 1768, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1768} ; [ DW_TAG_subprogram ]
!844 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", metadata !34, i32 1846, metadata !845, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1846} ; [ DW_TAG_subprogram ]
!845 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !846, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!846 = metadata !{metadata !57, metadata !156, metadata !158}
!847 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", metadata !34, i32 1847, metadata !845, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1847} ; [ DW_TAG_subprogram ]
!848 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", metadata !34, i32 1848, metadata !845, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1848} ; [ DW_TAG_subprogram ]
!849 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", metadata !34, i32 1849, metadata !845, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1849} ; [ DW_TAG_subprogram ]
!850 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", metadata !34, i32 1850, metadata !845, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1850} ; [ DW_TAG_subprogram ]
!851 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", metadata !34, i32 1851, metadata !845, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1851} ; [ DW_TAG_subprogram ]
!852 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !34, i32 1854, metadata !853, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1854} ; [ DW_TAG_subprogram ]
!853 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !854, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!854 = metadata !{metadata !855, metadata !61, metadata !126}
!855 = metadata !{i32 786434, null, metadata !"af_bit_ref<32, 12, false, 5, 3, 0>", metadata !34, i32 91, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!856 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !34, i32 1866, metadata !857, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1866} ; [ DW_TAG_subprogram ]
!857 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !858, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!858 = metadata !{metadata !57, metadata !156, metadata !126}
!859 = metadata !{i32 786478, i32 0, metadata !33, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !34, i32 1871, metadata !853, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1871} ; [ DW_TAG_subprogram ]
!860 = metadata !{i32 786478, i32 0, metadata !33, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !34, i32 1884, metadata !857, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1884} ; [ DW_TAG_subprogram ]
!861 = metadata !{i32 786478, i32 0, metadata !33, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !34, i32 1896, metadata !862, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1896} ; [ DW_TAG_subprogram ]
!862 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !863, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!863 = metadata !{metadata !57, metadata !156, metadata !55}
!864 = metadata !{i32 786478, i32 0, metadata !33, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !34, i32 1902, metadata !865, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1902} ; [ DW_TAG_subprogram ]
!865 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !866, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!866 = metadata !{metadata !855, metadata !61, metadata !55}
!867 = metadata !{i32 786478, i32 0, metadata !33, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !34, i32 1917, metadata !868, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1917} ; [ DW_TAG_subprogram ]
!868 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !869, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!869 = metadata !{metadata !870, metadata !61, metadata !55, metadata !55}
!870 = metadata !{i32 786434, null, metadata !"af_range_ref<32, 12, false, 5, 3, 0>", metadata !34, i32 236, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!871 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !34, i32 1923, metadata !868, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1923} ; [ DW_TAG_subprogram ]
!872 = metadata !{i32 786478, i32 0, metadata !33, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !34, i32 1929, metadata !873, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1929} ; [ DW_TAG_subprogram ]
!873 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !874, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!874 = metadata !{metadata !870, metadata !156, metadata !55, metadata !55}
!875 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !34, i32 1978, metadata !873, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1978} ; [ DW_TAG_subprogram ]
!876 = metadata !{i32 786478, i32 0, metadata !33, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !34, i32 1983, metadata !877, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1983} ; [ DW_TAG_subprogram ]
!877 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !878, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!878 = metadata !{metadata !870, metadata !61}
!879 = metadata !{i32 786478, i32 0, metadata !33, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !34, i32 1988, metadata !880, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1988} ; [ DW_TAG_subprogram ]
!880 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !881, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!881 = metadata !{metadata !870, metadata !156}
!882 = metadata !{i32 786478, i32 0, metadata !33, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", metadata !34, i32 1992, metadata !823, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1992} ; [ DW_TAG_subprogram ]
!883 = metadata !{i32 786478, i32 0, metadata !33, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", metadata !34, i32 1996, metadata !823, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1996} ; [ DW_TAG_subprogram ]
!884 = metadata !{i32 786478, i32 0, metadata !33, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", metadata !34, i32 2002, metadata !190, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2002} ; [ DW_TAG_subprogram ]
!885 = metadata !{i32 786478, i32 0, metadata !33, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", metadata !34, i32 2006, metadata !190, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2006} ; [ DW_TAG_subprogram ]
!886 = metadata !{i32 786478, i32 0, metadata !33, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", metadata !34, i32 2010, metadata !887, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2010} ; [ DW_TAG_subprogram ]
!887 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !888, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!888 = metadata !{metadata !77, metadata !156}
!889 = metadata !{i32 786478, i32 0, metadata !33, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", metadata !34, i32 2014, metadata !890, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2014} ; [ DW_TAG_subprogram ]
!890 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !891, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!891 = metadata !{metadata !88, metadata !156}
!892 = metadata !{i32 786478, i32 0, metadata !33, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", metadata !34, i32 2018, metadata !190, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2018} ; [ DW_TAG_subprogram ]
!893 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringE8BaseMode", metadata !34, i32 2022, metadata !894, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2022} ; [ DW_TAG_subprogram ]
!894 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !895, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!895 = metadata !{metadata !697, metadata !61, metadata !698}
!896 = metadata !{i32 786478, i32 0, metadata !33, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEa", metadata !34, i32 2026, metadata !897, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2026} ; [ DW_TAG_subprogram ]
!897 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !898, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!898 = metadata !{metadata !697, metadata !61, metadata !107}
!899 = metadata !{i32 786478, i32 0, metadata !33, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 510, metadata !900, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !46, i32 510} ; [ DW_TAG_subprogram ]
!900 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !901, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!901 = metadata !{null, metadata !61, metadata !902}
!902 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !157} ; [ DW_TAG_reference_type ]
!903 = metadata !{metadata !904, metadata !905, metadata !56, metadata !715, metadata !716, metadata !717}
!904 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !55, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!905 = metadata !{i32 786480, null, metadata !"_AP_I", metadata !55, i64 12, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!906 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_ufixed", metadata !"ap_ufixed", metadata !"", metadata !30, i32 410, metadata !907, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 410} ; [ DW_TAG_subprogram ]
!907 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !908, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!908 = metadata !{null, metadata !909}
!909 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !29} ; [ DW_TAG_pointer_type ]
!910 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_ufixed<32, 12, 5, 3, 0>", metadata !"ap_ufixed<32, 12, 5, 3, 0>", metadata !"", metadata !30, i32 421, metadata !911, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !914, i32 0, metadata !46, i32 421} ; [ DW_TAG_subprogram ]
!911 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !912, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!912 = metadata !{null, metadata !909, metadata !913}
!913 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_reference_type ]
!914 = metadata !{metadata !73, metadata !74, metadata !76, metadata !87, metadata !95}
!915 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_ufixed<32, 12, 5, 3, 0>", metadata !"ap_ufixed<32, 12, 5, 3, 0>", metadata !"", metadata !30, i32 441, metadata !911, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !914, i32 0, metadata !46, i32 441} ; [ DW_TAG_subprogram ]
!916 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_ufixed<32, 12, false, 5, 3, 0>", metadata !"ap_ufixed<32, 12, false, 5, 3, 0>", metadata !"", metadata !30, i32 454, metadata !917, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, i32 0, metadata !46, i32 454} ; [ DW_TAG_subprogram ]
!917 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !918, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!918 = metadata !{null, metadata !909, metadata !71}
!919 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_ufixed", metadata !"ap_ufixed", metadata !"", metadata !30, i32 484, metadata !920, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 484} ; [ DW_TAG_subprogram ]
!920 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !921, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!921 = metadata !{null, metadata !909, metadata !57}
!922 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_ufixed", metadata !"ap_ufixed", metadata !"", metadata !30, i32 485, metadata !923, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 485} ; [ DW_TAG_subprogram ]
!923 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !924, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!924 = metadata !{null, metadata !909, metadata !107}
!925 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_ufixed", metadata !"ap_ufixed", metadata !"", metadata !30, i32 486, metadata !926, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 486} ; [ DW_TAG_subprogram ]
!926 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !927, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!927 = metadata !{null, metadata !909, metadata !111}
!928 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_ufixed", metadata !"ap_ufixed", metadata !"", metadata !30, i32 487, metadata !929, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 487} ; [ DW_TAG_subprogram ]
!929 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !930, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!930 = metadata !{null, metadata !909, metadata !115}
!931 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_ufixed", metadata !"ap_ufixed", metadata !"", metadata !30, i32 488, metadata !932, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 488} ; [ DW_TAG_subprogram ]
!932 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !933, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!933 = metadata !{null, metadata !909, metadata !119}
!934 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_ufixed", metadata !"ap_ufixed", metadata !"", metadata !30, i32 489, metadata !935, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 489} ; [ DW_TAG_subprogram ]
!935 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !936, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!936 = metadata !{null, metadata !909, metadata !55}
!937 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_ufixed", metadata !"ap_ufixed", metadata !"", metadata !30, i32 490, metadata !938, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 490} ; [ DW_TAG_subprogram ]
!938 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !939, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!939 = metadata !{null, metadata !909, metadata !126}
!940 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_ufixed", metadata !"ap_ufixed", metadata !"", metadata !30, i32 491, metadata !941, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 491} ; [ DW_TAG_subprogram ]
!941 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !942, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!942 = metadata !{null, metadata !909, metadata !130}
!943 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_ufixed", metadata !"ap_ufixed", metadata !"", metadata !30, i32 492, metadata !944, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 492} ; [ DW_TAG_subprogram ]
!944 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !945, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!945 = metadata !{null, metadata !909, metadata !134}
!946 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_ufixed", metadata !"ap_ufixed", metadata !"", metadata !30, i32 493, metadata !947, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 493} ; [ DW_TAG_subprogram ]
!947 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !948, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!948 = metadata !{null, metadata !909, metadata !144}
!949 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_ufixed", metadata !"ap_ufixed", metadata !"", metadata !30, i32 494, metadata !950, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 494} ; [ DW_TAG_subprogram ]
!950 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !951, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!951 = metadata !{null, metadata !909, metadata !139}
!952 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_ufixed", metadata !"ap_ufixed", metadata !"", metadata !30, i32 495, metadata !953, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 495} ; [ DW_TAG_subprogram ]
!953 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !954, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!954 = metadata !{null, metadata !909, metadata !165}
!955 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_ufixed", metadata !"ap_ufixed", metadata !"", metadata !30, i32 496, metadata !956, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 496} ; [ DW_TAG_subprogram ]
!956 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !957, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!957 = metadata !{null, metadata !909, metadata !158}
!958 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_ufixed", metadata !"ap_ufixed", metadata !"", metadata !30, i32 498, metadata !959, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 498} ; [ DW_TAG_subprogram ]
!959 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !960, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!960 = metadata !{null, metadata !909, metadata !148}
!961 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_ufixed", metadata !"ap_ufixed", metadata !"", metadata !30, i32 499, metadata !962, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 499} ; [ DW_TAG_subprogram ]
!962 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !963, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!963 = metadata !{null, metadata !909, metadata !148, metadata !107}
!964 = metadata !{i32 786478, i32 0, metadata !29, metadata !"operator=", metadata !"operator=", metadata !"_ZN9ap_ufixedILi32ELi12EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !30, i32 502, metadata !965, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 502} ; [ DW_TAG_subprogram ]
!965 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !966, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!966 = metadata !{metadata !913, metadata !909, metadata !913}
!967 = metadata !{i32 786478, i32 0, metadata !29, metadata !"operator=", metadata !"operator=", metadata !"_ZN9ap_ufixedILi32ELi12EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !30, i32 508, metadata !965, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 508} ; [ DW_TAG_subprogram ]
!968 = metadata !{i32 786478, i32 0, metadata !29, metadata !"operator=", metadata !"operator=", metadata !"_ZNV9ap_ufixedILi32ELi12EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !30, i32 514, metadata !969, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 514} ; [ DW_TAG_subprogram ]
!969 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !970, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!970 = metadata !{null, metadata !971, metadata !913}
!971 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !972} ; [ DW_TAG_pointer_type ]
!972 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_volatile_type ]
!973 = metadata !{i32 786478, i32 0, metadata !29, metadata !"operator=", metadata !"operator=", metadata !"_ZNV9ap_ufixedILi32ELi12EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !30, i32 519, metadata !969, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 519} ; [ DW_TAG_subprogram ]
!974 = metadata !{i32 786478, i32 0, metadata !29, metadata !"ap_ufixed", metadata !"ap_ufixed", metadata !"", metadata !30, i32 407, metadata !975, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !46, i32 407} ; [ DW_TAG_subprogram ]
!975 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !976, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!976 = metadata !{null, metadata !909, metadata !977}
!977 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !978} ; [ DW_TAG_reference_type ]
!978 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ]
!979 = metadata !{i32 786478, i32 0, metadata !29, metadata !"~ap_ufixed", metadata !"~ap_ufixed", metadata !"", metadata !30, i32 407, metadata !907, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !46, i32 407} ; [ DW_TAG_subprogram ]
!980 = metadata !{metadata !904, metadata !905, metadata !715, metadata !716, metadata !717}
!981 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !982} ; [ DW_TAG_pointer_type ]
!982 = metadata !{i32 786454, null, metadata !"cos_sin_type", metadata !24, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!983 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !984} ; [ DW_TAG_pointer_type ]
!984 = metadata !{i32 786438, null, metadata !"ap_ufixed<32, 12, 5, 3, 0>", metadata !30, i32 407, i64 32, i64 32, i32 0, i32 0, null, metadata !985, i32 0, null, metadata !980} ; [ DW_TAG_class_field_type ]
!985 = metadata !{metadata !986}
!986 = metadata !{i32 786438, null, metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !34, i32 510, i64 32, i64 32, i32 0, i32 0, null, metadata !987, i32 0, null, metadata !903} ; [ DW_TAG_class_field_type ]
!987 = metadata !{metadata !988}
!988 = metadata !{i32 786438, null, metadata !"ssdm_int<32 + 1024 * 0, false>", metadata !38, i32 34, i64 32, i64 32, i32 0, i32 0, null, metadata !989, i32 0, null, metadata !53} ; [ DW_TAG_class_field_type ]
!989 = metadata !{metadata !40}
!990 = metadata !{i32 18, i32 45, metadata !23, null}
!991 = metadata !{i32 790531, metadata !992, metadata !"c.V", null, i32 18, metadata !983, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!992 = metadata !{i32 786689, metadata !23, metadata !"c", metadata !24, i32 50331666, metadata !981, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!993 = metadata !{i32 18, i32 62, metadata !23, null}
!994 = metadata !{i32 47, i32 8, metadata !995, null}
!995 = metadata !{i32 786443, metadata !996, i32 47, i32 3, metadata !24, i32 1} ; [ DW_TAG_lexical_block ]
!996 = metadata !{i32 786443, metadata !23, i32 19, i32 1, metadata !24, i32 0} ; [ DW_TAG_lexical_block ]
!997 = metadata !{i32 47, i32 23, metadata !995, null}
!998 = metadata !{i32 1836, i32 0, metadata !999, metadata !1003}
!999 = metadata !{i32 786443, metadata !1000, i32 1836, i32 230, metadata !34, i32 38} ; [ DW_TAG_lexical_block ]
!1000 = metadata !{i32 786478, i32 0, null, metadata !"operator><32, 12, false, 5, 3, 0>", metadata !"operator><32, 12, false, 5, 3, 0>", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtILi32ELi12ELb0ELS0_5ELS1_3ELi0EEEbRKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !34, i32 1836, metadata !1001, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, null, metadata !46, i32 1836} ; [ DW_TAG_subprogram ]
!1001 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1002, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1002 = metadata !{metadata !57, metadata !156, metadata !71}
!1003 = metadata !{i32 48, i32 8, metadata !1004, null}
!1004 = metadata !{i32 786443, metadata !995, i32 47, i32 30, metadata !24, i32 2} ; [ DW_TAG_lexical_block ]
!1005 = metadata !{i32 786689, metadata !1006, metadata !"sh", metadata !34, i32 33555976, metadata !126, i32 0, metadata !1007} ; [ DW_TAG_arg_variable ]
!1006 = metadata !{i32 786478, i32 0, null, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", metadata !34, i32 1544, metadata !832, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !835, metadata !46, i32 1544} ; [ DW_TAG_subprogram ]
!1007 = metadata !{i32 49, i32 14, metadata !1008, null}
!1008 = metadata !{i32 786443, metadata !1004, i32 48, i32 24, metadata !24, i32 3} ; [ DW_TAG_lexical_block ]
!1009 = metadata !{i32 1544, i32 27, metadata !1006, metadata !1007}
!1010 = metadata !{i32 1549, i32 9, metadata !1011, metadata !1007}
!1011 = metadata !{i32 786443, metadata !1006, i32 1544, i32 37, metadata !34, i32 36} ; [ DW_TAG_lexical_block ]
!1012 = metadata !{i32 786688, metadata !1013, metadata !"__Val2__", metadata !34, i32 668, metadata !41, i32 0, metadata !1016} ; [ DW_TAG_auto_variable ]
!1013 = metadata !{i32 786443, metadata !1014, i32 668, i32 25, metadata !34, i32 22} ; [ DW_TAG_lexical_block ]
!1014 = metadata !{i32 786443, metadata !1015, i32 656, i32 115, metadata !34, i32 21} ; [ DW_TAG_lexical_block ]
!1015 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2ILi32ELi12ELb0ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !34, i32 656, metadata !286, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, metadata !285, metadata !46, i32 656} ; [ DW_TAG_subprogram ]
!1016 = metadata !{i32 766, i32 5, metadata !1017, metadata !1018}
!1017 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi32ELi12ELb0ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !34, i32 656, metadata !286, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, metadata !285, metadata !46, i32 656} ; [ DW_TAG_subprogram ]
!1018 = metadata !{i32 1282, i32 0, metadata !1019, metadata !1007}
!1019 = metadata !{i32 786443, metadata !1020, i32 1282, i32 269, metadata !34, i32 34} ; [ DW_TAG_lexical_block ]
!1020 = metadata !{i32 786478, i32 0, null, metadata !"operator-<32, 12, false, 5, 3, 0>", metadata !"operator-<32, 12, false, 5, 3, 0>", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEmiILi32ELi12ELb0ELS0_5ELS1_3ELi0EEENS2_5RTypeIXT_EXT0_EXT1_EE5minusERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !34, i32 1282, metadata !1021, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, null, metadata !46, i32 1282} ; [ DW_TAG_subprogram ]
!1021 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1022, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1022 = metadata !{metadata !1023, metadata !156, metadata !71}
!1023 = metadata !{i32 786454, metadata !1024, metadata !"minus", metadata !34, i32 638, i64 0, i64 0, i64 0, i32 0, metadata !256} ; [ DW_TAG_typedef ]
!1024 = metadata !{i32 786434, metadata !33, metadata !"RType<32, 12, false>", metadata !34, i32 611, i64 8, i64 8, i32 0, i32 0, null, metadata !432, i32 0, null, metadata !433} ; [ DW_TAG_class_type ]
!1025 = metadata !{i32 668, i32 0, metadata !1013, metadata !1016}
!1026 = metadata !{i32 672, i32 13, metadata !1027, metadata !1031}
!1027 = metadata !{i32 786443, metadata !1028, i32 656, i32 115, metadata !34, i32 6} ; [ DW_TAG_lexical_block ]
!1028 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<33, 13, true, 5, 3, 0>", metadata !"ap_fixed_base<33, 13, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2ILi33ELi13ELb1ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !34, i32 656, metadata !1029, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !292, null, metadata !46, i32 656} ; [ DW_TAG_subprogram ]
!1029 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1030, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1030 = metadata !{null, metadata !61, metadata !291}
!1031 = metadata !{i32 455, i32 61, metadata !1032, metadata !1035}
!1032 = metadata !{i32 786478, i32 0, null, metadata !"ap_ufixed<33, 13, true, 5, 3, 0>", metadata !"ap_ufixed<33, 13, true, 5, 3, 0>", metadata !"_ZN9ap_ufixedILi32ELi12EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2ILi33ELi13ELb1ELS0_5ELS1_3ELi0EEERK13ap_fixed_baseIXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !30, i32 454, metadata !1033, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !292, null, metadata !46, i32 455} ; [ DW_TAG_subprogram ]
!1033 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1034, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1034 = metadata !{null, metadata !909, metadata !291}
!1035 = metadata !{i32 455, i32 62, metadata !1036, metadata !1007}
!1036 = metadata !{i32 786478, i32 0, null, metadata !"ap_ufixed<33, 13, true, 5, 3, 0>", metadata !"ap_ufixed<33, 13, true, 5, 3, 0>", metadata !"_ZN9ap_ufixedILi32ELi12EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi33ELi13ELb1ELS0_5ELS1_3ELi0EEERK13ap_fixed_baseIXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !30, i32 454, metadata !1033, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !292, null, metadata !46, i32 455} ; [ DW_TAG_subprogram ]
!1037 = metadata !{i32 790529, metadata !1038, metadata !"T.V", null, i32 41, metadata !984, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1038 = metadata !{i32 786688, metadata !996, metadata !"T", metadata !24, i32 41, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1039 = metadata !{i32 504, i32 9, metadata !1040, metadata !1007}
!1040 = metadata !{i32 786443, metadata !1041, i32 503, i32 49, metadata !30, i32 46} ; [ DW_TAG_lexical_block ]
!1041 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZN9ap_ufixedILi32ELi12EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !30, i32 502, metadata !965, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !964, metadata !46, i32 503} ; [ DW_TAG_subprogram ]
!1042 = metadata !{i32 786689, metadata !1006, metadata !"sh", metadata !34, i32 33555976, metadata !126, i32 0, metadata !1043} ; [ DW_TAG_arg_variable ]
!1043 = metadata !{i32 50, i32 10, metadata !1008, null}
!1044 = metadata !{i32 1544, i32 27, metadata !1006, metadata !1043}
!1045 = metadata !{i32 1549, i32 9, metadata !1011, metadata !1043}
!1046 = metadata !{i32 786688, metadata !1047, metadata !"__Val2__", metadata !34, i32 668, metadata !41, i32 0, metadata !1316} ; [ DW_TAG_auto_variable ]
!1047 = metadata !{i32 786443, metadata !1048, i32 668, i32 25, metadata !34, i32 30} ; [ DW_TAG_lexical_block ]
!1048 = metadata !{i32 786443, metadata !1049, i32 656, i32 115, metadata !34, i32 29} ; [ DW_TAG_lexical_block ]
!1049 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2ILi32ELi12ELb0ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !34, i32 656, metadata !1050, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, metadata !1084, metadata !46, i32 656} ; [ DW_TAG_subprogram ]
!1050 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1051, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1051 = metadata !{null, metadata !1052, metadata !71}
!1052 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1053} ; [ DW_TAG_pointer_type ]
!1053 = metadata !{i32 786434, null, metadata !"ap_fixed_base<33, 13, false, 5, 3, 0>", metadata !34, i32 510, i64 64, i64 64, i32 0, i32 0, null, metadata !1054, i32 0, null, metadata !1315} ; [ DW_TAG_class_type ]
!1054 = metadata !{metadata !1055, metadata !1070, metadata !1073, metadata !1076, metadata !1079, metadata !1084, metadata !1085, metadata !1086, metadata !1087, metadata !1090, metadata !1093, metadata !1096, metadata !1099, metadata !1102, metadata !1105, metadata !1108, metadata !1111, metadata !1114, metadata !1117, metadata !1120, metadata !1123, metadata !1126, metadata !1129, metadata !1134, metadata !1137, metadata !1140, metadata !1143, metadata !1146, metadata !1147, metadata !1152, metadata !1153, metadata !1156, metadata !1159, metadata !1163, metadata !1166, metadata !1169, metadata !1172, metadata !1175, metadata !1178, metadata !1181, metadata !1182, metadata !1183, metadata !1186, metadata !1189, metadata !1192, metadata !1195, metadata !1198, metadata !1199, metadata !1200, metadata !1203, metadata !1206, metadata !1209, metadata !1212, metadata !1213, metadata !1216, metadata !1219, metadata !1220, metadata !1223, metadata !1224, metadata !1227, metadata !1230, metadata !1233, metadata !1236, metadata !1239, metadata !1242, metadata !1245, metadata !1246, metadata !1247, metadata !1250, metadata !1253, metadata !1254, metadata !1255, metadata !1258, metadata !1259, metadata !1260, metadata !1261, metadata !1262, metadata !1263, metadata !1267, metadata !1270, metadata !1271, metadata !1272, metadata !1275, metadata !1278, metadata !1282, metadata !1283, metadata !1286, metadata !1287, metadata !1290, metadata !1293, metadata !1294, metadata !1295, metadata !1296, metadata !1297, metadata !1300, metadata !1303, metadata !1304, metadata !1307, metadata !1310, metadata !1311}
!1055 = metadata !{i32 786460, metadata !1053, null, metadata !34, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1056} ; [ DW_TAG_inheritance ]
!1056 = metadata !{i32 786434, null, metadata !"ssdm_int<33 + 1024 * 0, false>", metadata !38, i32 35, i64 64, i64 64, i32 0, i32 0, null, metadata !1057, i32 0, null, metadata !1069} ; [ DW_TAG_class_type ]
!1057 = metadata !{metadata !1058, metadata !1060, metadata !1064}
!1058 = metadata !{i32 786445, metadata !1056, metadata !"V", metadata !38, i32 35, i64 33, i64 64, i64 0, i32 0, metadata !1059} ; [ DW_TAG_member ]
!1059 = metadata !{i32 786468, null, metadata !"uint33", null, i32 0, i64 33, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!1060 = metadata !{i32 786478, i32 0, metadata !1056, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !38, i32 35, metadata !1061, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 35} ; [ DW_TAG_subprogram ]
!1061 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1062, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1062 = metadata !{null, metadata !1063}
!1063 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1056} ; [ DW_TAG_pointer_type ]
!1064 = metadata !{i32 786478, i32 0, metadata !1056, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !38, i32 35, metadata !1065, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !46, i32 35} ; [ DW_TAG_subprogram ]
!1065 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1066, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1066 = metadata !{null, metadata !1063, metadata !1067}
!1067 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1068} ; [ DW_TAG_reference_type ]
!1068 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1056} ; [ DW_TAG_const_type ]
!1069 = metadata !{metadata !273, metadata !56}
!1070 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", metadata !34, i32 515, metadata !1071, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 515} ; [ DW_TAG_subprogram ]
!1071 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1072, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1072 = metadata !{null, metadata !1052, metadata !57, metadata !57, metadata !57, metadata !57}
!1073 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", metadata !34, i32 588, metadata !1074, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 588} ; [ DW_TAG_subprogram ]
!1074 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1075, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1075 = metadata !{metadata !57, metadata !1052, metadata !57, metadata !57, metadata !57}
!1076 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 646, metadata !1077, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 646} ; [ DW_TAG_subprogram ]
!1077 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1078, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1078 = metadata !{null, metadata !1052}
!1079 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base<33, 13, false, 5, 3, 0>", metadata !"ap_fixed_base<33, 13, false, 5, 3, 0>", metadata !"", metadata !34, i32 656, metadata !1080, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1083, i32 0, metadata !46, i32 656} ; [ DW_TAG_subprogram ]
!1080 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1081, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1081 = metadata !{null, metadata !1052, metadata !1082}
!1082 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1053} ; [ DW_TAG_reference_type ]
!1083 = metadata !{metadata !293, metadata !294, metadata !75, metadata !76, metadata !87, metadata !95}
!1084 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"", metadata !34, i32 656, metadata !1050, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, i32 0, metadata !46, i32 656} ; [ DW_TAG_subprogram ]
!1085 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base<33, 13, false, 5, 3, 0>", metadata !"ap_fixed_base<33, 13, false, 5, 3, 0>", metadata !"", metadata !34, i32 770, metadata !1080, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1083, i32 0, metadata !46, i32 770} ; [ DW_TAG_subprogram ]
!1086 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"", metadata !34, i32 770, metadata !1050, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, i32 0, metadata !46, i32 770} ; [ DW_TAG_subprogram ]
!1087 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 782, metadata !1088, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 782} ; [ DW_TAG_subprogram ]
!1088 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1089, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1089 = metadata !{null, metadata !1052, metadata !57}
!1090 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 783, metadata !1091, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 783} ; [ DW_TAG_subprogram ]
!1091 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1092, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1092 = metadata !{null, metadata !1052, metadata !103}
!1093 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 784, metadata !1094, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 784} ; [ DW_TAG_subprogram ]
!1094 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1095, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1095 = metadata !{null, metadata !1052, metadata !107}
!1096 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 785, metadata !1097, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 785} ; [ DW_TAG_subprogram ]
!1097 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1098, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1098 = metadata !{null, metadata !1052, metadata !111}
!1099 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 786, metadata !1100, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 786} ; [ DW_TAG_subprogram ]
!1100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1101 = metadata !{null, metadata !1052, metadata !115}
!1102 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 787, metadata !1103, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 787} ; [ DW_TAG_subprogram ]
!1103 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1104 = metadata !{null, metadata !1052, metadata !119}
!1105 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 788, metadata !1106, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 788} ; [ DW_TAG_subprogram ]
!1106 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1107 = metadata !{null, metadata !1052, metadata !55}
!1108 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 789, metadata !1109, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 789} ; [ DW_TAG_subprogram ]
!1109 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1110 = metadata !{null, metadata !1052, metadata !126}
!1111 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 791, metadata !1112, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 791} ; [ DW_TAG_subprogram ]
!1112 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1113 = metadata !{null, metadata !1052, metadata !130}
!1114 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 792, metadata !1115, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 792} ; [ DW_TAG_subprogram ]
!1115 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1116, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1116 = metadata !{null, metadata !1052, metadata !134}
!1117 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 797, metadata !1118, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 797} ; [ DW_TAG_subprogram ]
!1118 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1119 = metadata !{null, metadata !1052, metadata !138}
!1120 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 798, metadata !1121, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 798} ; [ DW_TAG_subprogram ]
!1121 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1122, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1122 = metadata !{null, metadata !1052, metadata !143}
!1123 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 799, metadata !1124, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 799} ; [ DW_TAG_subprogram ]
!1124 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1125 = metadata !{null, metadata !1052, metadata !148}
!1126 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 806, metadata !1127, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 806} ; [ DW_TAG_subprogram ]
!1127 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1128, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1128 = metadata !{null, metadata !1052, metadata !148, metadata !107}
!1129 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE15doubleToRawBitsEd", metadata !34, i32 842, metadata !1130, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 842} ; [ DW_TAG_subprogram ]
!1130 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1131 = metadata !{metadata !144, metadata !1132, metadata !158}
!1132 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1133} ; [ DW_TAG_pointer_type ]
!1133 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1053} ; [ DW_TAG_const_type ]
!1134 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE15rawBitsToDoubleEy", metadata !34, i32 851, metadata !1135, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 851} ; [ DW_TAG_subprogram ]
!1135 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1136, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1136 = metadata !{metadata !158, metadata !1132, metadata !144}
!1137 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE14rawBitsToFloatEj", metadata !34, i32 860, metadata !1138, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 860} ; [ DW_TAG_subprogram ]
!1138 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1139, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1139 = metadata !{metadata !165, metadata !1132, metadata !126}
!1140 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 869, metadata !1141, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 869} ; [ DW_TAG_subprogram ]
!1141 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1142, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1142 = metadata !{null, metadata !1052, metadata !158}
!1143 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !34, i32 982, metadata !1144, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 982} ; [ DW_TAG_subprogram ]
!1144 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1145, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1145 = metadata !{metadata !1082, metadata !1052, metadata !1082}
!1146 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !34, i32 989, metadata !1144, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 989} ; [ DW_TAG_subprogram ]
!1147 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !34, i32 996, metadata !1148, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 996} ; [ DW_TAG_subprogram ]
!1148 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1149, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1149 = metadata !{null, metadata !1150, metadata !1082}
!1150 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1151} ; [ DW_TAG_pointer_type ]
!1151 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1053} ; [ DW_TAG_volatile_type ]
!1152 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !34, i32 1002, metadata !1148, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1002} ; [ DW_TAG_subprogram ]
!1153 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", metadata !34, i32 1011, metadata !1154, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1011} ; [ DW_TAG_subprogram ]
!1154 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1155 = metadata !{metadata !1082, metadata !1052, metadata !144}
!1156 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", metadata !34, i32 1017, metadata !1157, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1017} ; [ DW_TAG_subprogram ]
!1157 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1158, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1158 = metadata !{metadata !1053, metadata !144}
!1159 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", metadata !34, i32 1026, metadata !1160, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1026} ; [ DW_TAG_subprogram ]
!1160 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1161, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1161 = metadata !{metadata !1162, metadata !1132, metadata !57}
!1162 = metadata !{i32 786434, null, metadata !"ap_int_base<13, false, true>", metadata !78, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1163 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", metadata !34, i32 1061, metadata !1164, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1061} ; [ DW_TAG_subprogram ]
!1164 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1165, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1165 = metadata !{metadata !55, metadata !1132}
!1166 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", metadata !34, i32 1064, metadata !1167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1064} ; [ DW_TAG_subprogram ]
!1167 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1168, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1168 = metadata !{metadata !126, metadata !1132}
!1169 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", metadata !34, i32 1067, metadata !1170, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1067} ; [ DW_TAG_subprogram ]
!1170 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1171, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1171 = metadata !{metadata !138, metadata !1132}
!1172 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", metadata !34, i32 1070, metadata !1173, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1070} ; [ DW_TAG_subprogram ]
!1173 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1174, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1174 = metadata !{metadata !143, metadata !1132}
!1175 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", metadata !34, i32 1073, metadata !1176, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1073} ; [ DW_TAG_subprogram ]
!1176 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1177, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1177 = metadata !{metadata !158, metadata !1132}
!1178 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", metadata !34, i32 1107, metadata !1179, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1107} ; [ DW_TAG_subprogram ]
!1179 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1180, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1180 = metadata !{metadata !165, metadata !1132}
!1181 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", metadata !34, i32 1142, metadata !1176, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1142} ; [ DW_TAG_subprogram ]
!1182 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", metadata !34, i32 1146, metadata !1179, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1146} ; [ DW_TAG_subprogram ]
!1183 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", metadata !34, i32 1150, metadata !1184, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1150} ; [ DW_TAG_subprogram ]
!1184 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1185, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1185 = metadata !{metadata !103, metadata !1132}
!1186 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator signed char", metadata !"operator signed char", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", metadata !34, i32 1154, metadata !1187, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1154} ; [ DW_TAG_subprogram ]
!1187 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1188, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1188 = metadata !{metadata !107, metadata !1132}
!1189 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", metadata !34, i32 1158, metadata !1190, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1158} ; [ DW_TAG_subprogram ]
!1190 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1191, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1191 = metadata !{metadata !111, metadata !1132}
!1192 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator short", metadata !"operator short", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", metadata !34, i32 1162, metadata !1193, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1162} ; [ DW_TAG_subprogram ]
!1193 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1194 = metadata !{metadata !115, metadata !1132}
!1195 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator unsigned short", metadata !"operator unsigned short", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", metadata !34, i32 1166, metadata !1196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1166} ; [ DW_TAG_subprogram ]
!1196 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1197 = metadata !{metadata !119, metadata !1132}
!1198 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", metadata !34, i32 1171, metadata !1164, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1171} ; [ DW_TAG_subprogram ]
!1199 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", metadata !34, i32 1175, metadata !1167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1175} ; [ DW_TAG_subprogram ]
!1200 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator long", metadata !"operator long", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", metadata !34, i32 1180, metadata !1201, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1180} ; [ DW_TAG_subprogram ]
!1201 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1202, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1202 = metadata !{metadata !130, metadata !1132}
!1203 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator unsigned long", metadata !"operator unsigned long", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", metadata !34, i32 1184, metadata !1204, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1184} ; [ DW_TAG_subprogram ]
!1204 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1205, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1205 = metadata !{metadata !134, metadata !1132}
!1206 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", metadata !34, i32 1197, metadata !1207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1197} ; [ DW_TAG_subprogram ]
!1207 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1208, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1208 = metadata !{metadata !144, metadata !1132}
!1209 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", metadata !34, i32 1201, metadata !1210, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1201} ; [ DW_TAG_subprogram ]
!1210 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1211, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1211 = metadata !{metadata !139, metadata !1132}
!1212 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", metadata !34, i32 1205, metadata !1164, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1205} ; [ DW_TAG_subprogram ]
!1213 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", metadata !34, i32 1209, metadata !1214, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1209} ; [ DW_TAG_subprogram ]
!1214 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1215, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1215 = metadata !{metadata !55, metadata !1052}
!1216 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", metadata !34, i32 1310, metadata !1217, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1310} ; [ DW_TAG_subprogram ]
!1217 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1218, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1218 = metadata !{metadata !1082, metadata !1052}
!1219 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", metadata !34, i32 1314, metadata !1217, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1314} ; [ DW_TAG_subprogram ]
!1220 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", metadata !34, i32 1322, metadata !1221, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1322} ; [ DW_TAG_subprogram ]
!1221 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1222, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1222 = metadata !{metadata !1133, metadata !1052, metadata !55}
!1223 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", metadata !34, i32 1328, metadata !1221, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1328} ; [ DW_TAG_subprogram ]
!1224 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", metadata !34, i32 1336, metadata !1225, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1336} ; [ DW_TAG_subprogram ]
!1225 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1226, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1226 = metadata !{metadata !1053, metadata !1052}
!1227 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", metadata !34, i32 1340, metadata !1228, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1340} ; [ DW_TAG_subprogram ]
!1228 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1229 = metadata !{metadata !434, metadata !1132}
!1230 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", metadata !34, i32 1346, metadata !1231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1346} ; [ DW_TAG_subprogram ]
!1231 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1232, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1232 = metadata !{metadata !256, metadata !1052}
!1233 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", metadata !34, i32 1354, metadata !1234, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1354} ; [ DW_TAG_subprogram ]
!1234 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1235 = metadata !{metadata !57, metadata !1132}
!1236 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", metadata !34, i32 1360, metadata !1237, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1360} ; [ DW_TAG_subprogram ]
!1237 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1238, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1238 = metadata !{metadata !1053, metadata !1132}
!1239 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", metadata !34, i32 1383, metadata !1240, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1383} ; [ DW_TAG_subprogram ]
!1240 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1241, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1241 = metadata !{metadata !1053, metadata !1132, metadata !55}
!1242 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", metadata !34, i32 1442, metadata !1243, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1442} ; [ DW_TAG_subprogram ]
!1243 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1244, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1244 = metadata !{metadata !1053, metadata !1132, metadata !126}
!1245 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", metadata !34, i32 1486, metadata !1240, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1486} ; [ DW_TAG_subprogram ]
!1246 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", metadata !34, i32 1544, metadata !1243, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1544} ; [ DW_TAG_subprogram ]
!1247 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", metadata !34, i32 1596, metadata !1248, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1596} ; [ DW_TAG_subprogram ]
!1248 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1249, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1249 = metadata !{metadata !1082, metadata !1052, metadata !55}
!1250 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", metadata !34, i32 1659, metadata !1251, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1659} ; [ DW_TAG_subprogram ]
!1251 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1252 = metadata !{metadata !1082, metadata !1052, metadata !126}
!1253 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", metadata !34, i32 1706, metadata !1248, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1706} ; [ DW_TAG_subprogram ]
!1254 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", metadata !34, i32 1768, metadata !1251, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1768} ; [ DW_TAG_subprogram ]
!1255 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", metadata !34, i32 1846, metadata !1256, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1846} ; [ DW_TAG_subprogram ]
!1256 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1257, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1257 = metadata !{metadata !57, metadata !1132, metadata !158}
!1258 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", metadata !34, i32 1847, metadata !1256, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1847} ; [ DW_TAG_subprogram ]
!1259 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", metadata !34, i32 1848, metadata !1256, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1848} ; [ DW_TAG_subprogram ]
!1260 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", metadata !34, i32 1849, metadata !1256, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1849} ; [ DW_TAG_subprogram ]
!1261 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", metadata !34, i32 1850, metadata !1256, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1850} ; [ DW_TAG_subprogram ]
!1262 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", metadata !34, i32 1851, metadata !1256, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1851} ; [ DW_TAG_subprogram ]
!1263 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !34, i32 1854, metadata !1264, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1854} ; [ DW_TAG_subprogram ]
!1264 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1265, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1265 = metadata !{metadata !1266, metadata !1052, metadata !126}
!1266 = metadata !{i32 786434, null, metadata !"af_bit_ref<33, 13, false, 5, 3, 0>", metadata !34, i32 91, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1267 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !34, i32 1866, metadata !1268, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1866} ; [ DW_TAG_subprogram ]
!1268 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1269, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1269 = metadata !{metadata !57, metadata !1132, metadata !126}
!1270 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !34, i32 1871, metadata !1264, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1871} ; [ DW_TAG_subprogram ]
!1271 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !34, i32 1884, metadata !1268, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1884} ; [ DW_TAG_subprogram ]
!1272 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !34, i32 1896, metadata !1273, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1896} ; [ DW_TAG_subprogram ]
!1273 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1274, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1274 = metadata !{metadata !57, metadata !1132, metadata !55}
!1275 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !34, i32 1902, metadata !1276, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1902} ; [ DW_TAG_subprogram ]
!1276 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1277, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1277 = metadata !{metadata !1266, metadata !1052, metadata !55}
!1278 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !34, i32 1917, metadata !1279, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1917} ; [ DW_TAG_subprogram ]
!1279 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1280, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1280 = metadata !{metadata !1281, metadata !1052, metadata !55, metadata !55}
!1281 = metadata !{i32 786434, null, metadata !"af_range_ref<33, 13, false, 5, 3, 0>", metadata !34, i32 236, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1282 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !34, i32 1923, metadata !1279, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1923} ; [ DW_TAG_subprogram ]
!1283 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !34, i32 1929, metadata !1284, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1929} ; [ DW_TAG_subprogram ]
!1284 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1285, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1285 = metadata !{metadata !1281, metadata !1132, metadata !55, metadata !55}
!1286 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !34, i32 1978, metadata !1284, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1978} ; [ DW_TAG_subprogram ]
!1287 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !34, i32 1983, metadata !1288, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1983} ; [ DW_TAG_subprogram ]
!1288 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1289, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1289 = metadata !{metadata !1281, metadata !1052}
!1290 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !34, i32 1988, metadata !1291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1988} ; [ DW_TAG_subprogram ]
!1291 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1292, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1292 = metadata !{metadata !1281, metadata !1132}
!1293 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", metadata !34, i32 1992, metadata !1234, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1992} ; [ DW_TAG_subprogram ]
!1294 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", metadata !34, i32 1996, metadata !1234, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 1996} ; [ DW_TAG_subprogram ]
!1295 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", metadata !34, i32 2002, metadata !1164, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2002} ; [ DW_TAG_subprogram ]
!1296 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", metadata !34, i32 2006, metadata !1164, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2006} ; [ DW_TAG_subprogram ]
!1297 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", metadata !34, i32 2010, metadata !1298, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2010} ; [ DW_TAG_subprogram ]
!1298 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1299, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1299 = metadata !{metadata !77, metadata !1132}
!1300 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", metadata !34, i32 2014, metadata !1301, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2014} ; [ DW_TAG_subprogram ]
!1301 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1302, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1302 = metadata !{metadata !88, metadata !1132}
!1303 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", metadata !34, i32 2018, metadata !1164, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2018} ; [ DW_TAG_subprogram ]
!1304 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringE8BaseMode", metadata !34, i32 2022, metadata !1305, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2022} ; [ DW_TAG_subprogram ]
!1305 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1306, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1306 = metadata !{metadata !697, metadata !1052, metadata !698}
!1307 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEa", metadata !34, i32 2026, metadata !1308, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !46, i32 2026} ; [ DW_TAG_subprogram ]
!1308 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1309, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1309 = metadata !{metadata !697, metadata !1052, metadata !107}
!1310 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"~ap_fixed_base", metadata !"~ap_fixed_base", metadata !"", metadata !34, i32 510, metadata !1077, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !46, i32 510} ; [ DW_TAG_subprogram ]
!1311 = metadata !{i32 786478, i32 0, metadata !1053, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !34, i32 510, metadata !1312, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !46, i32 510} ; [ DW_TAG_subprogram ]
!1312 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1313, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1313 = metadata !{null, metadata !1052, metadata !1314}
!1314 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1133} ; [ DW_TAG_reference_type ]
!1315 = metadata !{metadata !816, metadata !817, metadata !56, metadata !715, metadata !716, metadata !717}
!1316 = metadata !{i32 766, i32 5, metadata !1317, metadata !1318}
!1317 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi33ELi13ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi32ELi12ELb0ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !34, i32 656, metadata !1050, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, metadata !1084, metadata !46, i32 656} ; [ DW_TAG_subprogram ]
!1318 = metadata !{i32 1281, i32 0, metadata !1319, metadata !1043}
!1319 = metadata !{i32 786443, metadata !1320, i32 1281, i32 265, metadata !34, i32 28} ; [ DW_TAG_lexical_block ]
!1320 = metadata !{i32 786478, i32 0, null, metadata !"operator+<32, 12, false, 5, 3, 0>", metadata !"operator+<32, 12, false, 5, 3, 0>", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEplILi32ELi12ELb0ELS0_5ELS1_3ELi0EEENS2_5RTypeIXT_EXT0_EXT1_EE4plusERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !34, i32 1281, metadata !1321, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, null, metadata !46, i32 1281} ; [ DW_TAG_subprogram ]
!1321 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1322, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1322 = metadata !{metadata !1323, metadata !156, metadata !71}
!1323 = metadata !{i32 786454, metadata !1024, metadata !"plus", metadata !34, i32 637, i64 0, i64 0, i64 0, i32 0, metadata !1053} ; [ DW_TAG_typedef ]
!1324 = metadata !{i32 668, i32 0, metadata !1047, metadata !1316}
!1325 = metadata !{i32 790529, metadata !1326, metadata !"X.V", null, i32 41, metadata !984, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1326 = metadata !{i32 786688, metadata !996, metadata !"X", metadata !24, i32 41, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1327 = metadata !{i32 504, i32 9, metadata !1040, metadata !1328}
!1328 = metadata !{i32 51, i32 5, metadata !1008, null}
!1329 = metadata !{i32 52, i32 5, metadata !1008, null}
!1330 = metadata !{i32 786688, metadata !1047, metadata !"__Val2__", metadata !34, i32 668, metadata !41, i32 0, metadata !1331} ; [ DW_TAG_auto_variable ]
!1331 = metadata !{i32 766, i32 5, metadata !1317, metadata !1332}
!1332 = metadata !{i32 1281, i32 0, metadata !1319, metadata !1333}
!1333 = metadata !{i32 1299, i32 243, metadata !1334, metadata !1329}
!1334 = metadata !{i32 786443, metadata !1335, i32 1299, i32 231, metadata !34, i32 24} ; [ DW_TAG_lexical_block ]
!1335 = metadata !{i32 786478, i32 0, null, metadata !"operator+=<32, 12, false, 5, 3, 0>", metadata !"operator+=<32, 12, false, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEpLILi32ELi12ELb0ELS0_5ELS1_3ELi0EEERS2_RKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !34, i32 1299, metadata !170, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, null, metadata !46, i32 1299} ; [ DW_TAG_subprogram ]
!1336 = metadata !{i32 668, i32 0, metadata !1047, metadata !1331}
!1337 = metadata !{i32 672, i32 13, metadata !1338, metadata !1342}
!1338 = metadata !{i32 786443, metadata !1339, i32 656, i32 115, metadata !34, i32 25} ; [ DW_TAG_lexical_block ]
!1339 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<33, 13, false, 5, 3, 0>", metadata !"ap_fixed_base<33, 13, false, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2ILi33ELi13ELb0ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !34, i32 656, metadata !1340, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1083, null, metadata !46, i32 656} ; [ DW_TAG_subprogram ]
!1340 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1341, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1341 = metadata !{null, metadata !61, metadata !1082}
!1342 = metadata !{i32 766, i32 5, metadata !1343, metadata !1333}
!1343 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<33, 13, false, 5, 3, 0>", metadata !"ap_fixed_base<33, 13, false, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi33ELi13ELb0ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !34, i32 656, metadata !1340, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1083, null, metadata !46, i32 656} ; [ DW_TAG_subprogram ]
!1344 = metadata !{i32 786689, metadata !1006, metadata !"sh", metadata !34, i32 33555976, metadata !126, i32 0, metadata !1345} ; [ DW_TAG_arg_variable ]
!1345 = metadata !{i32 55, i32 14, metadata !1346, null}
!1346 = metadata !{i32 786443, metadata !1004, i32 54, i32 11, metadata !24, i32 4} ; [ DW_TAG_lexical_block ]
!1347 = metadata !{i32 1544, i32 27, metadata !1006, metadata !1345}
!1348 = metadata !{i32 786688, metadata !1047, metadata !"__Val2__", metadata !34, i32 668, metadata !41, i32 0, metadata !1349} ; [ DW_TAG_auto_variable ]
!1349 = metadata !{i32 766, i32 5, metadata !1317, metadata !1350}
!1350 = metadata !{i32 1281, i32 0, metadata !1319, metadata !1345}
!1351 = metadata !{i32 668, i32 0, metadata !1047, metadata !1349}
!1352 = metadata !{i32 672, i32 13, metadata !1338, metadata !1353}
!1353 = metadata !{i32 455, i32 61, metadata !1354, metadata !1357}
!1354 = metadata !{i32 786478, i32 0, null, metadata !"ap_ufixed<33, 13, false, 5, 3, 0>", metadata !"ap_ufixed<33, 13, false, 5, 3, 0>", metadata !"_ZN9ap_ufixedILi32ELi12EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2ILi33ELi13ELb0ELS0_5ELS1_3ELi0EEERK13ap_fixed_baseIXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !30, i32 454, metadata !1355, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1083, null, metadata !46, i32 455} ; [ DW_TAG_subprogram ]
!1355 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1356, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1356 = metadata !{null, metadata !909, metadata !1082}
!1357 = metadata !{i32 455, i32 62, metadata !1358, metadata !1345}
!1358 = metadata !{i32 786478, i32 0, null, metadata !"ap_ufixed<33, 13, false, 5, 3, 0>", metadata !"ap_ufixed<33, 13, false, 5, 3, 0>", metadata !"_ZN9ap_ufixedILi32ELi12EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi33ELi13ELb0ELS0_5ELS1_3ELi0EEERK13ap_fixed_baseIXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !30, i32 454, metadata !1355, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1083, null, metadata !46, i32 455} ; [ DW_TAG_subprogram ]
!1359 = metadata !{i32 504, i32 9, metadata !1040, metadata !1345}
!1360 = metadata !{i32 786689, metadata !1006, metadata !"sh", metadata !34, i32 33555976, metadata !126, i32 0, metadata !1361} ; [ DW_TAG_arg_variable ]
!1361 = metadata !{i32 56, i32 11, metadata !1346, null}
!1362 = metadata !{i32 1544, i32 27, metadata !1006, metadata !1361}
!1363 = metadata !{i32 786688, metadata !1013, metadata !"__Val2__", metadata !34, i32 668, metadata !41, i32 0, metadata !1364} ; [ DW_TAG_auto_variable ]
!1364 = metadata !{i32 766, i32 5, metadata !1017, metadata !1365}
!1365 = metadata !{i32 1341, i32 61, metadata !1366, metadata !1361}
!1366 = metadata !{i32 786443, metadata !1367, i32 1340, i32 104, metadata !34, i32 20} ; [ DW_TAG_lexical_block ]
!1367 = metadata !{i32 786478, i32 0, null, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", metadata !34, i32 1340, metadata !254, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !253, metadata !46, i32 1340} ; [ DW_TAG_subprogram ]
!1368 = metadata !{i32 668, i32 0, metadata !1013, metadata !1364}
!1369 = metadata !{i32 672, i32 13, metadata !1370, metadata !1374}
!1370 = metadata !{i32 786443, metadata !1371, i32 656, i32 115, metadata !34, i32 11} ; [ DW_TAG_lexical_block ]
!1371 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<34, 14, true, 5, 3, 0>", metadata !"ap_fixed_base<34, 14, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2ILi34ELi14ELb1ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !34, i32 656, metadata !1372, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !466, null, metadata !46, i32 656} ; [ DW_TAG_subprogram ]
!1372 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1373, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1373 = metadata !{null, metadata !61, metadata !465}
!1374 = metadata !{i32 455, i32 61, metadata !1375, metadata !1378}
!1375 = metadata !{i32 786478, i32 0, null, metadata !"ap_ufixed<34, 14, true, 5, 3, 0>", metadata !"ap_ufixed<34, 14, true, 5, 3, 0>", metadata !"_ZN9ap_ufixedILi32ELi12EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2ILi34ELi14ELb1ELS0_5ELS1_3ELi0EEERK13ap_fixed_baseIXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !30, i32 454, metadata !1376, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !466, null, metadata !46, i32 455} ; [ DW_TAG_subprogram ]
!1376 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1377, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1377 = metadata !{null, metadata !909, metadata !465}
!1378 = metadata !{i32 455, i32 62, metadata !1379, metadata !1361}
!1379 = metadata !{i32 786478, i32 0, null, metadata !"ap_ufixed<34, 14, true, 5, 3, 0>", metadata !"ap_ufixed<34, 14, true, 5, 3, 0>", metadata !"_ZN9ap_ufixedILi32ELi12EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi34ELi14ELb1ELS0_5ELS1_3ELi0EEERK13ap_fixed_baseIXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !30, i32 454, metadata !1376, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !466, null, metadata !46, i32 455} ; [ DW_TAG_subprogram ]
!1380 = metadata !{i32 786688, metadata !1381, metadata !"__Val2__", metadata !34, i32 668, metadata !41, i32 0, metadata !1384} ; [ DW_TAG_auto_variable ]
!1381 = metadata !{i32 786443, metadata !1382, i32 668, i32 25, metadata !34, i32 15} ; [ DW_TAG_lexical_block ]
!1382 = metadata !{i32 786443, metadata !1383, i32 656, i32 115, metadata !34, i32 14} ; [ DW_TAG_lexical_block ]
!1383 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2ILi32ELi12ELb0ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !34, i32 656, metadata !470, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, metadata !469, metadata !46, i32 656} ; [ DW_TAG_subprogram ]
!1384 = metadata !{i32 766, i32 5, metadata !1385, metadata !1386}
!1385 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"ap_fixed_base<32, 12, false, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi34ELi14ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi32ELi12ELb0ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !34, i32 656, metadata !470, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, metadata !469, metadata !46, i32 656} ; [ DW_TAG_subprogram ]
!1386 = metadata !{i32 1281, i32 0, metadata !1387, metadata !1361}
!1387 = metadata !{i32 786443, metadata !1388, i32 1281, i32 265, metadata !34, i32 13} ; [ DW_TAG_lexical_block ]
!1388 = metadata !{i32 786478, i32 0, null, metadata !"operator+<32, 12, false, 5, 3, 0>", metadata !"operator+<32, 12, false, 5, 3, 0>", metadata !"_ZNK13ap_fixed_baseILi33ELi13ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEplILi32ELi12ELb0ELS0_5ELS1_3ELi0EEENS2_5RTypeIXT_EXT0_EXT1_EE4plusERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !34, i32 1281, metadata !428, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, metadata !427, metadata !46, i32 1281} ; [ DW_TAG_subprogram ]
!1389 = metadata !{i32 668, i32 0, metadata !1381, metadata !1384}
!1390 = metadata !{i32 504, i32 9, metadata !1040, metadata !1391}
!1391 = metadata !{i32 57, i32 5, metadata !1346, null}
!1392 = metadata !{i32 786688, metadata !1013, metadata !"__Val2__", metadata !34, i32 668, metadata !41, i32 0, metadata !1393} ; [ DW_TAG_auto_variable ]
!1393 = metadata !{i32 766, i32 5, metadata !1017, metadata !1394}
!1394 = metadata !{i32 1282, i32 0, metadata !1019, metadata !1395}
!1395 = metadata !{i32 1300, i32 246, metadata !1396, metadata !1398}
!1396 = metadata !{i32 786443, metadata !1397, i32 1300, i32 234, metadata !34, i32 5} ; [ DW_TAG_lexical_block ]
!1397 = metadata !{i32 786478, i32 0, null, metadata !"operator-=<32, 12, false, 5, 3, 0>", metadata !"operator-=<32, 12, false, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEmIILi32ELi12ELb0ELS0_5ELS1_3ELi0EEERS2_RKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !34, i32 1300, metadata !170, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !72, null, metadata !46, i32 1300} ; [ DW_TAG_subprogram ]
!1398 = metadata !{i32 58, i32 5, metadata !1346, null}
!1399 = metadata !{i32 668, i32 0, metadata !1013, metadata !1393}
!1400 = metadata !{i32 672, i32 13, metadata !1027, metadata !1401}
!1401 = metadata !{i32 766, i32 5, metadata !1402, metadata !1395}
!1402 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<33, 13, true, 5, 3, 0>", metadata !"ap_fixed_base<33, 13, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi33ELi13ELb1ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !34, i32 656, metadata !1029, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !292, null, metadata !46, i32 656} ; [ DW_TAG_subprogram ]
!1403 = metadata !{i32 985, i32 9, metadata !1404, metadata !1333}
!1404 = metadata !{i32 786443, metadata !1405, i32 984, i32 5, metadata !34, i32 9} ; [ DW_TAG_lexical_block ]
!1405 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi32ELi12ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !34, i32 982, metadata !170, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !169, metadata !46, i32 984} ; [ DW_TAG_subprogram ]
!1406 = metadata !{i32 504, i32 9, metadata !1040, metadata !1043}
!1407 = metadata !{i32 790529, metadata !1408, metadata !"Y.V", null, i32 41, metadata !984, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1408 = metadata !{i32 786688, metadata !996, metadata !"Y", metadata !24, i32 41, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1409 = metadata !{i32 790529, metadata !1410, metadata !"current.V", null, i32 41, metadata !984, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1410 = metadata !{i32 786688, metadata !996, metadata !"current", metadata !24, i32 41, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1411 = metadata !{i32 786688, metadata !996, metadata !"step", metadata !24, i32 42, metadata !126, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1412 = metadata !{i32 790531, metadata !1413, metadata !"ssdm_int<32 + 1024 * 0, false>.V", null, i32 502, metadata !983, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1413 = metadata !{i32 786689, metadata !1041, metadata !"this", metadata !30, i32 16777718, metadata !1414, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!1414 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!1415 = metadata !{i32 502, i32 54, metadata !1041, metadata !1416}
!1416 = metadata !{i32 61, i32 4, metadata !996, null}
!1417 = metadata !{i32 504, i32 9, metadata !1040, metadata !1416}
!1418 = metadata !{i32 502, i32 54, metadata !1041, metadata !1419}
!1419 = metadata !{i32 62, i32 4, metadata !996, null}
!1420 = metadata !{i32 504, i32 9, metadata !1040, metadata !1419}
!1421 = metadata !{i32 108, i32 1, metadata !996, null}
