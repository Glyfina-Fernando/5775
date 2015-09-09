; ModuleID = '/home/student/gsf52/ece5775/fixed_32_2_20.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [7 x i8] c"cordic\00"
@angles_V = internal unnamed_addr constant [20 x i30] [i30 -230426968, i30 497837828, i30 263043836, i30 133525155, i30 67021683, i30 33543512, i30 16775848, i30 8388436, i30 4194280, i30 2097147, i30 1048572, i30 524284, i30 262140, i30 131068, i30 65531, i30 32764, i30 16379, i30 8188, i30 4096, i30 2044]

define void @cordic(i32 %theta_V, i32* %s_V, i32* %c_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %theta_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %s_V), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %c_V), !map !17
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @str) nounwind
  %theta_V_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %theta_V)
  br label %0

; <label>:0                                       ; preds = %_ifconv, %codeRepl
  %p_Val2_4 = phi i32 [ 0, %codeRepl ], [ %current_V, %_ifconv ]
  %p_Val2_3 = phi i32 [ 0, %codeRepl ], [ %Y_V, %_ifconv ]
  %p_Val2_s = phi i32 [ 652032874, %codeRepl ], [ %X_V_2, %_ifconv ]
  %sh_assign = phi i5 [ 0, %codeRepl ], [ %step, %_ifconv ]
  %sh_assign_cast1 = zext i5 %sh_assign to i32
  %exitcond = icmp eq i5 %sh_assign, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 30, i64 30, i64 30)
  %step = add i5 %sh_assign, 1
  br i1 %exitcond, label %1, label %_ifconv

_ifconv:                                          ; preds = %0
  %tmp_2 = icmp ult i32 %p_Val2_4, %theta_V_read
  %p_Val2_1 = lshr i32 %p_Val2_3, %sh_assign_cast1
  %T_V = sub i32 %p_Val2_s, %p_Val2_1
  %p_Val2_2 = lshr i32 %p_Val2_s, %sh_assign_cast1
  %tmp_6 = zext i5 %sh_assign to i64
  %angles_V_addr = getelementptr [20 x i30]* @angles_V, i64 0, i64 %tmp_6
  %p_Val2_5 = load i30* %angles_V_addr, align 4
  %p_Val2_5_cast = zext i30 %p_Val2_5 to i32
  %p_Val2_8 = add i32 %p_Val2_5_cast, %p_Val2_4
  %T_V_1 = add i32 %p_Val2_1, %p_Val2_s
  %p_Val2_s_2 = sub i32 0, %p_Val2_2
  %p_Val2_6 = sub i32 %p_Val2_4, %p_Val2_5_cast
  %p_Val2_3_pn = select i1 %tmp_2, i32 %p_Val2_2, i32 %p_Val2_s_2
  %X_V_2 = select i1 %tmp_2, i32 %T_V, i32 %T_V_1
  %current_V = select i1 %tmp_2, i32 %p_Val2_8, i32 %p_Val2_6
  %Y_V = add i32 %p_Val2_3_pn, %p_Val2_3
  br label %0

; <label>:1                                       ; preds = %0
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %c_V, i32 %p_Val2_s)
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %s_V, i32 %p_Val2_3)
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

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

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
