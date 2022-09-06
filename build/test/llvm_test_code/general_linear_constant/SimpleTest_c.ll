; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/general_linear_constant/SimpleTest.c'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/general_linear_constant/SimpleTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 4, i32* %i, align 4
  store i32 5, i32* %j, align 4
  %0 = load i32, i32* %i, align 4
  %add = add nsw i32 %0, 6
  store i32 %add, i32* %k, align 4
  %1 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %1, 3
  store i32 %mul, i32* %m, align 4
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %j, align 4
  %add1 = add nsw i32 %2, %3
  store i32 %add1, i32* %n, align 4
  %4 = load i32, i32* %k, align 4
  ret i32 %4
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
