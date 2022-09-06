; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/static_callsite_11.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/static_callsite_11.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.anon = type { i8 }

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %b = alloca i32, align 4
  %ref.tmp = alloca %class.anon, align 1
  %call = call noundef i32 @"_ZZ4mainENK3$_0clEv"(%class.anon* noundef nonnull align 1 dereferenceable(1) %ref.tmp)
  store i32 %call, i32* %b, align 4
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef i32 @"_ZZ4mainENK3$_0clEv"(%class.anon* noundef nonnull align 1 dereferenceable(1) %this) #1 align 2 {
entry:
  %this.addr = alloca %class.anon*, align 8
  store %class.anon* %this, %class.anon** %this.addr, align 8
  %this1 = load %class.anon*, %class.anon** %this.addr, align 8
  ret i32 0
}

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
