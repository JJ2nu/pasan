; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/globals/globals_dtor_1.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/globals/globals_dtor_1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Foo = type { i8 }

$_ZN3FooD2Ev = comdat any

$_ZN3Foo3fooEv = comdat any

$__clang_call_terminate = comdat any

@foo1 = dso_local global %struct.Foo zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZZ3barvE4foo2 = internal global %struct.Foo zeroinitializer, align 1
@_ZGVZ3barvE4foo2 = internal global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Call ~Foo()\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"foo\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_globals_dtor_1.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%struct.Foo*)* @_ZN3FooD2Ev to void (i8*)*), i8* getelementptr inbounds (%struct.Foo, %struct.Foo* @foo1, i32 0, i32 0), i8* @__dso_handle) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN3FooD2Ev(%struct.Foo* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %struct.Foo*, align 8
  store %struct.Foo* %this, %struct.Foo** %this.addr, align 8
  %this1 = load %struct.Foo*, %struct.Foo** %this.addr, align 8
  %call = invoke i32 @puts(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  call void @__clang_call_terminate(i8* %1) #7
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z3barv() #3 {
entry:
  %0 = load atomic i8, i8* bitcast (i64* @_ZGVZ3barvE4foo2 to i8*) acquire, align 8
  %guard.uninitialized = icmp eq i8 %0, 0
  br i1 %guard.uninitialized, label %init.check, label %init.end, !prof !4

init.check:                                       ; preds = %entry
  %1 = call i32 @__cxa_guard_acquire(i64* @_ZGVZ3barvE4foo2) #2
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %init, label %init.end

init:                                             ; preds = %init.check
  %2 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%struct.Foo*)* @_ZN3FooD2Ev to void (i8*)*), i8* getelementptr inbounds (%struct.Foo, %struct.Foo* @_ZZ3barvE4foo2, i32 0, i32 0), i8* @__dso_handle) #2
  call void @__cxa_guard_release(i64* @_ZGVZ3barvE4foo2) #2
  br label %init.end

init.end:                                         ; preds = %init, %init.check, %entry
  call void @_ZN3Foo3fooEv(%struct.Foo* noundef nonnull align 1 dereferenceable(1) @_ZZ3barvE4foo2)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @__cxa_guard_acquire(i64*) #2

; Function Attrs: nounwind
declare dso_local void @__cxa_guard_release(i64*) #2

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN3Foo3fooEv(%struct.Foo* noundef nonnull align 1 dereferenceable(1) %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %struct.Foo*, align 8
  store %struct.Foo* %this, %struct.Foo** %this.addr, align 8
  %this1 = load %struct.Foo*, %struct.Foo** %this.addr, align 8
  %call = call i32 @puts(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #4 {
entry:
  call void @_ZN3Foo3fooEv(%struct.Foo* noundef nonnull align 1 dereferenceable(1) @foo1)
  call void @_Z3barv()
  ret i32 0
}

declare dso_local i32 @puts(i8* noundef) #5

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #6 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #7
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_globals_dtor_1.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!4 = !{!"branch_weights", i32 1, i32 1048575}
