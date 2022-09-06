; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/globals/globals_lca_5.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/globals/globals_lca_5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [7 x i8] c"x: %d\0A\00", align 1
@foo = dso_local global i32 0, align 4
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_Z13makeGlobalFoov, i8* null }]

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z9createFoov() #0 {
entry:
  ret i32 42
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z8Foo_dtorRi(i32* noundef nonnull align 4 dereferenceable(4) %_this) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %_this.addr = alloca i32*, align 8
  store i32* %_this, i32** %_this.addr, align 8
  %0 = load i32*, i32** %_this.addr, align 8
  %1 = load i32, i32* %0, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %0, align 4
  %2 = load i32*, i32** %_this.addr, align 8
  %3 = load i32, i32* %2, align 4
  %call = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef %3)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %4 = load i32*, i32** %_this.addr, align 8
  store i32 0, i32* %4, align 4
  ret void

terminate.lpad:                                   ; preds = %entry
  %5 = landingpad { i8*, i32 }
          catch i8* null
  %6 = extractvalue { i8*, i32 } %5, 0
  call void @__clang_call_terminate(i8* %6) #5
  unreachable
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #2 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #6
  call void @_ZSt9terminatev() #5
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z13makeGlobalFoov() #3 {
entry:
  %call = call noundef i32 @_Z9createFoov() #6
  store i32 %call, i32* @foo, align 4
  %call1 = call i32 @__cxa_atexit(void (i8*)* noundef bitcast (void (i32*)* @_Z8Foo_dtorRi to void (i8*)*), i8* noundef bitcast (i32* @foo to i8*), i8* noundef null)
  ret void
}

declare dso_local i32 @__cxa_atexit(void (i8*)* noundef, i8* noundef, i8* noundef) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #4 {
entry:
  %0 = load i32, i32* @foo, align 4
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef %0)
  ret i32 0
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind }
attributes #3 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
