; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/basic/seven_structs.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/basic/seven_structs.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i8 }
%struct.B = type { i8 }
%struct.C = type { i8 }
%struct.D = type { i8 }
%struct.E = type { i8 }
%struct.F = type { i8 }
%struct.G = type { i8 }

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %a = alloca %struct.A, align 1
  %b = alloca %struct.B, align 1
  %c = alloca %struct.C, align 1
  %d = alloca %struct.D, align 1
  %e = alloca %struct.E, align 1
  %f = alloca %struct.F, align 1
  %g = alloca %struct.G, align 1
  ret i32 0
}

attributes #0 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}