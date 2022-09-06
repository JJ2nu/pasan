; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/module_wise/module_wise_9/main.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/module_wise/module_wise_9/main.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Abstract = type { i32 (...)** }

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z9make_callR8Abstract(%struct.Abstract* noundef nonnull align 8 dereferenceable(8) %A) #0 {
entry:
  %A.addr = alloca %struct.Abstract*, align 8
  %i = alloca i32, align 4
  store %struct.Abstract* %A, %struct.Abstract** %A.addr, align 8
  store i32 42, i32* %i, align 4
  %0 = load %struct.Abstract*, %struct.Abstract** %A.addr, align 8
  %1 = bitcast %struct.Abstract* %0 to void (%struct.Abstract*, i32*)***
  %vtable = load void (%struct.Abstract*, i32*)**, void (%struct.Abstract*, i32*)*** %1, align 8
  %vfn = getelementptr inbounds void (%struct.Abstract*, i32*)*, void (%struct.Abstract*, i32*)** %vtable, i64 0
  %2 = load void (%struct.Abstract*, i32*)*, void (%struct.Abstract*, i32*)** %vfn, align 8
  call void %2(%struct.Abstract* noundef nonnull align 8 dereferenceable(8) %0, i32* noundef nonnull align 4 dereferenceable(4) %i)
  ret void
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %A = alloca %struct.Abstract*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noundef %struct.Abstract* @_Z7give_mev()
  store %struct.Abstract* %call, %struct.Abstract** %A, align 8
  %0 = load %struct.Abstract*, %struct.Abstract** %A, align 8
  call void @_Z9make_callR8Abstract(%struct.Abstract* noundef nonnull align 8 dereferenceable(8) %0)
  ret i32 0
}

declare dso_local noundef %struct.Abstract* @_Z7give_mev() #2

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
