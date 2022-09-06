; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint05.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint05.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"psr.sink\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [66 x i8] c"/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint05.cpp\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [11 x i8] c"psr.source\00", section "llvm.metadata"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z5printi(i32 noundef %0) #0 {
entry:
  %.addr = alloca i32, align 4
  store i32 %0, i32* %.addr, align 4
  %.addr1 = bitcast i32* %.addr to i8*
  call void @llvm.var.annotation(i8* %.addr1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i32 0, i32 0), i32 2, i8* null)
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z3fooi(i32 noundef %x) #2 {
entry:
  %x.addr = alloca i32, align 4
  %buf = alloca i32, align 4
  %p = alloca i32*, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32* %buf, i32** %p, align 8
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32*, i32** %p, align 8
  store i32 %0, i32* %1, align 4
  %call = call noundef i32 @_Z4randv()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %p, align 8
  store i32 0, i32* %2, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32*, i32** %p, align 8
  store i32 1, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %buf, align 4
  call void @_Z5printi(i32 noundef %4)
  ret void
}

declare dso_local noundef i32 @_Z4randv() #3

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %argc, i8** noundef %argv) #4 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 %argc, i32* %argc.addr, align 4
  %argc.addr1 = bitcast i32* %argc.addr to i8*
  call void @llvm.var.annotation(i8* %argc.addr1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i32 0, i32 0), i32 17, i8* null)
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  call void @_Z3fooi(i32 noundef %0)
  ret i32 0
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #2 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
