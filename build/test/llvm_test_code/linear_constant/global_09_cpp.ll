; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_09.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_09.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g1 = dso_local global i32 1, align 4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3fooi(i32 noundef %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* @g1, align 4
  %1 = load i32, i32* %a.addr, align 4
  %add = add nsw i32 %1, %0
  store i32 %add, i32* %a.addr, align 4
  %2 = load i32, i32* %a.addr, align 4
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3bari(i32 noundef %b) #0 {
entry:
  %b.addr = alloca i32, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* @g1, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* @g1, align 4
  %1 = load i32, i32* %b.addr, align 4
  %add1 = add nsw i32 %1, 1
  ret i32 %add1
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3bazi(i32 noundef %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %add = add nsw i32 %0, 3
  ret i32 %add
}

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = load i32, i32* @g1, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* @g1, align 4
  store i32 0, i32* %i, align 4
  %call = call noundef i32 @_Z3fooi(i32 noundef 10)
  store i32 %call, i32* %i, align 4
  %call1 = call noundef i32 @_Z3bari(i32 noundef 3)
  store i32 %call1, i32* %i, align 4
  %call2 = call noundef i32 @_Z3bazi(i32 noundef 39)
  store i32 %call2, i32* %i, align 4
  ret i32 0
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
