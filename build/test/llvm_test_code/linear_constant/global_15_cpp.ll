; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_15.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_15.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i8 }
%struct.Y = type { i8 }

$_ZN1XC2Ev = comdat any

$_ZN1YC2Ev = comdat any

$_ZN1YD2Ev = comdat any

@g1 = dso_local global i32 0, align 4
@g2 = dso_local global i32 99, align 4
@var = dso_local global %struct.X zeroinitializer, align 1
@war = dso_local global %struct.Y zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_global_15.cpp, i8* null }]

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3fooi(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %x.addr, align 4
  %1 = load i32, i32* %x.addr, align 4
  ret i32 %1
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #1 section ".text.startup" {
entry:
  call void @_ZN1XC2Ev(%struct.X* noundef nonnull align 1 dereferenceable(1) @var)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1XC2Ev(%struct.X* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.X*, align 8
  store %struct.X* %this, %struct.X** %this.addr, align 8
  %this1 = load %struct.X*, %struct.X** %this.addr, align 8
  store i32 1024, i32* @g1, align 4
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #1 section ".text.startup" {
entry:
  call void @_ZN1YC2Ev(%struct.Y* noundef nonnull align 1 dereferenceable(1) @war)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%struct.Y*)* @_ZN1YD2Ev to void (i8*)*), i8* getelementptr inbounds (%struct.Y, %struct.Y* @war, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1YC2Ev(%struct.Y* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.Y*, align 8
  store %struct.Y* %this, %struct.Y** %this.addr, align 8
  %this1 = load %struct.Y*, %struct.Y** %this.addr, align 8
  %0 = load i32, i32* @g2, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* @g2, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1YD2Ev(%struct.Y* noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.Y*, align 8
  store %struct.Y* %this, %struct.Y** %this.addr, align 8
  %this1 = load %struct.Y*, %struct.Y** %this.addr, align 8
  %0 = load i32, i32* @g2, align 4
  %add = add nsw i32 %0, 13
  store i32 %add, i32* @g1, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #4 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = load i32, i32* @g1, align 4
  store i32 %0, i32* %a, align 4
  %1 = load i32, i32* @g2, align 4
  store i32 %1, i32* %b, align 4
  %2 = load i32, i32* %a, align 4
  %call = call noundef i32 @_Z3fooi(i32 noundef %2)
  store i32 %call, i32* %a, align 4
  %3 = load i32, i32* %a, align 4
  %add = add nsw i32 %3, 30
  ret i32 %add
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_global_15.cpp() #1 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.1()
  ret void
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
