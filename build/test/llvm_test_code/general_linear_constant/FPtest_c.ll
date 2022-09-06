; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/general_linear_constant/FPtest.c'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/general_linear_constant/FPtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca float, align 4
  %j = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store float 1.500000e+00, float* %i, align 4
  store float 0x4002666660000000, float* %j, align 4
  %0 = load float, float* %i, align 4
  %mul = fmul float %0, 3.000000e+00
  store float %mul, float* %i, align 4
  %1 = load float, float* %j, align 4
  %conv = fpext float %1 to double
  %sub = fsub double %conv, 3.000000e-01
  %conv1 = fptrunc double %sub to float
  store float %conv1, float* %j, align 4
  %2 = load float, float* %i, align 4
  %conv2 = fptosi float %2 to i32
  ret i32 %conv2
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
