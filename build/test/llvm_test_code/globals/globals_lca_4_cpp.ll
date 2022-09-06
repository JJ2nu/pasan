; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/globals/globals_lca_4.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/globals/globals_lca_4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ZZ6getFoovE3foo = internal global i32 0, align 4
@_ZGVZ6getFoovE3foo = internal global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"x: %d\0A\00", align 1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z16createInitialFoov() #0 {
entry:
  ret i32 42
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z6getFoov() #0 {
entry:
  %0 = load atomic i8, i8* bitcast (i64* @_ZGVZ6getFoovE3foo to i8*) acquire, align 8
  %guard.uninitialized = icmp eq i8 %0, 0
  br i1 %guard.uninitialized, label %init.check, label %init.end, !prof !4

init.check:                                       ; preds = %entry
  %1 = call i32 @__cxa_guard_acquire(i64* @_ZGVZ6getFoovE3foo) #1
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %init, label %init.end

init:                                             ; preds = %init.check
  %call = call noundef i32 @_Z16createInitialFoov()
  store i32 %call, i32* @_ZZ6getFoovE3foo, align 4
  call void @__cxa_guard_release(i64* @_ZGVZ6getFoovE3foo) #1
  br label %init.end

init.end:                                         ; preds = %init, %init.check, %entry
  %2 = load i32, i32* @_ZZ6getFoovE3foo, align 4
  ret i32 %2
}

; Function Attrs: nounwind
declare dso_local i32 @__cxa_guard_acquire(i64*) #1

; Function Attrs: nounwind
declare dso_local void @__cxa_guard_release(i64*) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %x = alloca i32, align 4
  %call = call noundef i32 @_Z6getFoov()
  %add = add nsw i32 %call, 1
  store i32 %add, i32* %x, align 4
  %0 = load i32, i32* %x, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef %0)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #3

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }
attributes #2 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!4 = !{!"branch_weights", i32 1, i32 1048575}
