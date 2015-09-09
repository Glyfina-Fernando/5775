; ModuleID = '/home/student/gsf52/ece5775/fixed_32_16_30.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [7 x i8] c"cordic\00"
@angles = internal unnamed_addr constant [38 x i12] [i12 -880, i12 1899, i12 1003, i12 509, i12 255, i12 127, i12 63, i12 31, i12 15, i12 7, i12 3, i12 1, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0, i12 0]

define void @cordic(i32 %theta_V, i32* %s_V, i32* %c_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %theta_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %s_V), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %c_V), !map !17
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @str) nounwind
  %theta_V_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %theta_V)
  br label %1

; <label>:1                                       ; preds = %_ifconv, %0
  %p_Val2_4 = phi i32 [ 0, %0 ], [ %current_V, %_ifconv ]
  %p_Val2_3 = phi i32 [ 0, %0 ], [ %Y_V, %_ifconv ]
  %p_Val2_s = phi i32 [ 98959360, %0 ], [ %X_V_2, %_ifconv ]
  %sh_assign = phi i5 [ 0, %0 ], [ %step, %_ifconv ]
  %sh_assign_cast1 = zext i5 %sh_assign to i32
  %exitcond = icmp eq i5 %sh_assign, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 30, i64 30, i64 30)
  %step = add i5 %sh_assign, 1
  br i1 %exitcond, label %2, label %_ifconv

_ifconv:                                          ; preds = %1
  %tmp_2 = icmp slt i32 %p_Val2_4, %theta_V_read
  %p_Val2_1 = ashr i32 %p_Val2_3, %sh_assign_cast1
  %T_V = sub i32 %p_Val2_s, %p_Val2_1
  %p_Val2_2 = ashr i32 %p_Val2_s, %sh_assign_cast1
  %tmp_6 = zext i5 %sh_assign to i64
  %angles_addr = getelementptr [38 x i12]* @angles, i64 0, i64 %tmp_6
  %p_Val2_6 = load i12* %angles_addr, align 2
  %tmp_s = call i28 @_ssdm_op_BitConcatenate.i28.i12.i16(i12 %p_Val2_6, i16 0)
  %tmp_cast = zext i28 %tmp_s to i32
  %p_Val2_8 = add i32 %tmp_cast, %p_Val2_4
  %T_V_1 = add i32 %p_Val2_1, %p_Val2_s
  %p_Val2_s_7 = sub i32 0, %p_Val2_2
  %p_Val2_5 = sub i32 %p_Val2_4, %tmp_cast
  %p_Val2_3_pn = select i1 %tmp_2, i32 %p_Val2_2, i32 %p_Val2_s_7
  %X_V_2 = select i1 %tmp_2, i32 %T_V, i32 %T_V_1
  %current_V = select i1 %tmp_2, i32 %p_Val2_8, i32 %p_Val2_5
  %Y_V = add i32 %p_Val2_3_pn, %p_Val2_3
  br label %1

; <label>:2                                       ; preds = %1
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

define weak i28 @_ssdm_op_BitConcatenate.i28.i12.i16(i12, i16) nounwind readnone {
entry:
  %empty = zext i12 %0 to i28
  %empty_8 = zext i16 %1 to i28
  %empty_9 = trunc i28 %empty to i12
  %empty_10 = call i12 @_ssdm_op_PartSelect.i12.i28.i32.i32(i28 %empty_8, i32 16, i32 27)
  %empty_11 = or i12 %empty_9, %empty_10
  %empty_12 = call i28 @_ssdm_op_PartSet.i28.i28.i12.i32.i32(i28 %empty_8, i12 %empty_11, i32 16, i32 27)
  ret i28 %empty_12
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

define weak i12 @_ssdm_op_PartSelect.i12.i28.i32.i32(i28, i32, i32) nounwind readnone {
entry:
  %empty = call i28 @llvm.part.select.i28(i28 %0, i32 %1, i32 %2)
  %empty_13 = trunc i28 %empty to i12
  ret i12 %empty_13
}

define weak i28 @_ssdm_op_PartSet.i28.i28.i12.i32.i32(i28, i12, i32, i32) nounwind readnone {
entry:
  %empty = call i28 @llvm.part.set.i28.i12(i28 %0, i12 %1, i32 %2, i32 %3)
  ret i28 %empty
}

declare i28 @llvm.part.select.i28(i28, i32, i32) nounwind readnone

declare i28 @llvm.part.set.i28.i12(i28, i12, i32, i32) nounwind readnone

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
!10 = metadata !{metadata !"theta.V", metadata !11, metadata !"int32"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"s.V", metadata !5, metadata !"int32"}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 31, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"c.V", metadata !5, metadata !"int32"}
