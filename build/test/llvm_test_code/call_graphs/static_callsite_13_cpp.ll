; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/static_callsite_13.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/static_callsite_13.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i8 }
%struct.B = type { i8 }

$_ZN1A5VfuncEv = comdat any

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z5VfuncP1A(%struct.A* noundef %a) #0 {
entry:
  %a.addr = alloca %struct.A*, align 8
  store %struct.A* %a, %struct.A** %a.addr, align 8
  %0 = load %struct.A*, %struct.A** %a.addr, align 8
  call void @_ZN1A5VfuncEv(%struct.A* noundef nonnull align 1 dereferenceable(1) %0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1A5VfuncEv(%struct.A* noundef nonnull align 1 dereferenceable(1) %this) #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.A*, align 8
  store %struct.A* %this, %struct.A** %this.addr, align 8
  %this1 = load %struct.A*, %struct.A** %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %a = alloca %struct.A*, align 8
  %b = alloca %struct.B*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 1) #5
  %0 = bitcast i8* %call to %struct.A*
  store %struct.A* %0, %struct.A** %a, align 8
  %1 = load %struct.A*, %struct.A** %a, align 8
  call void @_Z5VfuncP1A(%struct.A* noundef %1)
  %call1 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 1) #5
  %2 = bitcast i8* %call1 to %struct.B*
  store %struct.B* %2, %struct.B** %b, align 8
  %3 = load %struct.B*, %struct.B** %b, align 8
  %4 = bitcast %struct.B* %3 to %struct.A*
  call void @_Z5VfuncP1A(%struct.A* noundef %4)
  %5 = load %struct.A*, %struct.A** %a, align 8
  %isnull = icmp eq %struct.A* %5, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %6 = bitcast %struct.A* %5 to i8*
  call void @_ZdlPv(i8* noundef %6) #6
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #3

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #4

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { builtin allocsize(0) }
attributes #6 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
