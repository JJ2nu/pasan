; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/static_callsite_12.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/static_callsite_12.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i8 }
%struct.B = type { i8 }

$_ZN1A5VfuncEv = comdat any

$_ZN1B5VfuncEv = comdat any

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a1 = alloca %struct.A*, align 8
  %b = alloca %struct.B*, align 8
  %a2 = alloca %struct.A*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 1) #4
  %0 = bitcast i8* %call to %struct.A*
  store %struct.A* %0, %struct.A** %a1, align 8
  %1 = load %struct.A*, %struct.A** %a1, align 8
  call void @_ZN1A5VfuncEv(%struct.A* noundef nonnull align 1 dereferenceable(1) %1)
  %call1 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 1) #4
  %2 = bitcast i8* %call1 to %struct.B*
  store %struct.B* %2, %struct.B** %b, align 8
  %3 = load %struct.B*, %struct.B** %b, align 8
  call void @_ZN1B5VfuncEv(%struct.B* noundef nonnull align 1 dereferenceable(1) %3)
  %4 = load %struct.B*, %struct.B** %b, align 8
  %5 = bitcast %struct.B* %4 to %struct.A*
  store %struct.A* %5, %struct.A** %a2, align 8
  %6 = load %struct.A*, %struct.A** %a2, align 8
  call void @_ZN1A5VfuncEv(%struct.A* noundef nonnull align 1 dereferenceable(1) %6)
  %7 = load %struct.A*, %struct.A** %a1, align 8
  %isnull = icmp eq %struct.A* %7, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %8 = bitcast %struct.A* %7 to i8*
  call void @_ZdlPv(i8* noundef %8) #5
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1A5VfuncEv(%struct.A* noundef nonnull align 1 dereferenceable(1) %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.A*, align 8
  store %struct.A* %this, %struct.A** %this.addr, align 8
  %this1 = load %struct.A*, %struct.A** %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN1B5VfuncEv(%struct.B* noundef nonnull align 1 dereferenceable(1) %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.B*, align 8
  store %struct.B* %this, %struct.B** %this.addr, align 8
  %this1 = load %struct.B*, %struct.B** %this.addr, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #3

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { builtin allocsize(0) }
attributes #5 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
