; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/module_wise/module_wise_4/src1.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/module_wise/module_wise_4/src1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MyStruct = type { i32 }

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z3fooR8MyStruct(%struct.MyStruct* noundef nonnull align 4 dereferenceable(4) %s) #0 {
entry:
  %s.addr = alloca %struct.MyStruct*, align 8
  store %struct.MyStruct* %s, %struct.MyStruct** %s.addr, align 8
  %0 = load %struct.MyStruct*, %struct.MyStruct** %s.addr, align 8
  %i = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %0, i32 0, i32 0
  store i32 42, i32* %i, align 4
  %1 = load %struct.MyStruct*, %struct.MyStruct** %s.addr, align 8
  call void @_Z3barR8MyStruct(%struct.MyStruct* noundef nonnull align 4 dereferenceable(4) %1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z3barR8MyStruct(%struct.MyStruct* noundef nonnull align 4 dereferenceable(4) %s) #1 {
entry:
  %s.addr = alloca %struct.MyStruct*, align 8
  store %struct.MyStruct* %s, %struct.MyStruct** %s.addr, align 8
  %0 = load %struct.MyStruct*, %struct.MyStruct** %s.addr, align 8
  %i = getelementptr inbounds %struct.MyStruct, %struct.MyStruct* %0, i32 0, i32 0
  store i32 69, i32* %i, align 4
  ret void
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
