; ModuleID = '/home/student/gsf52/ece5775/float_iter_10.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cordic_ctab = internal unnamed_addr constant [64 x float] [float 0x3FE921FB60000000, float 0x3FDDAC6700000000, float 0x3FCF5B7600000000, float 0x3FBFD5BAA0000000, float 0x3FAFF55BC0000000, float 0x3F9FFD55C0000000, float 0x3F8FFF5560000000, float 0x3F7FFFD560000000, float 0x3F6FFFF560000000, float 0x3F5FFFFD60000000, float 0x3F4FFFFF60000000, float 0x3F3FFFFFE0000000, float 0x3F30000000000000, float 0x3F20000000000000, float 0x3F10000000000000, float 0x3F00000000000000, float 0x3EF0000000000000, float 0x3EE0000000000000, float 0x3ED0000000000000, float 0x3EC0000000000000, float 0x3EB0000000000000, float 0x3EA0000000000000, float 0x3E90000000000000, float 0x3E80000000000000, float 0x3E70000000000000, float 0x3E60000000000000, float 0x3E50000000000000, float 0x3E40000000000000, float 0x3E30000000000000, float 0x3E20000000000000, float 0x3E10000000000000, float 0x3E00000000000000, float 0x3DF0000000000000, float 0x3DE0000000000000, float 0x3DD0000000000000, float 0x3DC0000000000000, float 0x3DB0000000000000, float 0x3DA0000000000000, float 0x3D90000000000000, float 0x3D80000000000000, float 0x3D70000000000000, float 0x3D60000000000000, float 0x3D50000000000000, float 0x3D40000000000000, float 0x3D30000000000000, float 0x3D20000000000000, float 0x3D0FFFFF40000000, float 0x3D00000060000000, float 0x3CEFFFFDE0000000, float 0x3CE00001E0000000, float 0x3CD00001E0000000, float 0x3CC00001E0000000, float 0x3CAFFFD480000000, float 0x3C9FFFD480000000, float 0x3C8FFFD480000000, float 0x3C8000A720000000, float 0x3C7000A720000000, float 0x3C6000A720000000, float 0x3C5000A720000000, float 0x3C3FE9B1A0000000, float 0x3C300C7580000000, float 0x3C1FBA7860000000, float 0x3C103BAEC0000000, float 0x3C003BAEC0000000], align 16
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [7 x i8] c"cordic\00"

define void @cordic(float %theta, float* %s, float* %c) nounwind uwtable {
  %current = alloca float, align 4
  %X = alloca float, align 4
  %Y = alloca float, align 4
  call void (...)* @_ssdm_op_SpecBitsMap(float %theta) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(float* %s) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(float* %c) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @str) nounwind
  %theta_read = call float @_ssdm_op_Read.ap_auto.float(float %theta) nounwind
  br label %.backedge

.backedge:                                        ; preds = %2, %3, %0
  %storemerge = phi float [ 0.000000e+00, %0 ], [ %Y_1, %2 ], [ %Y_2, %3 ]
  %storemerge1 = phi float [ 0x3FE36E9DC0000000, %0 ], [ %T, %2 ], [ %T_1, %3 ]
  %storemerge2 = phi float [ 0.000000e+00, %0 ], [ %current_1, %2 ], [ %current_2, %3 ]
  %step = phi i4 [ 0, %0 ], [ %step_1, %3 ], [ %step_1, %2 ]
  store float %storemerge, float* %Y, align 4
  store float %storemerge1, float* %X, align 4
  store float %storemerge2, float* %current, align 4
  %exitcond = icmp eq i4 %step, -6
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  %step_1 = add i4 %step, 1
  br i1 %exitcond, label %4, label %1

; <label>:1                                       ; preds = %.backedge
  %current_load = load float* %current, align 4
  %Y_load_1 = load float* %Y, align 4
  %tmp = fcmp olt float %current_load, %theta_read
  %tmp_1 = zext i4 %step to i64
  %tmp_1_cast = zext i4 %step to i10
  %tmp_2 = shl i10 1, %tmp_1_cast
  %tmp_s = zext i10 %tmp_2 to i32
  %tmp_3 = uitofp i32 %tmp_s to float
  %tmp_4 = fdiv float %Y_load_1, %tmp_3
  %X_load_1 = load float* %X, align 4
  br i1 %tmp, label %2, label %3

; <label>:2                                       ; preds = %1
  %T = fsub float %X_load_1, %tmp_4
  %tmp_6 = fdiv float %X_load_1, %tmp_3
  %Y_1 = fadd float %tmp_6, %Y_load_1
  %cordic_ctab_addr = getelementptr inbounds [64 x float]* @cordic_ctab, i64 0, i64 %tmp_1
  %cordic_ctab_load = load float* %cordic_ctab_addr, align 4
  %current_1 = fadd float %current_load, %cordic_ctab_load
  br label %.backedge

; <label>:3                                       ; preds = %1
  %T_1 = fadd float %X_load_1, %tmp_4
  %tmp_8 = fdiv float %X_load_1, %tmp_3
  %Y_2 = fsub float %Y_load_1, %tmp_8
  %cordic_ctab_addr_1 = getelementptr inbounds [64 x float]* @cordic_ctab, i64 0, i64 %tmp_1
  %cordic_ctab_load_1 = load float* %cordic_ctab_addr_1, align 4
  %current_2 = fsub float %current_load, %cordic_ctab_load_1
  br label %.backedge

; <label>:4                                       ; preds = %.backedge
  %X_load = load float* %X, align 4
  %Y_load = load float* %Y, align 4
  call void @_ssdm_op_Write.ap_auto.floatP(float* %c, float %X_load) nounwind
  call void @_ssdm_op_Write.ap_auto.floatP(float* %s, float %Y_load) nounwind
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

define weak void @_ssdm_op_Write.ap_auto.floatP(float*, float) {
entry:
  store float %1, float* %0
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
!10 = metadata !{metadata !"theta", metadata !11, metadata !"float"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"s", metadata !5, metadata !"float"}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 31, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"c", metadata !5, metadata !"float"}
