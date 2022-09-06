; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint13.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint13.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DoubleIntPair = type { double, i32 }

@.str = private unnamed_addr constant [11 x i8] c"psr.source\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [66 x i8] c"/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint13.cpp\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [9 x i8] c"psr.sink\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [14 x i8] c"psr.sanitizer\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32, i8* }] [{ i8*, i8*, i8*, i32, i8* } { i8* bitcast (i32 ()* @_Z6sourcev to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i32 0, i32 0), i32 1, i8* null }], section "llvm.metadata"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z6sourcev() #0 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z4sinki(i32 noundef %0) #0 {
entry:
  %.addr = alloca i32, align 4
  store i32 %0, i32* %.addr, align 4
  %.addr1 = bitcast i32* %.addr to i8*
  call void @llvm.var.annotation(i8* %.addr1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i32 0, i32 0), i32 2, i8* null)
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
  call void @llvm.var.annotation(i8* %.addr1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i32 0, i32 0), i32 3, i8* null)
  ret void
}

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %dip = alloca %struct.DoubleIntPair, align 8
  %x = alloca i32, align 4
  %d = getelementptr inbounds %struct.DoubleIntPair, %struct.DoubleIntPair* %dip, i32 0, i32 0
  store double 0x400921FB4D12D84A, double* %d, align 8
  %i = getelementptr inbounds %struct.DoubleIntPair, %struct.DoubleIntPair* %dip, i32 0, i32 1
  %call = call noundef i32 @_Z6sourcev()
  store i32 %call, i32* %i, align 8
  %i1 = getelementptr inbounds %struct.DoubleIntPair, %struct.DoubleIntPair* %dip, i32 0, i32 1
  %0 = load i32, i32* %i1, align 8
  store i32 %0, i32* %x, align 4
  %i2 = getelementptr inbounds %struct.DoubleIntPair, %struct.DoubleIntPair* %dip, i32 0, i32 1
  call void @_Z8sanitizePi(i32* noundef %i2) #3
  %i3 = getelementptr inbounds %struct.DoubleIntPair, %struct.DoubleIntPair* %dip, i32 0, i32 1
  %1 = load i32, i32* %i3, align 8
  call void @_Z4sinki(i32 noundef %1)
  %2 = load i32, i32* %x, align 4
  call void @_Z4sinki(i32 noundef %2)
  ret i32 0
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #2 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
