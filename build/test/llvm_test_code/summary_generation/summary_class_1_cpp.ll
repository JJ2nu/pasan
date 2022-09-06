; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/summary_generation/summary_class_1.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/summary_generation/summary_class_1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.Point = type { i32, i32 }

$_ZN5PointC2Eii = comdat any

$_ZN5Point4getXEv = comdat any

$_ZN5Point4getYEv = comdat any

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z11pseudo_userv() #0 {
entry:
  %p = alloca %class.Point, align 4
  call void @_ZN5PointC2Eii(%class.Point* noundef nonnull align 4 dereferenceable(8) %p, i32 noundef 1, i32 noundef 2)
  %call = call noundef i32 @_ZN5Point4getXEv(%class.Point* noundef nonnull align 4 dereferenceable(8) %p)
  %call1 = call noundef i32 @_ZN5Point4getYEv(%class.Point* noundef nonnull align 4 dereferenceable(8) %p)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5PointC2Eii(%class.Point* noundef nonnull align 4 dereferenceable(8) %this, i32 noundef %x, i32 noundef %y) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %class.Point*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %class.Point* %this, %class.Point** %this.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %this1 = load %class.Point*, %class.Point** %this.addr, align 8
  %x2 = getelementptr inbounds %class.Point, %class.Point* %this1, i32 0, i32 0
  %0 = load i32, i32* %x.addr, align 4
  store i32 %0, i32* %x2, align 4
  %y3 = getelementptr inbounds %class.Point, %class.Point* %this1, i32 0, i32 1
  %1 = load i32, i32* %y.addr, align 4
  store i32 %1, i32* %y3, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN5Point4getXEv(%class.Point* noundef nonnull align 4 dereferenceable(8) %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.Point*, align 8
  store %class.Point* %this, %class.Point** %this.addr, align 8
  %this1 = load %class.Point*, %class.Point** %this.addr, align 8
  %x = getelementptr inbounds %class.Point, %class.Point* %this1, i32 0, i32 0
  %0 = load i32, i32* %x, align 4
  ret i32 %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN5Point4getYEv(%class.Point* noundef nonnull align 4 dereferenceable(8) %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.Point*, align 8
  store %class.Point* %this, %class.Point** %this.addr, align 8
  %this1 = load %class.Point*, %class.Point** %this.addr, align 8
  %y = getelementptr inbounds %class.Point, %class.Point* %this1, i32 0, i32 1
  %0 = load i32, i32* %y, align 4
  ret i32 %0
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
