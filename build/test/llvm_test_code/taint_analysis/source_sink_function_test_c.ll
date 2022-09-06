; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/source_sink_function_test.c'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/source_sink_function_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [11 x i8] c"taint_1.ll\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"The file is %zu bytes.\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Read:\0A%s\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Could not close file properly.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %bytes = alloca i64, align 8
  %F = alloca %struct._IO_FILE*, align 8
  %buffer = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %F, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %F, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %F, align 8
  %call1 = call i32 @fseek(%struct._IO_FILE* noundef %1, i64 noundef 0, i32 noundef 2)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %F, align 8
  %call2 = call i64 @ftell(%struct._IO_FILE* noundef %2)
  store i64 %call2, i64* %bytes, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %F, align 8
  %call3 = call i32 @fseek(%struct._IO_FILE* noundef %3, i64 noundef 0, i32 noundef 0)
  %4 = load i64, i64* %bytes, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 noundef %4)
  %5 = load i64, i64* %bytes, align 8
  %add = add i64 %5, 1
  %call5 = call noalias i8* @malloc(i64 noundef %add) #3
  store i8* %call5, i8** %buffer, align 8
  %6 = load i8*, i8** %buffer, align 8
  %7 = load i64, i64* %bytes, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %F, align 8
  %call6 = call i64 @fread(i8* noundef %6, i64 noundef 1, i64 noundef %7, %struct._IO_FILE* noundef %8)
  %9 = load i8*, i8** %buffer, align 8
  %10 = load i64, i64* %bytes, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10
  store i8 0, i8* %arrayidx, align 1
  %11 = load i8*, i8** %buffer, align 8
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef %11)
  %12 = load i8*, i8** %buffer, align 8
  call void @free(i8* noundef %12) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %F, align 8
  %call8 = call i32 @fclose(%struct._IO_FILE* noundef %13)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  ret i32 0
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

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
