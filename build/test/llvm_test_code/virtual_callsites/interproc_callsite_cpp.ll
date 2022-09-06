; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/virtual_callsites/interproc_callsite.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/virtual_callsites/interproc_callsite.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Base = type { i32 (...)** }
%struct.Derived = type { %struct.Base }

$_ZN7DerivedC2Ev = comdat any

$_ZN4BaseC2Ev = comdat any

$_ZN7Derived3fooEv = comdat any

$_ZN7Derived3barEv = comdat any

$_ZN4Base3fooEv = comdat any

$_ZN4Base3barEv = comdat any

$_ZTV7Derived = comdat any

$_ZTS7Derived = comdat any

$_ZTS4Base = comdat any

$_ZTI4Base = comdat any

$_ZTI7Derived = comdat any

$_ZTV4Base = comdat any

@_ZTV7Derived = linkonce_odr dso_local unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI7Derived to i8*), i8* bitcast (void (%struct.Derived*)* @_ZN7Derived3fooEv to i8*), i8* bitcast (i32 (%struct.Derived*)* @_ZN7Derived3barEv to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTS7Derived = linkonce_odr dso_local constant [9 x i8] c"7Derived\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTS4Base = linkonce_odr dso_local constant [6 x i8] c"4Base\00", comdat, align 1
@_ZTI4Base = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_ZTS4Base, i32 0, i32 0) }, comdat, align 8
@_ZTI7Derived = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_ZTS7Derived, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI4Base to i8*) }, comdat, align 8
@_ZTV4Base = linkonce_odr dso_local unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI4Base to i8*), i8* bitcast (void (%struct.Base*)* @_ZN4Base3fooEv to i8*), i8* bitcast (i32 (%struct.Base*)* @_ZN4Base3barEv to i8*)] }, comdat, align 8

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z12callFunctionR4Base(%struct.Base* noundef nonnull align 8 dereferenceable(8) %b) #0 {
entry:
  %b.addr = alloca %struct.Base*, align 8
  %i = alloca i32, align 4
  store %struct.Base* %b, %struct.Base** %b.addr, align 8
  %0 = load %struct.Base*, %struct.Base** %b.addr, align 8
  %1 = bitcast %struct.Base* %0 to i32 (%struct.Base*)***
  %vtable = load i32 (%struct.Base*)**, i32 (%struct.Base*)*** %1, align 8
  %vfn = getelementptr inbounds i32 (%struct.Base*)*, i32 (%struct.Base*)** %vtable, i64 1
  %2 = load i32 (%struct.Base*)*, i32 (%struct.Base*)** %vfn, align 8
  %call = call noundef i32 %2(%struct.Base* noundef nonnull align 8 dereferenceable(8) %0)
  store i32 %call, i32* %i, align 4
  ret void
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %d = alloca %struct.Derived, align 8
  store i32 0, i32* %retval, align 4
  call void @_ZN7DerivedC2Ev(%struct.Derived* noundef nonnull align 8 dereferenceable(8) %d) #4
  %0 = bitcast %struct.Derived* %d to %struct.Base*
  call void @_Z12callFunctionR4Base(%struct.Base* noundef nonnull align 8 dereferenceable(8) %0)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7DerivedC2Ev(%struct.Derived* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.Derived*, align 8
  store %struct.Derived* %this, %struct.Derived** %this.addr, align 8
  %this1 = load %struct.Derived*, %struct.Derived** %this.addr, align 8
  %0 = bitcast %struct.Derived* %this1 to %struct.Base*
  call void @_ZN4BaseC2Ev(%struct.Base* noundef nonnull align 8 dereferenceable(8) %0) #4
  %1 = bitcast %struct.Derived* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV7Derived, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4BaseC2Ev(%struct.Base* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.Base*, align 8
  store %struct.Base* %this, %struct.Base** %this.addr, align 8
  %this1 = load %struct.Base*, %struct.Base** %this.addr, align 8
  %0 = bitcast %struct.Base* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV4Base, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7Derived3fooEv(%struct.Derived* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.Derived*, align 8
  store %struct.Derived* %this, %struct.Derived** %this.addr, align 8
  %this1 = load %struct.Derived*, %struct.Derived** %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN7Derived3barEv(%struct.Derived* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.Derived*, align 8
  store %struct.Derived* %this, %struct.Derived** %this.addr, align 8
  %this1 = load %struct.Derived*, %struct.Derived** %this.addr, align 8
  ret i32 2
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4Base3fooEv(%struct.Base* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.Base*, align 8
  store %struct.Base* %this, %struct.Base** %this.addr, align 8
  %this1 = load %struct.Base*, %struct.Base** %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN4Base3barEv(%struct.Base* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.Base*, align 8
  store %struct.Base* %this, %struct.Base** %this.addr, align 8
  %this1 = load %struct.Base*, %struct.Base** %this.addr, align 8
  ret i32 1
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
