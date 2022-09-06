; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/general_linear_constant/FloatDivision.c'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/general_linear_constant/FloatDivision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca float, align 4
  %j = alloca float, align 4
  %k = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store float 0x3FF4CCCCC0000000, float* %i, align 4
  store float 8.000000e+00, float* %j, align 4
  store float 0x3FC99999A0000000, float* %k, align 4
  %0 = load float, float* %k, align 4
  %conv = fpext float %0 to double
  %div = fdiv double %conv, 2.000000e-01
  %conv1 = fptrunc double %div to float
  store float %conv1, float* %j, align 4
  %1 = load float, float* %j, align 4
  %2 = load float, float* %k, align 4
  %mul = fmul float %1, %2
  store float %mul, float* %i, align 4
  %3 = load float, float* %j, align 4
  %conv2 = fpext float %3 to double
  %sub = fsub double %conv2, 8.000000e+00
  %conv3 = fptrunc double %sub to float
  store float %conv3, float* %k, align 4
  %4 = load float, float* %k, align 4
  %conv4 = fptosi float %4 to i32
  ret i32 %conv4
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
