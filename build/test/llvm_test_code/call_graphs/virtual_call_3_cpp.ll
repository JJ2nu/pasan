; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/virtual_call_3.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/virtual_call_3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32 (...)** }
%struct.AImpl = type { %struct.A }

$_ZN5AImplC2Ev = comdat any

$_ZN1AC2Ev = comdat any

$_ZN5AImplD2Ev = comdat any

$_ZN5AImplD0Ev = comdat any

$_ZN5AImpl3fooEv = comdat any

$_ZN1AD2Ev = comdat any

$_ZN1AD0Ev = comdat any

$_ZTV5AImpl = comdat any

$_ZTS5AImpl = comdat any

$_ZTS1A = comdat any

$_ZTI1A = comdat any

$_ZTI5AImpl = comdat any

$_ZTV1A = comdat any

@_ZTV5AImpl = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI5AImpl to i8*), i8* bitcast (void (%struct.AImpl*)* @_ZN5AImplD2Ev to i8*), i8* bitcast (void (%struct.AImpl*)* @_ZN5AImplD0Ev to i8*), i8* bitcast (void (%struct.AImpl*)* @_ZN5AImpl3fooEv to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTS5AImpl = linkonce_odr dso_local constant [7 x i8] c"5AImpl\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTS1A = linkonce_odr dso_local constant [3 x i8] c"1A\00", comdat, align 1
@_ZTI1A = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1A, i32 0, i32 0) }, comdat, align 8
@_ZTI5AImpl = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_ZTS5AImpl, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI1A to i8*) }, comdat, align 8
@_ZTV1A = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI1A to i8*), i8* bitcast (void (%struct.A*)* @_ZN1AD2Ev to i8*), i8* bitcast (void (%struct.A*)* @_ZN1AD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %aptr = alloca %struct.A*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 8) #6
  %0 = bitcast i8* %call to %struct.AImpl*
  call void @_ZN5AImplC2Ev(%struct.AImpl* noundef nonnull align 8 dereferenceable(8) %0) #7
  %1 = bitcast %struct.AImpl* %0 to %struct.A*
  store %struct.A* %1, %struct.A** %aptr, align 8
  %2 = load %struct.A*, %struct.A** %aptr, align 8
  %3 = bitcast %struct.A* %2 to void (%struct.A*)***
  %vtable = load void (%struct.A*)**, void (%struct.A*)*** %3, align 8
  %vfn = getelementptr inbounds void (%struct.A*)*, void (%struct.A*)** %vtable, i64 2
  %4 = load void (%struct.A*)*, void (%struct.A*)** %vfn, align 8
  call void %4(%struct.A* noundef nonnull align 8 dereferenceable(8) %2)
  %5 = load %struct.A*, %struct.A** %aptr, align 8
  %isnull = icmp eq %struct.A* %5, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %6 = bitcast %struct.A* %5 to void (%struct.A*)***
  %vtable1 = load void (%struct.A*)**, void (%struct.A*)*** %6, align 8
  %vfn2 = getelementptr inbounds void (%struct.A*)*, void (%struct.A*)** %vtable1, i64 1
  %7 = load void (%struct.A*)*, void (%struct.A*)** %vfn2, align 8
  call void %7(%struct.A* noundef nonnull align 8 dereferenceable(8) %5) #7
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5AImplC2Ev(%struct.AImpl* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.AImpl*, align 8
  store %struct.AImpl* %this, %struct.AImpl** %this.addr, align 8
  %this1 = load %struct.AImpl*, %struct.AImpl** %this.addr, align 8
  %0 = bitcast %struct.AImpl* %this1 to %struct.A*
  call void @_ZN1AC2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %0) #7
  %1 = bitcast %struct.AImpl* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV5AImpl, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1AC2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.A*, align 8
  store %struct.A* %this, %struct.A** %this.addr, align 8
  %this1 = load %struct.A*, %struct.A** %this.addr, align 8
  %0 = bitcast %struct.A* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV1A, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5AImplD2Ev(%struct.AImpl* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.AImpl*, align 8
  store %struct.AImpl* %this, %struct.AImpl** %this.addr, align 8
  %this1 = load %struct.AImpl*, %struct.AImpl** %this.addr, align 8
  %0 = bitcast %struct.AImpl* %this1 to %struct.A*
  call void @_ZN1AD2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %0) #7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5AImplD0Ev(%struct.AImpl* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.AImpl*, align 8
  store %struct.AImpl* %this, %struct.AImpl** %this.addr, align 8
  %this1 = load %struct.AImpl*, %struct.AImpl** %this.addr, align 8
  call void @_ZN5AImplD2Ev(%struct.AImpl* noundef nonnull align 8 dereferenceable(8) %this1) #7
  %0 = bitcast %struct.AImpl* %this1 to i8*
  call void @_ZdlPv(i8* noundef %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5AImpl3fooEv(%struct.AImpl* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.AImpl*, align 8
  store %struct.AImpl* %this, %struct.AImpl** %this.addr, align 8
  %this1 = load %struct.AImpl*, %struct.AImpl** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1AD2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.A*, align 8
  store %struct.A* %this, %struct.A** %this.addr, align 8
  %this1 = load %struct.A*, %struct.A** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1AD0Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.A*, align 8
  store %struct.A* %this, %struct.A** %this.addr, align 8
  %this1 = load %struct.A*, %struct.A** %this.addr, align 8
  call void @llvm.trap() #9
  unreachable
}

declare dso_local void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #4

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #5

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { builtin allocsize(0) }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
