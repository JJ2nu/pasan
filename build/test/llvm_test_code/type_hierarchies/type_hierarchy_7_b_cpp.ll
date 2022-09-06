; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/type_hierarchies/type_hierarchy_7_b.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/type_hierarchies/type_hierarchy_7_b.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.Omega = type { %struct.Z }
%struct.Z = type { %struct.C, %struct.Y }
%struct.C = type { %struct.A }
%struct.A = type { i32 (...)** }
%struct.Y = type { %struct.X }
%struct.X = type { i32 (...)** }

$_ZN5OmegaC2Ev = comdat any

$_ZN1ZC2Ev = comdat any

$_ZN5Omega1fEv = comdat any

$_ZN1CC2Ev = comdat any

$_ZN1YC2Ev = comdat any

$_ZN1AC2Ev = comdat any

$_ZN1XC2Ev = comdat any

$_ZTV5Omega = comdat any

$_ZTS5Omega = comdat any

$_ZTS1Z = comdat any

$_ZTS1C = comdat any

$_ZTI1C = comdat any

$_ZTS1Y = comdat any

$_ZTI1Y = comdat any

$_ZTI1Z = comdat any

$_ZTI5Omega = comdat any

$_ZTV1Z = comdat any

$_ZTV1C = comdat any

$_ZTV1Y = comdat any

@_ZTV5Omega = linkonce_odr dso_local unnamed_addr constant { [3 x i8*], [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTI5Omega to i8*), i8* bitcast (i32 (%class.Omega*)* @_ZN5Omega1fEv to i8*)], [3 x i8*] [i8* inttoptr (i64 -8 to i8*), i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64 }* @_ZTI5Omega to i8*), i8* bitcast (i32 (%struct.X*)* @_ZN1X1gEv to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external dso_local global i8*
@_ZTS5Omega = linkonce_odr dso_local constant [7 x i8] c"5Omega\00", comdat, align 1
@_ZTS1Z = linkonce_odr dso_local constant [3 x i8] c"1Z\00", comdat, align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTS1C = linkonce_odr dso_local constant [3 x i8] c"1C\00", comdat, align 1
@_ZTI1A = external dso_local constant i8*
@_ZTI1C = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1C, i32 0, i32 0), i8* bitcast (i8** @_ZTI1A to i8*) }, comdat, align 8
@_ZTS1Y = linkonce_odr dso_local constant [3 x i8] c"1Y\00", comdat, align 1
@_ZTI1X = external dso_local constant i8*
@_ZTI1Y = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1Y, i32 0, i32 0), i8* bitcast (i8** @_ZTI1X to i8*) }, comdat, align 8
@_ZTI1Z = linkonce_odr dso_local constant { i8*, i8*, i32, i32, i8*, i64, i8*, i64 } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1Z, i32 0, i32 0), i32 0, i32 2, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI1C to i8*), i64 2, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI1Y to i8*), i64 2050 }, comdat, align 8
@_ZTI5Omega = linkonce_odr dso_local constant { i8*, i8*, i32, i32, i8*, i64 } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_ZTS5Omega, i32 0, i32 0), i32 0, i32 1, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64, i8*, i64 }* @_ZTI1Z to i8*), i64 0 }, comdat, align 8
@_ZTV1Z = linkonce_odr dso_local unnamed_addr constant { [3 x i8*], [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64, i8*, i64 }* @_ZTI1Z to i8*), i8* bitcast (i32 (%struct.A*)* @_ZN1A1fEv to i8*)], [3 x i8*] [i8* inttoptr (i64 -8 to i8*), i8* bitcast ({ i8*, i8*, i32, i32, i8*, i64, i8*, i64 }* @_ZTI1Z to i8*), i8* bitcast (i32 (%struct.X*)* @_ZN1X1gEv to i8*)] }, comdat, align 8
@_ZTV1C = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI1C to i8*), i8* bitcast (i32 (%struct.A*)* @_ZN1A1fEv to i8*)] }, comdat, align 8
@_ZTV1A = external dso_local unnamed_addr constant { [3 x i8*] }, align 8
@_ZTV1Y = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI1Y to i8*), i8* bitcast (i32 (%struct.X*)* @_ZN1X1gEv to i8*)] }, comdat, align 8
@_ZTV1X = external dso_local unnamed_addr constant { [3 x i8*] }, align 8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z4userv() #0 {
entry:
  %o = alloca %class.Omega, align 8
  call void @_ZN5OmegaC2Ev(%class.Omega* noundef nonnull align 8 dereferenceable(16) %o) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5OmegaC2Ev(%class.Omega* noundef nonnull align 8 dereferenceable(16) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Omega*, align 8
  store %class.Omega* %this, %class.Omega** %this.addr, align 8
  %this1 = load %class.Omega*, %class.Omega** %this.addr, align 8
  %0 = bitcast %class.Omega* %this1 to %struct.Z*
  call void @_ZN1ZC2Ev(%struct.Z* noundef nonnull align 8 dereferenceable(16) %0) #3
  %1 = bitcast %class.Omega* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*], [3 x i8*] }, { [3 x i8*], [3 x i8*] }* @_ZTV5Omega, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  %2 = bitcast %class.Omega* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 8
  %3 = bitcast i8* %add.ptr to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*], [3 x i8*] }, { [3 x i8*], [3 x i8*] }* @_ZTV5Omega, i32 0, inrange i32 1, i32 2) to i32 (...)**), i32 (...)*** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1ZC2Ev(%struct.Z* noundef nonnull align 8 dereferenceable(16) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.Z*, align 8
  store %struct.Z* %this, %struct.Z** %this.addr, align 8
  %this1 = load %struct.Z*, %struct.Z** %this.addr, align 8
  %0 = bitcast %struct.Z* %this1 to %struct.C*
  call void @_ZN1CC2Ev(%struct.C* noundef nonnull align 8 dereferenceable(8) %0) #3
  %1 = bitcast %struct.Z* %this1 to i8*
  %2 = getelementptr inbounds i8, i8* %1, i64 8
  %3 = bitcast i8* %2 to %struct.Y*
  call void @_ZN1YC2Ev(%struct.Y* noundef nonnull align 8 dereferenceable(8) %3) #3
  %4 = bitcast %struct.Z* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*], [3 x i8*] }, { [3 x i8*], [3 x i8*] }* @_ZTV1Z, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  %5 = bitcast %struct.Z* %this1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 8
  %6 = bitcast i8* %add.ptr to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*], [3 x i8*] }, { [3 x i8*], [3 x i8*] }* @_ZTV1Z, i32 0, inrange i32 1, i32 2) to i32 (...)**), i32 (...)*** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN5Omega1fEv(%class.Omega* noundef nonnull align 8 dereferenceable(16) %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.Omega*, align 8
  store %class.Omega* %this, %class.Omega** %this.addr, align 8
  %this1 = load %class.Omega*, %class.Omega** %this.addr, align 8
  ret i32 -1000
}

declare dso_local noundef i32 @_ZN1X1gEv(%struct.X* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1CC2Ev(%struct.C* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.C*, align 8
  store %struct.C* %this, %struct.C** %this.addr, align 8
  %this1 = load %struct.C*, %struct.C** %this.addr, align 8
  %0 = bitcast %struct.C* %this1 to %struct.A*
  call void @_ZN1AC2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %0) #3
  %1 = bitcast %struct.C* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV1C, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1YC2Ev(%struct.Y* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.Y*, align 8
  store %struct.Y* %this, %struct.Y** %this.addr, align 8
  %this1 = load %struct.Y*, %struct.Y** %this.addr, align 8
  %0 = bitcast %struct.Y* %this1 to %struct.X*
  call void @_ZN1XC2Ev(%struct.X* noundef nonnull align 8 dereferenceable(8) %0) #3
  %1 = bitcast %struct.Y* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV1Y, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

declare dso_local noundef i32 @_ZN1A1fEv(%struct.A* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1AC2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.A*, align 8
  store %struct.A* %this, %struct.A** %this.addr, align 8
  %this1 = load %struct.A*, %struct.A** %this.addr, align 8
  %0 = bitcast %struct.A* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV1A, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1XC2Ev(%struct.X* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.X*, align 8
  store %struct.X* %this, %struct.X** %this.addr, align 8
  %this1 = load %struct.X*, %struct.X** %this.addr, align 8
  %0 = bitcast %struct.X* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV1X, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
