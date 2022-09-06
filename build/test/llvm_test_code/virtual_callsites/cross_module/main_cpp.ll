; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/virtual_callsites/cross_module/main.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/virtual_callsites/cross_module/main.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.derived = type { %struct.base }
%struct.base = type { i32 (...)** }

$_ZN7derivedC2Ev = comdat any

$_ZN4baseC2Ev = comdat any

@_ZTV7derived = external dso_local unnamed_addr constant { [4 x i8*] }, align 8
@_ZTV4base = external dso_local unnamed_addr constant { [4 x i8*] }, align 8

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %d = alloca %struct.derived, align 8
  %b = alloca %struct.base, align 8
  store i32 0, i32* %retval, align 4
  call void @_ZN7derivedC2Ev(%struct.derived* noundef nonnull align 8 dereferenceable(8) %d) #3
  %0 = bitcast %struct.derived* %d to %struct.base*
  call void @_Z12callFunctionR4base(%struct.base* noundef nonnull align 8 dereferenceable(8) %0)
  call void @_ZN4baseC2Ev(%struct.base* noundef nonnull align 8 dereferenceable(8) %b) #3
  call void @_Z12callFunctionR4base(%struct.base* noundef nonnull align 8 dereferenceable(8) %b)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7derivedC2Ev(%struct.derived* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.derived*, align 8
  store %struct.derived* %this, %struct.derived** %this.addr, align 8
  %this1 = load %struct.derived*, %struct.derived** %this.addr, align 8
  %0 = bitcast %struct.derived* %this1 to %struct.base*
  call void @_ZN4baseC2Ev(%struct.base* noundef nonnull align 8 dereferenceable(8) %0) #3
  %1 = bitcast %struct.derived* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV7derived, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

declare dso_local void @_Z12callFunctionR4base(%struct.base* noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4baseC2Ev(%struct.base* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.base*, align 8
  store %struct.base* %this, %struct.base** %this.addr, align 8
  %this1 = load %struct.base*, %struct.base** %this.addr, align 8
  %0 = bitcast %struct.base* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV4base, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
