; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint15.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint15.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.Source = type { i32 (...)** }
%struct.DoubleIntPair = type { double, i32 }

$_ZN6SourceC2Ev = comdat any

$_ZN6Source3getEv = comdat any

$_ZTV6Source = comdat any

$_ZTS6Source = comdat any

$_ZTI6Source = comdat any

@.str = private unnamed_addr constant [9 x i8] c"psr.sink\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [66 x i8] c"/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint15.cpp\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [14 x i8] c"psr.sanitizer\00", section "llvm.metadata"
@_ZTV6Source = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI6Source to i8*), i8* bitcast (i32 (%class.Source*)* @_ZN6Source3getEv to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTS6Source = linkonce_odr dso_local constant [8 x i8] c"6Source\00", comdat, align 1
@_ZTI6Source = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_ZTS6Source, i32 0, i32 0) }, comdat, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"psr.source\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32, i8* }] [{ i8*, i8*, i8*, i32, i8* } { i8* bitcast (i32 (%class.Source*)* @_ZN6Source3getEv to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i32 0, i32 0), i32 5, i8* null }], section "llvm.metadata"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z4sinki(i32 noundef %0) #0 {
entry:
  %.addr = alloca i32, align 4
  store i32 %0, i32* %.addr, align 4
  %.addr1 = bitcast i32* %.addr to i8*
  call void @llvm.var.annotation(i8* %.addr1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i32 0, i32 0), i32 1, i8* null)
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z8sanitizePi(i32* noundef %0) #0 {
entry:
  %.addr = alloca i32*, align 8
  store i32* %0, i32** %.addr, align 8
  %.addr1 = bitcast i32** %.addr to i8*
  call void @llvm.var.annotation(i8* %.addr1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i32 0, i32 0), i32 2, i8* null)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %class.Source* @_Z10makeSourcev() #2 {
entry:
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 8) #7
  %0 = bitcast i8* %call to %class.Source*
  call void @_ZN6SourceC2Ev(%class.Source* noundef nonnull align 8 dereferenceable(8) %0) #8
  ret %class.Source* %0
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6SourceC2Ev(%class.Source* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %class.Source*, align 8
  store %class.Source* %this, %class.Source** %this.addr, align 8
  %this1 = load %class.Source*, %class.Source** %this.addr, align 8
  %0 = bitcast %class.Source* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV6Source, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #5 {
entry:
  %src = alloca %class.Source*, align 8
  %dip = alloca %struct.DoubleIntPair, align 8
  %x = alloca i32, align 4
  %call = call noundef %class.Source* @_Z10makeSourcev()
  store %class.Source* %call, %class.Source** %src, align 8
  %d = getelementptr inbounds %struct.DoubleIntPair, %struct.DoubleIntPair* %dip, i32 0, i32 0
  store double 0x400921FB4D12D84A, double* %d, align 8
  %i = getelementptr inbounds %struct.DoubleIntPair, %struct.DoubleIntPair* %dip, i32 0, i32 1
  %0 = load %class.Source*, %class.Source** %src, align 8
  %1 = bitcast %class.Source* %0 to i32 (%class.Source*)***
  %vtable = load i32 (%class.Source*)**, i32 (%class.Source*)*** %1, align 8
  %vfn = getelementptr inbounds i32 (%class.Source*)*, i32 (%class.Source*)** %vtable, i64 0
  %2 = load i32 (%class.Source*)*, i32 (%class.Source*)** %vfn, align 8
  %call1 = call noundef i32 %2(%class.Source* noundef nonnull align 8 dereferenceable(8) %0)
  store i32 %call1, i32* %i, align 8
  %i2 = getelementptr inbounds %struct.DoubleIntPair, %struct.DoubleIntPair* %dip, i32 0, i32 1
  %3 = load i32, i32* %i2, align 8
  store i32 %3, i32* %x, align 4
  %i3 = getelementptr inbounds %struct.DoubleIntPair, %struct.DoubleIntPair* %dip, i32 0, i32 1
  call void @_Z8sanitizePi(i32* noundef %i3) #8
  %i4 = getelementptr inbounds %struct.DoubleIntPair, %struct.DoubleIntPair* %dip, i32 0, i32 1
  %4 = load i32, i32* %i4, align 8
  call void @_Z4sinki(i32 noundef %4)
  %5 = load i32, i32* %x, align 4
  call void @_Z4sinki(i32 noundef %5)
  %6 = load %class.Source*, %class.Source** %src, align 8
  call void @_Z13disposeSourceP6Source(%class.Source* noundef %6)
  ret i32 0
}

declare dso_local void @_Z13disposeSourceP6Source(%class.Source* noundef) #6

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN6Source3getEv(%class.Source* noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.Source*, align 8
  store %class.Source* %this, %class.Source** %this.addr, align 8
  %this1 = load %class.Source*, %class.Source** %this.addr, align 8
  ret i32 42
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #2 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { builtin allocsize(0) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
