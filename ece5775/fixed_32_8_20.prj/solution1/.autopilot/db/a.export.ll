; ModuleID = '/home/student/gsf52/ece5775/fixed_32_8_20.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [7 x i8] c"cordic\00"
@angles_V = internal unnamed_addr constant [20 x i24] [i24 -3600422, i24 7778716, i24 4110059, i24 2086330, i24 1047213, i24 524117, i24 262122, i24 131069, i24 65535, i24 32767, i24 16383, i24 8191, i24 4095, i24 2047, i24 1023, i24 511, i24 255, i24 127, i24 64, i24 31]

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
  %p_Val2_s = phi i32 [ 10188013, %codeRepl ], [ %X_V_2, %_ifconv ]
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
  %angles_V_addr = getelementptr [20 x i24]* @angles_V, i64 0, i64 %tmp_6
  %p_Val2_5 = load i24* %angles_V_addr, align 4
  %p_Val2_5_cast = zext i24 %p_Val2_5 to i32
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
