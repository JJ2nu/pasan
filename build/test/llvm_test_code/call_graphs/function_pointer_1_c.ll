; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/function_pointer_1.c'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/function_pointer_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fptr = dso_local global i32 (...)* bitcast (i32 ()* @bar to i32 (...)*), align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @foo() #0 {
entry:
  ret i32 42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bar() #0 {
entry:
  ret i32 13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %result = alloca i32, align 4
  %0 = load i32 (...)*, i32 (...)** @fptr, align 8
  %call = call i32 (...) %0()
  store i32 %call, i32* %result, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
