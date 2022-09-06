; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/overflow_div_min_by_neg_one.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/overflow_div_min_by_neg_one.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i64 -9223372036854775807, i64* %i, align 8
  %0 = load i64, i64* %i, align 8
  %sub = sub nsw i64 %0, 8
  store i64 %sub, i64* %j, align 8
  %1 = load i64, i64* %j, align 8
  %div = sdiv i64 %1, -1
  store i64 %div, i64* %k, align 8
  ret i32 0
}

attributes #0 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
