; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/static_callsite_5.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/static_callsite_5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$_ZN3Foo10getNumFoosEv = comdat any

@_ZN3Foo7numFoosE = dso_local global i32 0, align 4

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %call = call noundef i32 @_ZN3Foo10getNumFoosEv()
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN3Foo10getNumFoosEv() #1 comdat align 2 {
entry:
  %0 = load i32, i32* @_ZN3Foo7numFoosE, align 4
  ret i32 %0
}

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
