; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/inst_interaction/call_06.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/inst_interaction/call_06.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z9incrementi(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %i.addr, align 4
  ret i32 %inc
}

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %i, align 4
  store i32 1, i32* %j, align 4
  store i32 2, i32* %k, align 4
  store i32 3, i32* %l, align 4
  %0 = load i32, i32* %i, align 4
  %call = call noundef i32 @_Z9incrementi(i32 noundef %0)
  store i32 %call, i32* %i, align 4
  %1 = load i32, i32* %j, align 4
  %call1 = call noundef i32 @_Z9incrementi(i32 noundef %1)
  store i32 %call1, i32* %j, align 4
  %2 = load i32, i32* %k, align 4
  %call2 = call noundef i32 @_Z9incrementi(i32 noundef %2)
  store i32 %call2, i32* %k, align 4
  %3 = load i32, i32* %l, align 4
  %call3 = call noundef i32 @_Z9incrementi(i32 noundef %3)
  store i32 %call3, i32* %l, align 4
  %4 = load i32, i32* %i, align 4
  ret i32 %4
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}