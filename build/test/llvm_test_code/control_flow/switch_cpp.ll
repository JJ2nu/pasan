; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/control_flow/switch.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/control_flow/switch.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = external dso_local global i8, align 1

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  %0 = load i8, i8* @c, align 1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 65, label %sw.bb
    i32 66, label %sw.bb1
    i32 67, label %sw.bb1
    i32 68, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store i32 10, i32* %i, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry
  store i32 20, i32* %i, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 30, i32* %i, align 4
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb2
  store i32 -1, i32* %i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  ret i32 0
}

attributes #0 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
