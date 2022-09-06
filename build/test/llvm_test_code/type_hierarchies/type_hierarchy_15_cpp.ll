; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/type_hierarchies/type_hierarchy_15.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/type_hierarchies/type_hierarchy_15.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.Base = type <{ i32 (...)**, i32, [4 x i8] }>
%class.Child = type { %class.Base.base, [4 x i8] }
%class.Base.base = type <{ i32 (...)**, i32 }>

$_ZN5ChildC2Ev = comdat any

$_ZN4BaseC2Ev = comdat any

@_ZTV5Child = dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI5Child to i8*), i8* bitcast (void (%class.Base*)* @_ZN4Base4testEv to i8*), i8* bitcast (void (%class.Child*)* @_ZN5ChildD1Ev to i8*), i8* bitcast (void (%class.Child*)* @_ZN5ChildD0Ev to i8*)] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTS5Child = dso_local constant [7 x i8] c"5Child\00", align 1
@_ZTI4Base = external dso_local constant i8*
@_ZTI5Child = dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_ZTS5Child, i32 0, i32 0), i8* bitcast (i8** @_ZTI4Base to i8*) }, align 8
@_ZTV4Base = external dso_local unnamed_addr constant { [5 x i8*] }, align 8

@_ZN4BaseD1Ev = dso_local unnamed_addr alias void (%class.Base*), void (%class.Base*)* @_ZN4BaseD2Ev
@_ZN5ChildD1Ev = dso_local unnamed_addr alias void (%class.Child*), void (%class.Child*)* @_ZN5ChildD2Ev

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ZN4BaseD2Ev(%class.Base* noundef nonnull align 8 dereferenceable(12) %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.Base*, align 8
  store %class.Base* %this, %class.Base** %this.addr, align 8
  %this1 = load %class.Base*, %class.Base** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ZN4BaseD0Ev(%class.Base* noundef nonnull align 8 dereferenceable(12) %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.Base*, align 8
  store %class.Base* %this, %class.Base** %this.addr, align 8
  %this1 = load %class.Base*, %class.Base** %this.addr, align 8
  call void @_ZN4BaseD1Ev(%class.Base* noundef nonnull align 8 dereferenceable(12) %this1) #6
  %0 = bitcast %class.Base* %this1 to i8*
  call void @_ZdlPv(i8* noundef %0) #7
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ZN5ChildD2Ev(%class.Child* noundef nonnull align 8 dereferenceable(12) %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.Child*, align 8
  store %class.Child* %this, %class.Child** %this.addr, align 8
  %this1 = load %class.Child*, %class.Child** %this.addr, align 8
  %0 = bitcast %class.Child* %this1 to %class.Base*
  call void @_ZN4BaseD2Ev(%class.Base* noundef nonnull align 8 dereferenceable(12) %0) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ZN5ChildD0Ev(%class.Child* noundef nonnull align 8 dereferenceable(12) %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.Child*, align 8
  store %class.Child* %this, %class.Child** %this.addr, align 8
  %this1 = load %class.Child*, %class.Child** %this.addr, align 8
  call void @_ZN5ChildD1Ev(%class.Child* noundef nonnull align 8 dereferenceable(12) %this1) #6
  %0 = bitcast %class.Child* %this1 to i8*
  call void @_ZdlPv(i8* noundef %0) #7
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z3usev() #2 {
entry:
  %c = alloca %class.Child*, align 8
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 16) #8
  %0 = bitcast i8* %call to %class.Child*
  %1 = bitcast %class.Child* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 16, i1 false)
  call void @_ZN5ChildC2Ev(%class.Child* noundef nonnull align 8 dereferenceable(12) %0) #6
  store %class.Child* %0, %class.Child** %c, align 8
  %2 = load %class.Child*, %class.Child** %c, align 8
  %isnull = icmp eq %class.Child* %2, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %3 = bitcast %class.Child* %2 to void (%class.Child*)***
  %vtable = load void (%class.Child*)**, void (%class.Child*)*** %3, align 8
  %vfn = getelementptr inbounds void (%class.Child*)*, void (%class.Child*)** %vtable, i64 2
  %4 = load void (%class.Child*)*, void (%class.Child*)** %vfn, align 8
  call void %4(%class.Child* noundef nonnull align 8 dereferenceable(12) %2) #6
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5ChildC2Ev(%class.Child* noundef nonnull align 8 dereferenceable(12) %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.Child*, align 8
  store %class.Child* %this, %class.Child** %this.addr, align 8
  %this1 = load %class.Child*, %class.Child** %this.addr, align 8
  %0 = bitcast %class.Child* %this1 to %class.Base*
  call void @_ZN4BaseC2Ev(%class.Base* noundef nonnull align 8 dereferenceable(12) %0) #6
  %1 = bitcast %class.Child* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV5Child, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

declare dso_local void @_ZN4Base4testEv(%class.Base* noundef nonnull align 8 dereferenceable(12)) unnamed_addr #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4BaseC2Ev(%class.Base* noundef nonnull align 8 dereferenceable(12) %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.Base*, align 8
  store %class.Base* %this, %class.Base** %this.addr, align 8
  %this1 = load %class.Base*, %class.Base** %this.addr, align 8
  %0 = bitcast %class.Base* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV4Base, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { builtin nounwind }
attributes #8 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
