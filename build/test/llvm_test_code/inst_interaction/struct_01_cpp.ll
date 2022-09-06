; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/inst_interaction/struct_01.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/inst_interaction/struct_01.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i32, i32 }

$_ZN1XC2Eii = comdat any

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca %struct.X, align 4
  %a = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @_ZN1XC2Eii(%struct.X* noundef nonnull align 4 dereferenceable(8) %x, i32 noundef 10, i32 noundef 20)
  %i = getelementptr inbounds %struct.X, %struct.X* %x, i32 0, i32 0
  %0 = load i32, i32* %i, align 4
  store i32 %0, i32* %a, align 4
  %1 = load i32, i32* %a, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1XC2Eii(%struct.X* noundef nonnull align 4 dereferenceable(8) %this, i32 noundef %i, i32 noundef %j) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.X*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store %struct.X* %this, %struct.X** %this.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %this1 = load %struct.X*, %struct.X** %this.addr, align 8
  %i2 = getelementptr inbounds %struct.X, %struct.X* %this1, i32 0, i32 0
  %0 = load i32, i32* %i.addr, align 4
  store i32 %0, i32* %i2, align 4
  %j3 = getelementptr inbounds %struct.X, %struct.X* %this1, i32 0, i32 1
  %1 = load i32, i32* %j.addr, align 4
  store i32 %1, i32* %j3, align 4
  ret void
}

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
