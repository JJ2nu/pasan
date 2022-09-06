; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/global_ctor_dtor_3.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/global_ctor_dtor_3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 }

$_ZN1SC2Ei = comdat any

$_ZN1SD2Ev = comdat any

@s = dso_local global %struct.S zeroinitializer, align 4
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_global_ctor_dtor_3.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZN1SC2Ei(%struct.S* noundef nonnull align 4 dereferenceable(4) @s, i32 noundef 0)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%struct.S*)* @_ZN1SD2Ev to void (i8*)*), i8* bitcast (%struct.S* @s to i8*), i8* @__dso_handle) #2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1SC2Ei(%struct.S* noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %data) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.S*, align 8
  %data.addr = alloca i32, align 4
  store %struct.S* %this, %struct.S** %this.addr, align 8
  store i32 %data, i32* %data.addr, align 4
  %this1 = load %struct.S*, %struct.S** %this.addr, align 8
  %data2 = getelementptr inbounds %struct.S, %struct.S* %this1, i32 0, i32 0
  %0 = load i32, i32* %data.addr, align 4
  store i32 %0, i32* %data2, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1SD2Ev(%struct.S* noundef nonnull align 4 dereferenceable(4) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.S*, align 8
  store %struct.S* %this, %struct.S** %this.addr, align 8
  %this1 = load %struct.S*, %struct.S** %this.addr, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #3 {
entry:
  ret i32 0
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_global_ctor_dtor_3.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
