; ModuleID = '/home/student/gsf52/ece5775/float_iter_100.prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@angles = internal unnamed_addr constant [20 x double] [double 0x3FE921FB540D8D20, double 0x3FDDAC67044EA1D7, double 0x3FCF5B75F8E6C253, double 0x3FBFD5BA8FBBFDD0, double 0x3FAFF55B9D70CFDD, double 3.123983e-02, double 0x3F8FFF5501B17D5D, double 7.812340e-03, double 3.906228e-03, double 1.953121e-03, double 9.765590e-04, double 4.882780e-04, double 2.441370e-04, double 1.220670e-04, double 6.103100e-05, double 3.051400e-05, double 1.525500e-05, double 7.626000e-06, double 3.815000e-06, double 1.904000e-06], align 16 ; [#uses=2 type=[20 x double]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@str = internal constant [7 x i8] c"cordic\00"    ; [#uses=1 type=[7 x i8]*]

; [#uses=0]
define void @cordic(double %theta, double* %s, double* %c) nounwind uwtable {
  %current = alloca double, align 8               ; [#uses=2 type=double*]
  %X = alloca double, align 8                     ; [#uses=3 type=double*]
  %Y = alloca double, align 8                     ; [#uses=3 type=double*]
  call void (...)* @_ssdm_op_SpecBitsMap(double %theta) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(double* %s) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(double* %c) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @str) nounwind
  %theta_read = call double @_ssdm_op_Read.ap_auto.double(double %theta) nounwind ; [#uses=1 type=double]
  call void @llvm.dbg.value(metadata !{double %theta_read}, i64 0, metadata !21), !dbg !32 ; [debug line = 18:24] [debug variable = theta]
  call void @llvm.dbg.value(metadata !{double %theta}, i64 0, metadata !21), !dbg !32 ; [debug line = 18:24] [debug variable = theta]
  call void @llvm.dbg.value(metadata !{double* %s}, i64 0, metadata !33), !dbg !34 ; [debug line = 18:45] [debug variable = s]
  call void @llvm.dbg.value(metadata !{double* %c}, i64 0, metadata !35), !dbg !36 ; [debug line = 18:62] [debug variable = c]
  br label %.backedge, !dbg !37                   ; [debug line = 60:8]

.backedge:                                        ; preds = %3, %2, %0
  %storemerge = phi double [ 0.000000e+00, %0 ], [ %Y_1, %2 ], [ %Y_2, %3 ] ; [#uses=1 type=double]
  %storemerge1 = phi double [ 0x3FE36E9DB5155ED2, %0 ], [ %T, %2 ], [ %T_1, %3 ] ; [#uses=1 type=double]
  %storemerge2 = phi double [ 0.000000e+00, %0 ], [ %current_1, %2 ], [ %current_2, %3 ] ; [#uses=1 type=double]
  %step = phi i5 [ 0, %0 ], [ %step_1, %3 ], [ %step_1, %2 ] ; [#uses=4 type=i5]
  store double %storemerge, double* %Y, align 8
  store double %storemerge1, double* %X, align 8
  store double %storemerge2, double* %current, align 8
  %exitcond = icmp eq i5 %step, -12, !dbg !37     ; [#uses=1 type=i1] [debug line = 60:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 20, i64 20, i64 20) nounwind ; [#uses=0 type=i32]
  %step_1 = add i5 %step, 1, !dbg !40             ; [#uses=2 type=i5] [debug line = 60:23]
  call void @llvm.dbg.value(metadata !{i5 %step_1}, i64 0, metadata !41), !dbg !40 ; [debug line = 60:23] [debug variable = step]
  br i1 %exitcond, label %4, label %1, !dbg !37   ; [debug line = 60:8]

; <label>:1                                       ; preds = %.backedge
  call void @llvm.dbg.value(metadata !{double* %current}, i64 0, metadata !43), !dbg !44 ; [debug line = 61:5] [debug variable = current]
  %current_load = load double* %current, align 8, !dbg !44 ; [#uses=3 type=double] [debug line = 61:5]
  call void @llvm.dbg.value(metadata !{double* %Y}, i64 0, metadata !46), !dbg !47 ; [debug line = 62:5] [debug variable = Y]
  %Y_load_1 = load double* %Y, align 8, !dbg !47  ; [#uses=3 type=double] [debug line = 62:5]
  %tmp = fcmp olt double %current_load, %theta_read, !dbg !44 ; [#uses=1 type=i1] [debug line = 61:5]
  %tmp_1 = zext i5 %step to i64, !dbg !47         ; [#uses=2 type=i64] [debug line = 62:5]
  %tmp_1_cast = zext i5 %step to i20, !dbg !47    ; [#uses=1 type=i20] [debug line = 62:5]
  %tmp_2 = shl i20 1, %tmp_1_cast, !dbg !47       ; [#uses=1 type=i20] [debug line = 62:5]
  %tmp_s = zext i20 %tmp_2 to i32, !dbg !47       ; [#uses=1 type=i32] [debug line = 62:5]
  %tmp_3 = uitofp i32 %tmp_s to double, !dbg !47  ; [#uses=3 type=double] [debug line = 62:5]
  %tmp_4 = fdiv double %Y_load_1, %tmp_3, !dbg !47 ; [#uses=2 type=double] [debug line = 62:5]
  %X_load_1 = load double* %X, align 8, !dbg !49  ; [#uses=4 type=double] [debug line = 63:5]
  br i1 %tmp, label %2, label %3, !dbg !44        ; [debug line = 61:5]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{double* %X}, i64 0, metadata !50), !dbg !49 ; [debug line = 63:5] [debug variable = X]
  %T = fsub double %X_load_1, %tmp_4, !dbg !47    ; [#uses=1 type=double] [debug line = 62:5]
  call void @llvm.dbg.value(metadata !{double %T}, i64 0, metadata !51), !dbg !47 ; [debug line = 62:5] [debug variable = T]
  %tmp_6 = fdiv double %X_load_1, %tmp_3, !dbg !49 ; [#uses=1 type=double] [debug line = 63:5]
  %Y_1 = fadd double %tmp_6, %Y_load_1, !dbg !49  ; [#uses=1 type=double] [debug line = 63:5]
  call void @llvm.dbg.value(metadata !{double %Y_1}, i64 0, metadata !46), !dbg !49 ; [debug line = 63:5] [debug variable = Y]
  call void @llvm.dbg.value(metadata !{double %T}, i64 0, metadata !50), !dbg !52 ; [debug line = 64:5] [debug variable = X]
  %angles_addr = getelementptr inbounds [20 x double]* @angles, i64 0, i64 %tmp_1, !dbg !53 ; [#uses=1 type=double*] [debug line = 65:5]
  %angles_load = load double* %angles_addr, align 8, !dbg !53 ; [#uses=1 type=double] [debug line = 65:5]
  %current_1 = fadd double %current_load, %angles_load, !dbg !53 ; [#uses=1 type=double] [debug line = 65:5]
  call void @llvm.dbg.value(metadata !{double %current_1}, i64 0, metadata !43), !dbg !53 ; [debug line = 65:5] [debug variable = current]
  call void @llvm.dbg.value(metadata !{double %Y_1}, i64 0, metadata !46), !dbg !49 ; [debug line = 63:5] [debug variable = Y]
  call void @llvm.dbg.value(metadata !{double %T}, i64 0, metadata !50), !dbg !52 ; [debug line = 64:5] [debug variable = X]
  call void @llvm.dbg.value(metadata !{double %current_1}, i64 0, metadata !43), !dbg !53 ; [debug line = 65:5] [debug variable = current]
  br label %.backedge, !dbg !54                   ; [debug line = 67:5]

; <label>:3                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{double* %X}, i64 0, metadata !50), !dbg !55 ; [debug line = 68:5] [debug variable = X]
  %T_1 = fadd double %X_load_1, %tmp_4, !dbg !55  ; [#uses=1 type=double] [debug line = 68:5]
  call void @llvm.dbg.value(metadata !{double %T_1}, i64 0, metadata !51), !dbg !55 ; [debug line = 68:5] [debug variable = T]
  %tmp_8 = fdiv double %X_load_1, %tmp_3, !dbg !57 ; [#uses=1 type=double] [debug line = 69:5]
  %Y_2 = fsub double %Y_load_1, %tmp_8, !dbg !57  ; [#uses=1 type=double] [debug line = 69:5]
  call void @llvm.dbg.value(metadata !{double %Y_2}, i64 0, metadata !46), !dbg !57 ; [debug line = 69:5] [debug variable = Y]
  call void @llvm.dbg.value(metadata !{double %T_1}, i64 0, metadata !50), !dbg !58 ; [debug line = 70:5] [debug variable = X]
  %angles_addr_1 = getelementptr inbounds [20 x double]* @angles, i64 0, i64 %tmp_1, !dbg !59 ; [#uses=1 type=double*] [debug line = 71:5]
  %angles_load_1 = load double* %angles_addr_1, align 8, !dbg !59 ; [#uses=1 type=double] [debug line = 71:5]
  %current_2 = fsub double %current_load, %angles_load_1, !dbg !59 ; [#uses=1 type=double] [debug line = 71:5]
  call void @llvm.dbg.value(metadata !{double %current_2}, i64 0, metadata !43), !dbg !59 ; [debug line = 71:5] [debug variable = current]
  call void @llvm.dbg.value(metadata !{double %Y_2}, i64 0, metadata !46), !dbg !57 ; [debug line = 69:5] [debug variable = Y]
  call void @llvm.dbg.value(metadata !{double %T_1}, i64 0, metadata !50), !dbg !58 ; [debug line = 70:5] [debug variable = X]
  call void @llvm.dbg.value(metadata !{double %current_2}, i64 0, metadata !43), !dbg !59 ; [debug line = 71:5] [debug variable = current]
  br label %.backedge

; <label>:4                                       ; preds = %.backedge
  call void @llvm.dbg.value(metadata !{double* %X}, i64 0, metadata !50), !dbg !60 ; [debug line = 74:4] [debug variable = X]
  %X_load = load double* %X, align 8, !dbg !60    ; [#uses=1 type=double] [debug line = 74:4]
  call void @llvm.dbg.value(metadata !{double* %Y}, i64 0, metadata !46), !dbg !61 ; [debug line = 75:4] [debug variable = Y]
  %Y_load = load double* %Y, align 8, !dbg !61    ; [#uses=1 type=double] [debug line = 75:4]
  call void @_ssdm_op_Write.ap_auto.doubleP(double* %c, double %X_load) nounwind, !dbg !60 ; [debug line = 74:4]
  call void @_ssdm_op_Write.ap_auto.doubleP(double* %s, double %Y_load) nounwind, !dbg !61 ; [debug line = 75:4]
  ret void, !dbg !62                              ; [debug line = 78:1]
}

; [#uses=25]
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
define weak double @_ssdm_op_Read.ap_auto.double(double) {
entry:
  ret double %0
}

; [#uses=2]
define weak void @_ssdm_op_Write.ap_auto.doubleP(double*, double) {
entry:
  store double %1, double* %0
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
!8 = metadata !{i32 0, i32 63, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"theta", metadata !11, metadata !"double"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 63, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"s", metadata !5, metadata !"double"}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 63, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"c", metadata !5, metadata !"double"}
!21 = metadata !{i32 786689, metadata !22, metadata !"theta", metadata !23, i32 16777234, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!22 = metadata !{i32 786478, i32 0, metadata !23, metadata !"cordic", metadata !"cordic", metadata !"_Z6cordicdPdS_", metadata !23, i32 18, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (double, double*, double*)* @cordic, null, null, metadata !30, i32 19} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786473, metadata !"cordic.cpp", metadata !"/home/student/gsf52/ece5775", null} ; [ DW_TAG_file_type ]
!24 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{null, metadata !26, metadata !28, metadata !28}
!26 = metadata !{i32 786454, null, metadata !"theta_type", metadata !23, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ]
!27 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!29 = metadata !{i32 786454, null, metadata !"cos_sin_type", metadata !23, i32 42, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!32 = metadata !{i32 18, i32 24, metadata !22, null}
!33 = metadata !{i32 786689, metadata !22, metadata !"s", metadata !23, i32 33554450, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 18, i32 45, metadata !22, null}
!35 = metadata !{i32 786689, metadata !22, metadata !"c", metadata !23, i32 50331666, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 18, i32 62, metadata !22, null}
!37 = metadata !{i32 60, i32 8, metadata !38, null}
!38 = metadata !{i32 786443, metadata !39, i32 60, i32 3, metadata !23, i32 1} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 786443, metadata !22, i32 19, i32 1, metadata !23, i32 0} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 60, i32 23, metadata !38, null}
!41 = metadata !{i32 786688, metadata !39, metadata !"step", metadata !23, i32 56, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!42 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!43 = metadata !{i32 786688, metadata !39, metadata !"current", metadata !23, i32 55, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 61, i32 5, metadata !45, null}
!45 = metadata !{i32 786443, metadata !38, i32 60, i32 30, metadata !23, i32 2} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 786688, metadata !39, metadata !"Y", metadata !23, i32 55, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 62, i32 5, metadata !48, null}
!48 = metadata !{i32 786443, metadata !45, i32 61, i32 24, metadata !23, i32 3} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 63, i32 5, metadata !48, null}
!50 = metadata !{i32 786688, metadata !39, metadata !"X", metadata !23, i32 55, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 786688, metadata !39, metadata !"T", metadata !23, i32 55, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!52 = metadata !{i32 64, i32 5, metadata !48, null}
!53 = metadata !{i32 65, i32 5, metadata !48, null}
!54 = metadata !{i32 67, i32 5, metadata !48, null}
!55 = metadata !{i32 68, i32 5, metadata !56, null}
!56 = metadata !{i32 786443, metadata !45, i32 67, i32 11, metadata !23, i32 4} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 69, i32 5, metadata !56, null}
!58 = metadata !{i32 70, i32 5, metadata !56, null}
!59 = metadata !{i32 71, i32 5, metadata !56, null}
!60 = metadata !{i32 74, i32 4, metadata !39, null}
!61 = metadata !{i32 75, i32 4, metadata !39, null}
!62 = metadata !{i32 78, i32 1, metadata !39, null}
