; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/inst_interaction/basic_06.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/inst_interaction/basic_06.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  store i32 9001, i32* %k, align 4
  %call = call noundef zeroext i1 @_Z4randv()
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32* %i, i32** %p, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32* %j, i32** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %0 = load i32, i32* %k, align 4
  %1 = load i32*, i32** %p, align 8
  store i32 %0, i32* %1, align 4
  %2 = load i32*, i32** %p, align 8
  %3 = load i32, i32* %2, align 4
  ret i32 %3
}

declare dso_local noundef zeroext i1 @_Z4randv() #1

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}