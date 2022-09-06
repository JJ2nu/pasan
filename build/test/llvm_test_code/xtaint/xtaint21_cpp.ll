; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint21.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/xtaint/xtaint21.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 42, i32* %x, align 4
  store i32 24, i32* %y, align 4
  call void @_Z7srcsinkRi(i32* noundef nonnull align 4 dereferenceable(4) %x)
  call void @_Z7srcsinkRi(i32* noundef nonnull align 4 dereferenceable(4) %y)
  call void @_Z7srcsinkRi(i32* noundef nonnull align 4 dereferenceable(4) %x)
  %0 = load i32, i32* %y, align 4
  call void @_Z4sinki(i32 noundef %0)
  ret i32 0
}

declare dso_local void @_Z7srcsinkRi(i32* noundef nonnull align 4 dereferenceable(4)) #1

declare dso_local void @_Z4sinki(i32 noundef) #1

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
