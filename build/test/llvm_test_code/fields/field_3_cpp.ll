; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/fields/field_3.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/fields/field_3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i32, i32 }

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z8sanitizeR1X(%struct.X* noundef nonnull align 4 dereferenceable(8) %x) #0 {
entry:
  %x.addr = alloca %struct.X*, align 8
  store %struct.X* %x, %struct.X** %x.addr, align 8
  %0 = load %struct.X*, %struct.X** %x.addr, align 8
  %x1 = getelementptr inbounds %struct.X, %struct.X* %0, i32 0, i32 0
  store i32 0, i32* %x1, align 4
  ret void
}

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main(i32 noundef %argc, i8** noundef %argv) #1 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %x = alloca %struct.X, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %x1 = getelementptr inbounds %struct.X, %struct.X* %x, i32 0, i32 0
  store i32 %0, i32* %x1, align 4
  %y = getelementptr inbounds %struct.X, %struct.X* %x, i32 0, i32 1
  store i32 42, i32* %y, align 4
  ret i32 0
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
