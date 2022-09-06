; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/type_hierarchies/type_hierarchy_14.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/type_hierarchies/type_hierarchy_14.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.Base = type { i32 (...)** }

$_ZN4BaseC2Ev = comdat any

@_ZTV4Base = dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI4Base to i8*), i8* bitcast (void (%class.Base*)* @_ZN4Base4testEv to i8*), i8* bitcast (void (%class.Base*)* @_ZN4BaseD1Ev to i8*), i8* bitcast (void (%class.Base*)* @_ZN4BaseD0Ev to i8*)] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTS4Base = dso_local constant [6 x i8] c"4Base\00", align 1
@_ZTI4Base = dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_ZTS4Base, i32 0, i32 0) }, align 8

@_ZN4BaseD1Ev = dso_local unnamed_addr alias void (%class.Base*), void (%class.Base*)* @_ZN4BaseD2Ev

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_ZN4Base4testEv(%class.Base* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.Base*, align 8
  store %class.Base* %this, %class.Base** %this.addr, align 8
  %this1 = load %class.Base*, %class.Base** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ZN4BaseD2Ev(%class.Base* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %class.Base*, align 8
  store %class.Base* %this, %class.Base** %this.addr, align 8
  %this1 = load %class.Base*, %class.Base** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ZN4BaseD0Ev(%class.Base* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %class.Base*, align 8
  store %class.Base* %this, %class.Base** %this.addr, align 8
  %this1 = load %class.Base*, %class.Base** %this.addr, align 8
  call void @_ZN4BaseD1Ev(%class.Base* noundef nonnull align 8 dereferenceable(8) %this1) #6
  %0 = bitcast %class.Base* %this1 to i8*
  call void @_ZdlPv(i8* noundef %0) #7
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z4testv() #3 {
entry:
  %b = alloca %class.Base*, align 8
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 8) #8
  %0 = bitcast i8* %call to %class.Base*
  %1 = bitcast %class.Base* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  call void @_ZN4BaseC2Ev(%class.Base* noundef nonnull align 8 dereferenceable(8) %0) #6
  store %class.Base* %0, %class.Base** %b, align 8
  %2 = load %class.Base*, %class.Base** %b, align 8
  %3 = bitcast %class.Base* %2 to void (%class.Base*)***
  %vtable = load void (%class.Base*)**, void (%class.Base*)*** %3, align 8
  %vfn = getelementptr inbounds void (%class.Base*)*, void (%class.Base*)** %vtable, i64 0
  %4 = load void (%class.Base*)*, void (%class.Base*)** %vfn, align 8
  call void %4(%class.Base* noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4BaseC2Ev(%class.Base* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Base*, align 8
  store %class.Base* %this, %class.Base** %this.addr, align 8
  %this1 = load %class.Base*, %class.Base** %this.addr, align 8
  %0 = bitcast %class.Base* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV4Base, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { builtin nounwind }
attributes #8 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
