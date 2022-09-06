; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/type_hierarchies/type_hierarchy_1.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/type_hierarchies/type_hierarchy_1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Child = type { %struct.Base }
%struct.Base = type { i32 (...)** }

$_ZN5ChildC2Ev = comdat any

$_ZN4BaseC2Ev = comdat any

$_ZN5Child3fooEv = comdat any

$_ZN4Base3fooEv = comdat any

$_ZTV5Child = comdat any

$_ZTS5Child = comdat any

$_ZTS4Base = comdat any

$_ZTI4Base = comdat any

$_ZTI5Child = comdat any

$_ZTV4Base = comdat any

@_ZTV5Child = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI5Child to i8*), i8* bitcast (i32 (%struct.Child*)* @_ZN5Child3fooEv to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTS5Child = linkonce_odr dso_local constant [7 x i8] c"5Child\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTS4Base = linkonce_odr dso_local constant [6 x i8] c"4Base\00", comdat, align 1
@_ZTI4Base = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_ZTS4Base, i32 0, i32 0) }, comdat, align 8
@_ZTI5Child = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_ZTS5Child, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI4Base to i8*) }, comdat, align 8
@_ZTV4Base = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI4Base to i8*), i8* bitcast (i32 (%struct.Base*)* @_ZN4Base3fooEv to i8*)] }, comdat, align 8

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca %struct.Child, align 8
  store i32 0, i32* %retval, align 4
  call void @_ZN5ChildC2Ev(%struct.Child* noundef nonnull align 8 dereferenceable(8) %c) #3
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5ChildC2Ev(%struct.Child* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.Child*, align 8
  store %struct.Child* %this, %struct.Child** %this.addr, align 8
  %this1 = load %struct.Child*, %struct.Child** %this.addr, align 8
  %0 = bitcast %struct.Child* %this1 to %struct.Base*
  call void @_ZN4BaseC2Ev(%struct.Base* noundef nonnull align 8 dereferenceable(8) %0) #3
  %1 = bitcast %struct.Child* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV5Child, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4BaseC2Ev(%struct.Base* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.Base*, align 8
  store %struct.Base* %this, %struct.Base** %this.addr, align 8
  %this1 = load %struct.Base*, %struct.Base** %this.addr, align 8
  %0 = bitcast %struct.Base* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV4Base, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN5Child3fooEv(%struct.Child* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.Child*, align 8
  store %struct.Child* %this, %struct.Child** %this.addr, align 8
  %this1 = load %struct.Child*, %struct.Child** %this.addr, align 8
  ret i32 2
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN4Base3fooEv(%struct.Base* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.Base*, align 8
  store %struct.Base* %this, %struct.Base** %this.addr, align 8
  %this1 = load %struct.Base*, %struct.Base** %this.addr, align 8
  ret i32 1
}

attributes #0 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
