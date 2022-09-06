; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/virtual_call_9.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/virtual_call_9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32 (...)** }
%struct.B = type { %struct.A }
%struct.C = type { %struct.A }
%struct.D = type { %struct.A }

$_ZN1BC2Ev = comdat any

$_ZN1CC2Ev = comdat any

$_ZN1DC2Ev = comdat any

$_ZN1AC2Ev = comdat any

$_ZN1BD2Ev = comdat any

$_ZN1BD0Ev = comdat any

$_ZN1B3fooEv = comdat any

$_ZN1AD2Ev = comdat any

$_ZN1AD0Ev = comdat any

$_ZN1A3fooEv = comdat any

$_ZN1CD2Ev = comdat any

$_ZN1CD0Ev = comdat any

$_ZN1C3fooEv = comdat any

$_ZN1DD2Ev = comdat any

$_ZN1DD0Ev = comdat any

$_ZN1D3fooEv = comdat any

$_ZTV1B = comdat any

$_ZTS1B = comdat any

$_ZTS1A = comdat any

$_ZTI1A = comdat any

$_ZTI1B = comdat any

$_ZTV1A = comdat any

$_ZTV1C = comdat any

$_ZTS1C = comdat any

$_ZTI1C = comdat any

$_ZTV1D = comdat any

$_ZTS1D = comdat any

$_ZTI1D = comdat any

@_ZTV1B = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI1B to i8*), i8* bitcast (void (%struct.B*)* @_ZN1BD2Ev to i8*), i8* bitcast (void (%struct.B*)* @_ZN1BD0Ev to i8*), i8* bitcast (void (%struct.B*)* @_ZN1B3fooEv to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTS1B = linkonce_odr dso_local constant [3 x i8] c"1B\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTS1A = linkonce_odr dso_local constant [3 x i8] c"1A\00", comdat, align 1
@_ZTI1A = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1A, i32 0, i32 0) }, comdat, align 8
@_ZTI1B = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1B, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI1A to i8*) }, comdat, align 8
@_ZTV1A = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI1A to i8*), i8* bitcast (void (%struct.A*)* @_ZN1AD2Ev to i8*), i8* bitcast (void (%struct.A*)* @_ZN1AD0Ev to i8*), i8* bitcast (void (%struct.A*)* @_ZN1A3fooEv to i8*)] }, comdat, align 8
@_ZTV1C = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI1C to i8*), i8* bitcast (void (%struct.C*)* @_ZN1CD2Ev to i8*), i8* bitcast (void (%struct.C*)* @_ZN1CD0Ev to i8*), i8* bitcast (void (%struct.C*)* @_ZN1C3fooEv to i8*)] }, comdat, align 8
@_ZTS1C = linkonce_odr dso_local constant [3 x i8] c"1C\00", comdat, align 1
@_ZTI1C = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1C, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI1A to i8*) }, comdat, align 8
@_ZTV1D = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI1D to i8*), i8* bitcast (void (%struct.D*)* @_ZN1DD2Ev to i8*), i8* bitcast (void (%struct.D*)* @_ZN1DD0Ev to i8*), i8* bitcast (void (%struct.D*)* @_ZN1D3fooEv to i8*)] }, comdat, align 8
@_ZTS1D = linkonce_odr dso_local constant [3 x i8] c"1D\00", comdat, align 1
@_ZTI1D = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @_ZTS1D, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI1A to i8*) }, comdat, align 8

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %struct.A* @_Z9createObjv() #0 {
entry:
  %retval = alloca %struct.A*, align 8
  %i = alloca i32, align 4
  %call = call i64 @time(i64* noundef null) #8
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv) #8
  %call1 = call i32 @rand() #8
  store i32 %call1, i32* %i, align 4
  %0 = load i32, i32* %i, align 4
  %rem = srem i32 %0, 3
  switch i32 %rem, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %call2 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 8) #9
  %1 = bitcast i8* %call2 to %struct.B*
  call void @_ZN1BC2Ev(%struct.B* noundef nonnull align 8 dereferenceable(8) %1) #8
  %2 = bitcast %struct.B* %1 to %struct.A*
  store %struct.A* %2, %struct.A** %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  %call4 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 8) #9
  %3 = bitcast i8* %call4 to %struct.C*
  call void @_ZN1CC2Ev(%struct.C* noundef nonnull align 8 dereferenceable(8) %3) #8
  %4 = bitcast %struct.C* %3 to %struct.A*
  store %struct.A* %4, %struct.A** %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  %call6 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 8) #9
  %5 = bitcast i8* %call6 to %struct.D*
  call void @_ZN1DC2Ev(%struct.D* noundef nonnull align 8 dereferenceable(8) %5) #8
  %6 = bitcast %struct.D* %5 to %struct.A*
  store %struct.A* %6, %struct.A** %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @llvm.trap()
  unreachable

return:                                           ; preds = %sw.bb5, %sw.bb3, %sw.bb
  %7 = load %struct.A*, %struct.A** %retval, align 8
  ret %struct.A* %7
}

; Function Attrs: nounwind
declare dso_local void @srand(i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1BC2Ev(%struct.B* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.B*, align 8
  store %struct.B* %this, %struct.B** %this.addr, align 8
  %this1 = load %struct.B*, %struct.B** %this.addr, align 8
  %0 = bitcast %struct.B* %this1 to %struct.A*
  call void @_ZN1AC2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %0) #8
  %1 = bitcast %struct.B* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV1B, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1CC2Ev(%struct.C* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.C*, align 8
  store %struct.C* %this, %struct.C** %this.addr, align 8
  %this1 = load %struct.C*, %struct.C** %this.addr, align 8
  %0 = bitcast %struct.C* %this1 to %struct.A*
  call void @_ZN1AC2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %0) #8
  %1 = bitcast %struct.C* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV1C, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1DC2Ev(%struct.D* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.D*, align 8
  store %struct.D* %this, %struct.D** %this.addr, align 8
  %this1 = load %struct.D*, %struct.D** %this.addr, align 8
  %0 = bitcast %struct.D* %this1 to %struct.A*
  call void @_ZN1AC2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %0) #8
  %1 = bitcast %struct.D* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV1D, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #4

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #5 {
entry:
  %retval = alloca i32, align 4
  %a = alloca %struct.A*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noundef %struct.A* @_Z9createObjv()
  store %struct.A* %call, %struct.A** %a, align 8
  %0 = load %struct.A*, %struct.A** %a, align 8
  %1 = bitcast %struct.A* %0 to void (%struct.A*)***
  %vtable = load void (%struct.A*)**, void (%struct.A*)*** %1, align 8
  %vfn = getelementptr inbounds void (%struct.A*)*, void (%struct.A*)** %vtable, i64 2
  %2 = load void (%struct.A*)*, void (%struct.A*)** %vfn, align 8
  call void %2(%struct.A* noundef nonnull align 8 dereferenceable(8) %0)
  %3 = load %struct.A*, %struct.A** %a, align 8
  %isnull = icmp eq %struct.A* %3, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %4 = bitcast %struct.A* %3 to void (%struct.A*)***
  %vtable1 = load void (%struct.A*)**, void (%struct.A*)*** %4, align 8
  %vfn2 = getelementptr inbounds void (%struct.A*)*, void (%struct.A*)** %vtable1, i64 1
  %5 = load void (%struct.A*)*, void (%struct.A*)** %vfn2, align 8
  call void %5(%struct.A* noundef nonnull align 8 dereferenceable(8) %3) #8
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1AC2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.A*, align 8
  store %struct.A* %this, %struct.A** %this.addr, align 8
  %this1 = load %struct.A*, %struct.A** %this.addr, align 8
  %0 = bitcast %struct.A* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV1A, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1BD2Ev(%struct.B* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.B*, align 8
  store %struct.B* %this, %struct.B** %this.addr, align 8
  %this1 = load %struct.B*, %struct.B** %this.addr, align 8
  %0 = bitcast %struct.B* %this1 to %struct.A*
  call void @_ZN1AD2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1BD0Ev(%struct.B* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.B*, align 8
  store %struct.B* %this, %struct.B** %this.addr, align 8
  %this1 = load %struct.B*, %struct.B** %this.addr, align 8
  call void @_ZN1BD2Ev(%struct.B* noundef nonnull align 8 dereferenceable(8) %this1) #8
  %0 = bitcast %struct.B* %this1 to i8*
  call void @_ZdlPv(i8* noundef %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1B3fooEv(%struct.B* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %struct.B*, align 8
  store %struct.B* %this, %struct.B** %this.addr, align 8
  %this1 = load %struct.B*, %struct.B** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1AD2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.A*, align 8
  store %struct.A* %this, %struct.A** %this.addr, align 8
  %this1 = load %struct.A*, %struct.A** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1AD0Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.A*, align 8
  store %struct.A* %this, %struct.A** %this.addr, align 8
  %this1 = load %struct.A*, %struct.A** %this.addr, align 8
  call void @_ZN1AD2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %this1) #8
  %0 = bitcast %struct.A* %this1 to i8*
  call void @_ZdlPv(i8* noundef %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1A3fooEv(%struct.A* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %struct.A*, align 8
  store %struct.A* %this, %struct.A** %this.addr, align 8
  %this1 = load %struct.A*, %struct.A** %this.addr, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1CD2Ev(%struct.C* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.C*, align 8
  store %struct.C* %this, %struct.C** %this.addr, align 8
  %this1 = load %struct.C*, %struct.C** %this.addr, align 8
  %0 = bitcast %struct.C* %this1 to %struct.A*
  call void @_ZN1AD2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1CD0Ev(%struct.C* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.C*, align 8
  store %struct.C* %this, %struct.C** %this.addr, align 8
  %this1 = load %struct.C*, %struct.C** %this.addr, align 8
  call void @_ZN1CD2Ev(%struct.C* noundef nonnull align 8 dereferenceable(8) %this1) #8
  %0 = bitcast %struct.C* %this1 to i8*
  call void @_ZdlPv(i8* noundef %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1C3fooEv(%struct.C* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %struct.C*, align 8
  store %struct.C* %this, %struct.C** %this.addr, align 8
  %this1 = load %struct.C*, %struct.C** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1DD2Ev(%struct.D* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.D*, align 8
  store %struct.D* %this, %struct.D** %this.addr, align 8
  %this1 = load %struct.D*, %struct.D** %this.addr, align 8
  %0 = bitcast %struct.D* %this1 to %struct.A*
  call void @_ZN1AD2Ev(%struct.A* noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1DD0Ev(%struct.D* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.D*, align 8
  store %struct.D* %this, %struct.D** %this.addr, align 8
  %this1 = load %struct.D*, %struct.D** %this.addr, align 8
  call void @_ZN1DD2Ev(%struct.D* noundef nonnull align 8 dereferenceable(8) %this1) #8
  %0 = bitcast %struct.D* %this1 to i8*
  call void @_ZdlPv(i8* noundef %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1D3fooEv(%struct.D* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %struct.D*, align 8
  store %struct.D* %this, %struct.D** %this.addr, align 8
  %this1 = load %struct.D*, %struct.D** %this.addr, align 8
  ret void
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind }
attributes #5 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { builtin allocsize(0) }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
