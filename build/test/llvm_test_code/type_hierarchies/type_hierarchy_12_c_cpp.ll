; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/type_hierarchies/type_hierarchy_12_c.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/type_hierarchies/type_hierarchy_12_c.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ChildsChild = type { %class.Child }
%class.Child = type { i32 (...)** }

$_ZN11ChildsChildC2Ev = comdat any

$_ZN5ChildC2Ev = comdat any

$_ZTV11ChildsChild = comdat any

$_ZTS11ChildsChild = comdat any

$_ZTI11ChildsChild = comdat any

@_ZTV11ChildsChild = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI11ChildsChild to i8*), i8* bitcast (i32 (%class.Child*)* @_ZN5Child3fooEv to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTS11ChildsChild = linkonce_odr dso_local constant [14 x i8] c"11ChildsChild\00", comdat, align 1
@_ZTI5Child = external dso_local constant i8*
@_ZTI11ChildsChild = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @_ZTS11ChildsChild, i32 0, i32 0), i8* bitcast (i8** @_ZTI5Child to i8*) }, comdat, align 8
@_ZTV5Child = external dso_local unnamed_addr constant { [3 x i8*] }, align 8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z4userv() #0 {
entry:
  %c = alloca %struct.ChildsChild, align 8
  call void @_ZN11ChildsChildC2Ev(%struct.ChildsChild* noundef nonnull align 8 dereferenceable(8) %c) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN11ChildsChildC2Ev(%struct.ChildsChild* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.ChildsChild*, align 8
  store %struct.ChildsChild* %this, %struct.ChildsChild** %this.addr, align 8
  %this1 = load %struct.ChildsChild*, %struct.ChildsChild** %this.addr, align 8
  %0 = bitcast %struct.ChildsChild* %this1 to %class.Child*
  call void @_ZN5ChildC2Ev(%class.Child* noundef nonnull align 8 dereferenceable(8) %0) #3
  %1 = bitcast %struct.ChildsChild* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV11ChildsChild, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5ChildC2Ev(%class.Child* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Child*, align 8
  store %class.Child* %this, %class.Child** %this.addr, align 8
  %this1 = load %class.Child*, %class.Child** %this.addr, align 8
  %0 = bitcast %class.Child* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV5Child, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

declare dso_local noundef i32 @_ZN5Child3fooEv(%class.Child* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

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
