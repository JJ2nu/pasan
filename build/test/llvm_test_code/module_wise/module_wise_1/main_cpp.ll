; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/module_wise/module_wise_1/main.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/module_wise/module_wise_1/main.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 10, i32* %a, align 4
  %call = call noundef i32 @_Z14generate_taintv()
  store i32 %call, i32* %b, align 4
  %0 = load i32, i32* %a, align 4
  %call1 = call noundef i32 @_Z14do_computationi(i32 noundef %0)
  store i32 %call1, i32* %c, align 4
  %1 = load i32, i32* %b, align 4
  %call2 = call noundef i32 @_Z14do_computationi(i32 noundef %1)
  store i32 %call2, i32* %d, align 4
  %2 = load i32, i32* %c, align 4
  %call3 = call noundef i32 @_Z8sanitizei(i32 noundef %2)
  store i32 %call3, i32* %e, align 4
  %3 = load i32, i32* %e, align 4
  call void @_Z10leak_tainti(i32 noundef %3)
  %4 = load i32, i32* %d, align 4
  call void @_Z10leak_tainti(i32 noundef %4)
  ret i32 0
}

declare dso_local noundef i32 @_Z14generate_taintv() #1

declare dso_local noundef i32 @_Z14do_computationi(i32 noundef) #1

declare dso_local noundef i32 @_Z8sanitizei(i32 noundef) #1

declare dso_local void @_Z10leak_tainti(i32 noundef) #1

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
