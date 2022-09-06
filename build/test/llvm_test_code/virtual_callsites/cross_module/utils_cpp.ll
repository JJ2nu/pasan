; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/virtual_callsites/cross_module/utils.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/virtual_callsites/cross_module/utils.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.base = type { i32 (...)** }

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z12callFunctionR4base(%struct.base* noundef nonnull align 8 dereferenceable(8) %b) #0 {
entry:
  %b.addr = alloca %struct.base*, align 8
  %i = alloca i32, align 4
  store %struct.base* %b, %struct.base** %b.addr, align 8
  %0 = load %struct.base*, %struct.base** %b.addr, align 8
  %1 = bitcast %struct.base* %0 to i32 (%struct.base*)***
  %vtable = load i32 (%struct.base*)**, i32 (%struct.base*)*** %1, align 8
  %vfn = getelementptr inbounds i32 (%struct.base*)*, i32 (%struct.base*)** %vtable, i64 1
  %2 = load i32 (%struct.base*)*, i32 (%struct.base*)** %vfn, align 8
  %call = call noundef i32 %2(%struct.base* noundef nonnull align 8 dereferenceable(8) %0)
  store i32 %call, i32* %i, align 4
  ret void
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
