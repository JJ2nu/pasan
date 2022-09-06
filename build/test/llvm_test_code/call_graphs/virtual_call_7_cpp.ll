; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/virtual_call_7.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/virtual_call_7.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32 (...)** }
%struct.B = type { %struct.A }

$_ZN1AC2Ev = comdat any

$_ZN1BC2Ev = comdat any

$_ZN1AD2Ev = comdat any

$_ZN1AD0Ev = comdat any

$_ZN1A5VfuncEv = comdat any

$_ZN1BD2Ev = comdat any

$_ZN1BD0Ev = comdat any

$_ZN1B5VfuncEv = comdat any

$_ZTV1A = comdat any

$_ZTS1A = comdat any

$_ZTI1A = comdat any

$_ZTV1B = comdat any

$_ZTS1B = comdat any

$_ZTI1B = comdat any

@_ZTV1A = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI1A to i8*), i8* bitcast (void (%struct.A*)* @_ZN1AD2Ev to i8*), i8* bitcast (void (%struct.A*)* @_ZN1AD0Ev to i8*), i8* bitcast (void (%struct.A*)* @_ZN1A5VfuncEv to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTS1A = linkonce_odr dso_local constant [3 x i8] c"1A\00", comdat, align 1
@_ZTI1A = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1A, i32 0, i32 0) }, comdat, align 8
@_ZTV1B = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI1B to i8*), i8* bitcast (void (%struct.B*)* @_ZN1BD2Ev to i8*), i8* bitcast (void (%struct.B*)* @_ZN1BD0Ev to i8*), i8* bitcast (void (%struct.B*)* @_ZN1B5VfuncEv to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTS1B = linkonce_odr dso_local constant [3 x i8] c"1B\00", comdat, align 1
@_ZTI1B = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1B, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI1A to i8*) }, comdat, align 8

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca %struct.A*, align 8
  %b = alloca %struct.A*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 8) #5
  %0 = bitcast i8* %call to %struct.A*
  call void @_ZN1AC2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %0) #6
  store %struct.A* %0, %struct.A** %a, align 8
  %call1 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 8) #5
  %1 = bitcast i8* %call1 to %struct.B*
  call void @_ZN1BC2Ev(%struct.B* noundef nonnull align 8 dereferenceable(8) %1) #6
  %2 = bitcast %struct.B* %1 to %struct.A*
  store %struct.A* %2, %struct.A** %b, align 8
  %3 = load %struct.A*, %struct.A** %a, align 8
  %4 = bitcast %struct.A* %3 to void (%struct.A*)***
  %vtable = load void (%struct.A*)**, void (%struct.A*)*** %4, align 8
  %vfn = getelementptr inbounds void (%struct.A*)*, void (%struct.A*)** %vtable, i64 2
  %5 = load void (%struct.A*)*, void (%struct.A*)** %vfn, align 8
  call void %5(%struct.A* noundef nonnull align 8 dereferenceable(8) %3)
  %6 = load %struct.A*, %struct.A** %b, align 8
  %7 = bitcast %struct.A* %6 to void (%struct.A*)***
  %vtable2 = load void (%struct.A*)**, void (%struct.A*)*** %7, align 8
  %vfn3 = getelementptr inbounds void (%struct.A*)*, void (%struct.A*)** %vtable2, i64 2
  %8 = load void (%struct.A*)*, void (%struct.A*)** %vfn3, align 8
  call void %8(%struct.A* noundef nonnull align 8 dereferenceable(8) %6)
  %9 = load %struct.A*, %struct.A** %a, align 8
  %isnull = icmp eq %struct.A* %9, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %10 = bitcast %struct.A* %9 to void (%struct.A*)***
  %vtable4 = load void (%struct.A*)**, void (%struct.A*)*** %10, align 8
  %vfn5 = getelementptr inbounds void (%struct.A*)*, void (%struct.A*)** %vtable4, i64 1
  %11 = load void (%struct.A*)*, void (%struct.A*)** %vfn5, align 8
  call void %11(%struct.A* noundef nonnull align 8 dereferenceable(8) %9) #6
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #1

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
define linkonce_odr dso_local void @_ZN1BC2Ev(%struct.B* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.B*, align 8
  store %struct.B* %this, %struct.B** %this.addr, align 8
  %this1 = load %struct.B*, %struct.B** %this.addr, align 8
  %0 = bitcast %struct.B* %this1 to %struct.A*
  call void @_ZN1AC2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %0) #6
  %1 = bitcast %struct.B* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV1B, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
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
  call void @_ZN1AD2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %this1) #6
  %0 = bitcast %struct.A* %this1 to i8*
  call void @_ZdlPv(i8* noundef %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1A5VfuncEv(%struct.A* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.A*, align 8
  store %struct.A* %this, %struct.A** %this.addr, align 8
  %this1 = load %struct.A*, %struct.A** %this.addr, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1BD2Ev(%struct.B* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.B*, align 8
  store %struct.B* %this, %struct.B** %this.addr, align 8
  %this1 = load %struct.B*, %struct.B** %this.addr, align 8
  %0 = bitcast %struct.B* %this1 to %struct.A*
  call void @_ZN1AD2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %0) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1BD0Ev(%struct.B* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.B*, align 8
  store %struct.B* %this, %struct.B** %this.addr, align 8
  %this1 = load %struct.B*, %struct.B** %this.addr, align 8
  call void @_ZN1BD2Ev(%struct.B* noundef nonnull align 8 dereferenceable(8) %this1) #6
  %0 = bitcast %struct.B* %this1 to i8*
  call void @_ZdlPv(i8* noundef %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1B5VfuncEv(%struct.B* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.B*, align 8
  store %struct.B* %this, %struct.B** %this.addr, align 8
  %this1 = load %struct.B*, %struct.B** %this.addr, align 8
  ret void
}

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { builtin allocsize(0) }
attributes #6 = { nounwind }
attributes #7 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
