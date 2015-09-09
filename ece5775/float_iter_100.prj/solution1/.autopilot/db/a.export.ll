; ModuleID = '/home/student/gsf52/ece5775/float_iter_100.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@angles = internal unnamed_addr constant [20 x double] [double 0x3FE921FB540D8D20, double 0x3FDDAC67044EA1D7, double 0x3FCF5B75F8E6C253, double 0x3FBFD5BA8FBBFDD0, double 0x3FAFF55B9D70CFDD, double 3.123983e-02, double 0x3F8FFF5501B17D5D, double 7.812340e-03, double 3.906228e-03, double 1.953121e-03, double 9.765590e-04, double 4.882780e-04, double 2.441370e-04, double 1.220670e-04, double 6.103100e-05, double 3.051400e-05, double 1.525500e-05, double 7.626000e-06, double 3.815000e-06, double 1.904000e-06], align 16
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [7 x i8] c"cordic\00"

define void @cordic(double %theta, double* %s, double* %c) nounwind uwtable {
  %current = alloca double, align 8
  %X = alloca double, align 8
  %Y = alloca double, align 8
  call void (...)* @_ssdm_op_SpecBitsMap(double %theta) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(double* %s) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(double* %c) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @str) nounwind
  %theta_read = call double @_ssdm_op_Read.ap_auto.double(double %theta) nounwind
  br label %.backedge

.backedge:                                        ; preds = %2, %3, %0
  %storemerge = phi double [ 0.000000e+00, %0 ], [ %Y_1, %2 ], [ %Y_2, %3 ]
  %storemerge1 = phi double [ 0x3FE36E9DB5155ED2, %0 ], [ %T, %2 ], [ %T_1, %3 ]
  %storemerge2 = phi double [ 0.000000e+00, %0 ], [ %current_1, %2 ], [ %current_2, %3 ]
  %step = phi i5 [ 0, %0 ], [ %step_1, %3 ], [ %step_1, %2 ]
  store double %storemerge, double* %Y, align 8
  store double %storemerge1, double* %X, align 8
  store double %storemerge2, double* %current, align 8
  %exitcond = icmp eq i5 %step, -12
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 20, i64 20, i64 20) nounwind
  %step_1 = add i5 %step, 1
  br i1 %exitcond, label %4, label %1

; <label>:1                                       ; preds = %.backedge
  %current_load = load double* %current, align 8
  %Y_load_1 = load double* %Y, align 8
  %tmp = fcmp olt double %current_load, %theta_read
  %tmp_1 = zext i5 %step to i64
  %tmp_1_cast = zext i5 %step to i20
  %tmp_2 = shl i20 1, %tmp_1_cast
  %tmp_s = zext i20 %tmp_2 to i32
  %tmp_3 = uitofp i32 %tmp_s to double
  %tmp_4 = fdiv double %Y_load_1, %tmp_3
  %X_load_1 = load double* %X, align 8
  br i1 %tmp, label %2, label %3

; <label>:2                                       ; preds = %1
  %T = fsub double %X_load_1, %tmp_4
  %tmp_6 = fdiv double %X_load_1, %tmp_3
  %Y_1 = fadd double %tmp_6, %Y_load_1
  %angles_addr = getelementptr inbounds [20 x double]* @angles, i64 0, i64 %tmp_1
  %angles_load = load double* %angles_addr, align 8
  %current_1 = fadd double %current_load, %angles_load
  br label %.backedge

; <label>:3                                       ; preds = %1
  %T_1 = fadd double %X_load_1, %tmp_4
  %tmp_8 = fdiv double %X_load_1, %tmp_3
  %Y_2 = fsub double %Y_load_1, %tmp_8
  %angles_addr_1 = getelementptr inbounds [20 x double]* @angles, i64 0, i64 %tmp_1
  %angles_load_1 = load double* %angles_addr_1, align 8
  %current_2 = fsub double %current_load, %angles_load_1
  br label %.backedge

; <label>:4                                       ; preds = %.backedge
  %X_load = load double* %X, align 8
  %Y_load = load double* %Y, align 8
  call void @_ssdm_op_Write.ap_auto.doubleP(double* %c, double %X_load) nounwind
  call void @_ssdm_op_Write.ap_auto.doubleP(double* %s, double %Y_load) nounwind
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

define weak double @_ssdm_op_Read.ap_auto.double(double) {
entry:
  ret double %0
}

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
