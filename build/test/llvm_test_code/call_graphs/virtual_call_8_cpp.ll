; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/virtual_call_8.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/virtual_call_8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32 (...)** }
%struct.C = type { %struct.B }
%struct.B = type { %struct.A }

@_ZZ4mainE1a = internal global %struct.A* null, align 8
@_ZTVZ4mainE1C = internal unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIZ4mainE1C to i8*), i8* bitcast (%struct.A* (%struct.C*)* @_ZZ4mainEN1C3fooEv to i8*)] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSZ4mainE1C = internal constant [10 x i8] c"Z4mainE1C\00", align 1
@_ZTSZ4mainE1B = internal constant [10 x i8] c"Z4mainE1B\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTSZ4mainE1A = internal constant [10 x i8] c"Z4mainE1A\00", align 1
@_ZTIZ4mainE1A = internal constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_ZTSZ4mainE1A, i32 0, i32 0) }, align 8
@_ZTIZ4mainE1B = internal constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_ZTSZ4mainE1B, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIZ4mainE1A to i8*) }, align 8
@_ZTIZ4mainE1C = internal constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_ZTSZ4mainE1C, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIZ4mainE1B to i8*) }, align 8
@_ZTVZ4mainE1B = internal unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIZ4mainE1B to i8*), i8* bitcast (%struct.A* (%struct.B*)* @_ZZ4mainEN1B3fooEv to i8*)] }, align 8
@_ZTVZ4mainE1A = internal unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIZ4mainE1A to i8*), i8* bitcast (%struct.A* (%struct.A*)* @_ZZ4mainEN1A3fooEv to i8*)] }, align 8

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 8) #7
  %0 = bitcast i8* %call to %struct.C*
  %1 = bitcast %struct.C* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  call void @_ZZ4mainEN1CC2Ev(%struct.C* noundef nonnull align 8 dereferenceable(8) %0) #8
  %2 = bitcast %struct.C* %0 to %struct.A*
  store %struct.A* %2, %struct.A** @_ZZ4mainE1a, align 8
  %3 = load %struct.A*, %struct.A** @_ZZ4mainE1a, align 8
  %4 = bitcast %struct.A* %3 to %struct.A* (%struct.A*)***
  %vtable = load %struct.A* (%struct.A*)**, %struct.A* (%struct.A*)*** %4, align 8
  %vfn = getelementptr inbounds %struct.A* (%struct.A*)*, %struct.A* (%struct.A*)** %vtable, i64 0
  %5 = load %struct.A* (%struct.A*)*, %struct.A* (%struct.A*)** %vfn, align 8
  %call1 = call noundef %struct.A* %5(%struct.A* noundef nonnull align 8 dereferenceable(8) %3)
  %6 = load %struct.A*, %struct.A** @_ZZ4mainE1a, align 8
  %7 = bitcast %struct.A* %6 to %struct.A* (%struct.A*)***
  %vtable2 = load %struct.A* (%struct.A*)**, %struct.A* (%struct.A*)*** %7, align 8
  %vfn3 = getelementptr inbounds %struct.A* (%struct.A*)*, %struct.A* (%struct.A*)** %vtable2, i64 0
  %8 = load %struct.A* (%struct.A*)*, %struct.A* (%struct.A*)** %vfn3, align 8
  %call4 = call noundef %struct.A* %8(%struct.A* noundef nonnull align 8 dereferenceable(8) %6)
  %9 = load %struct.A*, %struct.A** @_ZZ4mainE1a, align 8
  %isnull = icmp eq %struct.A* %9, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %10 = bitcast %struct.A* %9 to i8*
  call void @_ZdlPv(i8* noundef %10) #9
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ZZ4mainEN1CC2Ev(%struct.C* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %struct.C*, align 8
  store %struct.C* %this, %struct.C** %this.addr, align 8
  %this1 = load %struct.C*, %struct.C** %this.addr, align 8
  %0 = bitcast %struct.C* %this1 to %struct.B*
  call void @_ZZ4mainEN1BC2Ev(%struct.B* noundef nonnull align 8 dereferenceable(8) %0) #8
  %1 = bitcast %struct.C* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVZ4mainE1C, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #4

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef %struct.A* @_ZZ4mainEN1C3fooEv(%struct.C* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #5 align 2 {
entry:
  %this.addr = alloca %struct.C*, align 8
  store %struct.C* %this, %struct.C** %this.addr, align 8
  %this1 = load %struct.C*, %struct.C** %this.addr, align 8
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 8) #7
  %0 = bitcast i8* %call to %struct.B*
  %1 = bitcast %struct.B* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  call void @_ZZ4mainEN1BC2Ev(%struct.B* noundef nonnull align 8 dereferenceable(8) %0) #8
  %2 = bitcast %struct.B* %0 to %struct.A*
  store %struct.A* %2, %struct.A** @_ZZ4mainE1a, align 8
  %3 = load %struct.A*, %struct.A** @_ZZ4mainE1a, align 8
  ret %struct.A* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ZZ4mainEN1AC2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %struct.A*, align 8
  store %struct.A* %this, %struct.A** %this.addr, align 8
  %this1 = load %struct.A*, %struct.A** %this.addr, align 8
  %0 = bitcast %struct.A* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVZ4mainE1A, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef %struct.A* @_ZZ4mainEN1B3fooEv(%struct.B* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %struct.B*, align 8
  store %struct.B* %this, %struct.B** %this.addr, align 8
  %this1 = load %struct.B*, %struct.B** %this.addr, align 8
  ret %struct.A* null
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef %struct.A* @_ZZ4mainEN1A3fooEv(%struct.A* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca %struct.A*, align 8
  store %struct.A* %this, %struct.A** %this.addr, align 8
  %this1 = load %struct.A*, %struct.A** %this.addr, align 8
  ret %struct.A* null
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ZZ4mainEN1BC2Ev(%struct.B* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca %struct.B*, align 8
  store %struct.B* %this, %struct.B** %this.addr, align 8
  %this1 = load %struct.B*, %struct.B** %this.addr, align 8
  %0 = bitcast %struct.B* %this1 to %struct.A*
  call void @_ZZ4mainEN1AC2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %0) #8
  %1 = bitcast %struct.B* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVZ4mainE1B, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { builtin allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
