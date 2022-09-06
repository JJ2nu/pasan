; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/glibc_and_intrinsic_calls/glibc_and_intrinsics_1.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/glibc_and_intrinsic_calls/glibc_and_intrinsics_1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3foov() #0 {
entry:
  ret i32 13
}

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32*, align 8
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call noalias i8* @malloc(i64 noundef 4) #3
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %i, align 8
  %1 = load i32*, i32** %i, align 8
  store i32 13, i32* %1, align 4
  %call1 = call noundef i32 @_Z3foov()
  store i32 %call1, i32* %j, align 4
  %2 = load i32, i32* %j, align 4
  %3 = load i32*, i32** %i, align 8
  %4 = load i32, i32* %3, align 4
  %add = add nsw i32 %2, %4
  store i32 %add, i32* %j, align 4
  %5 = load i32*, i32** %i, align 8
  %6 = bitcast i32* %5 to i8*
  call void @free(i8* noundef %6) #3
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
