; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint12.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint12.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"psr.source\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [66 x i8] c"/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint12.cpp\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [9 x i8] c"psr.sink\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [14 x i8] c"psr.sanitizer\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32, i8* }] [{ i8*, i8*, i8*, i32, i8* } { i8* bitcast (i32 ()* @_Z6sourcev to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i32 0, i32 0), i32 2, i8* null }], section "llvm.metadata"

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
  call void @llvm.var.annotation(i8* %.addr1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i32 0, i32 0), i32 3, i8* null)
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z8sanitizeRi(i32* noundef nonnull align 4 dereferenceable(4) %0) #0 {
entry:
  %.addr = alloca i32*, align 8
  store i32* %0, i32** %.addr, align 8
  %.addr1 = bitcast i32** %.addr to i8*
  call void @llvm.var.annotation(i8* %.addr1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i32 0, i32 0), i32 4, i8* null)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32* @_Z6getPtrPPi(i32** noundef %pptaint) #0 {
entry:
  %pptaint.addr = alloca i32**, align 8
  store i32** %pptaint, i32*** %pptaint.addr, align 8
  %0 = load i32**, i32*** %pptaint.addr, align 8
  %1 = load i32*, i32** %0, align 8
  ret i32* %1
}

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %taint = alloca i32, align 4
  %ptaint = alloca i32*, align 8
  %call = call noundef i32 @_Z6sourcev()
  store i32 %call, i32* %taint, align 4
  store i32* %taint, i32** %ptaint, align 8
  %call1 = call noundef i32* @_Z6getPtrPPi(i32** noundef %ptaint)
  call void @_Z8sanitizeRi(i32* noundef nonnull align 4 dereferenceable(4) %call1) #3
  %call2 = call noundef i32* @_Z6getPtrPPi(i32** noundef %ptaint)
  %0 = load i32, i32* %call2, align 4
  call void @_Z4sinki(i32 noundef %0)
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
