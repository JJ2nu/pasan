; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/control_flow/if_else.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/control_flow/if_else.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %omega = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %p, align 4
  %0 = load i32, i32* %p, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %i, align 4
  store i32 2, i32* %j, align 4
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %j, align 4
  %add = add nsw i32 %1, %2
  store i32 %add, i32* %k, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 10, i32* %x, align 4
  store i32 11, i32* %y, align 4
  store i32 12, i32* %z, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 13, i32* %omega, align 4
  ret i32 0
}

attributes #0 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
