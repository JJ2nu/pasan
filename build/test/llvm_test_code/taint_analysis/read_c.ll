; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/read.c'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"taint_cpy.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %infd = alloca i32, align 4
  %size = alloca i64, align 8
  %buffer = alloca i8*, align 8
  %outfd = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 1
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* noundef %1, i32 noundef 0)
  store i32 %call, i32* %infd, align 4
  %2 = load i32, i32* %infd, align 4
  %call1 = call i64 @lseek(i32 noundef %2, i64 noundef 0, i32 noundef 2) #3
  store i64 %call1, i64* %size, align 8
  %3 = load i32, i32* %infd, align 4
  %call2 = call i64 @lseek(i32 noundef %3, i64 noundef 0, i32 noundef 0) #3
  %4 = load i64, i64* %size, align 8
  %add = add nsw i64 %4, 1
  %call3 = call noalias i8* @malloc(i64 noundef %add) #3
  store i8* %call3, i8** %buffer, align 8
  %5 = load i32, i32* %infd, align 4
  %6 = load i8*, i8** %buffer, align 8
  %7 = load i64, i64* %size, align 8
  %call4 = call i64 @read(i32 noundef %5, i8* noundef %6, i64 noundef %7)
  %8 = load i8*, i8** %buffer, align 8
  %9 = load i64, i64* %size, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %9
  store i8 0, i8* %arrayidx5, align 1
  %10 = load i32, i32* %infd, align 4
  %call6 = call i32 @close(i32 noundef %10)
  %11 = load i8*, i8** %buffer, align 8
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef %11)
  %call8 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 64)
  store i32 %call8, i32* %outfd, align 4
  %12 = load i32, i32* %outfd, align 4
  %13 = load i8*, i8** %buffer, align 8
  %14 = load i64, i64* %size, align 8
  %call9 = call i64 @write(i32 noundef %12, i8* noundef %13, i64 noundef %14)
  %15 = load i32, i32* %outfd, align 4
  %call10 = call i32 @close(i32 noundef %15)
  %16 = load i8*, i8** %buffer, align 8
  call void @free(i8* noundef %16) #3
  ret i32 0
}

declare dso_local i32 @open(i8* noundef, i32 noundef, ...) #1

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

declare dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) #1

declare dso_local i32 @close(i32 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i64 @write(i32 noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
