; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/struct_member.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/struct_member.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Point = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Answer to everything: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Super secret value: %d\0A\00", align 1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %p = alloca %struct.Point, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %X = getelementptr inbounds %struct.Point, %struct.Point* %p, i32 0, i32 0
  store i32 42, i32* %X, align 4
  %Y = getelementptr inbounds %struct.Point, %struct.Point* %p, i32 0, i32 1
  %0 = load i32, i32* %argc.addr, align 4
  store i32 %0, i32* %Y, align 4
  %X1 = getelementptr inbounds %struct.Point, %struct.Point* %p, i32 0, i32 0
  %1 = load i32, i32* %X1, align 4
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef %1)
  %Y2 = getelementptr inbounds %struct.Point, %struct.Point* %p, i32 0, i32 1
  %2 = load i32, i32* %Y2, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef %2)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
