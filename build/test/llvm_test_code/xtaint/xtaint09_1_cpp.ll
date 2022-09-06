; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint09_1.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint09_1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"psr.source\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [68 x i8] c"/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint09_1.cpp\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [9 x i8] c"psr.sink\00", section "llvm.metadata"
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32, i8* }] [{ i8*, i8*, i8*, i32, i8* } { i8* bitcast (i32 ()* @_Z6sourcev to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i32 0, i32 0), i32 4, i8* null }], section "llvm.metadata"

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
  call void @llvm.var.annotation(i8* %.addr1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i32 0, i32 0), i32 5, i8* null)
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %mem = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias i8* @malloc(i64 noundef 4) #4
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %mem, align 8
  %call1 = call noundef i32 @_Z6sourcev()
  %1 = load i32*, i32** %mem, align 8
  store i32 %call1, i32* %1, align 4
  %call2 = call i32 @rand() #4
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %mem, align 8
  store i32 42, i32* %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32*, i32** %mem, align 8
  %4 = load i32, i32* %3, align 4
  call void @_Z4sinki(i32 noundef %4)
  %5 = load i32*, i32** %mem, align 8
  %6 = bitcast i32* %5 to i8*
  call void @free(i8* noundef %6) #4
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #2 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
