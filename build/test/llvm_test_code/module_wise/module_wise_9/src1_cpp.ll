; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/module_wise/module_wise_9/src1.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/module_wise/module_wise_9/src1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Concrete = type { %struct.Abstract }
%struct.Abstract = type { i32 (...)** }
%struct.OtherConcrete = type { %struct.Abstract }

$_ZN13OtherConcreteC2Ev = comdat any

$_ZN8AbstractC2Ev = comdat any

$_ZTS8Abstract = comdat any

$_ZTI8Abstract = comdat any

$_ZTV8Abstract = comdat any

@_ZTV8Concrete = dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI8Concrete to i8*), i8* bitcast (void (%struct.Concrete*, i32*)* @_ZN8Concrete3fooERi to i8*)] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTS8Concrete = dso_local constant [10 x i8] c"8Concrete\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTS8Abstract = linkonce_odr dso_local constant [10 x i8] c"8Abstract\00", comdat, align 1
@_ZTI8Abstract = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_ZTS8Abstract, i32 0, i32 0) }, comdat, align 8
@_ZTI8Concrete = dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_ZTS8Concrete, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI8Abstract to i8*) }, align 8
@_ZTV13OtherConcrete = external dso_local unnamed_addr constant { [3 x i8*] }, align 8
@_ZTV8Abstract = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI8Abstract to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_ZN8Concrete3fooERi(%struct.Concrete* noundef nonnull align 8 dereferenceable(8) %this, i32* noundef nonnull align 4 dereferenceable(4) %i) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %struct.Concrete*, align 8
  %i.addr = alloca i32*, align 8
  store %struct.Concrete* %this, %struct.Concrete** %this.addr, align 8
  store i32* %i, i32** %i.addr, align 8
  %this1 = load %struct.Concrete*, %struct.Concrete** %this.addr, align 8
  %0 = load i32*, i32** %i.addr, align 8
  %1 = load i32, i32* %0, align 4
  %mul = mul nsw i32 %1, 2
  store i32 %mul, i32* %0, align 4
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %struct.Abstract* @_Z7give_mev() #1 {
entry:
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 8) #4
  %0 = bitcast i8* %call to %struct.OtherConcrete*
  call void @_ZN13OtherConcreteC2Ev(%struct.OtherConcrete* noundef nonnull align 8 dereferenceable(8) %0) #5
  %1 = bitcast %struct.OtherConcrete* %0 to %struct.Abstract*
  ret %struct.Abstract* %1
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN13OtherConcreteC2Ev(%struct.OtherConcrete* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.OtherConcrete*, align 8
  store %struct.OtherConcrete* %this, %struct.OtherConcrete** %this.addr, align 8
  %this1 = load %struct.OtherConcrete*, %struct.OtherConcrete** %this.addr, align 8
  %0 = bitcast %struct.OtherConcrete* %this1 to %struct.Abstract*
  call void @_ZN8AbstractC2Ev(%struct.Abstract* noundef nonnull align 8 dereferenceable(8) %0) #5
  %1 = bitcast %struct.OtherConcrete* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV13OtherConcrete, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN8AbstractC2Ev(%struct.Abstract* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.Abstract*, align 8
  store %struct.Abstract* %this, %struct.Abstract** %this.addr, align 8
  %this1 = load %struct.Abstract*, %struct.Abstract** %this.addr, align 8
  %0 = bitcast %struct.Abstract* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV8Abstract, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

declare dso_local void @__cxa_pure_virtual() unnamed_addr

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { builtin allocsize(0) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
