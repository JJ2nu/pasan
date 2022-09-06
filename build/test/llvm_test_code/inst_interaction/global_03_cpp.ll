; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/inst_interaction/global_03.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/inst_interaction/global_03.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GlobalFeature = dso_local local_unnamed_addr global i32 2, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @main(i32 noundef %argc, i8** nocapture noundef readnone %argv) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @GlobalFeature, align 4, !tbaa !3
  %add = add nsw i32 %0, %argc
  switch i32 %add, label %sw.epilog [
    i32 0, label %cleanup
    i32 1, label %sw.bb1
    i32 7, label %sw.bb3
    i32 2, label %sw.bb5
    i32 4, label %sw.bb7
  ]

sw.bb1:                                           ; preds = %entry
  %add2 = add nsw i32 %argc, 2
  br label %sw.bb3

sw.bb3:                                           ; preds = %entry, %sw.bb1
  %Sum.0 = phi i32 [ %argc, %entry ], [ %add2, %sw.bb1 ]
  %add4 = add nsw i32 %Sum.0, 3
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %add6 = add nsw i32 %argc, 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %add8 = add nsw i32 %argc, 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb7, %sw.bb5, %sw.bb3
  %Sum.1 = phi i32 [ %argc, %entry ], [ %add8, %sw.bb7 ], [ %add6, %sw.bb5 ], [ %add4, %sw.bb3 ]
  %add9 = add nsw i32 %Sum.1, 42
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.epilog
  %retval.0 = phi i32 [ %add9, %sw.epilog ], [ 21, %entry ]
  ret i32 %retval.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
