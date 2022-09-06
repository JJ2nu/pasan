; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/type_graph_1.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/type_graph_1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i8 }
%struct.B = type { i8 }

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a1 = alloca %struct.A*, align 8
  %a2 = alloca %struct.A*, align 8
  %a3 = alloca %struct.A*, align 8
  %b1 = alloca %struct.B*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 1) #3
  %0 = bitcast i8* %call to %struct.A*
  store %struct.A* %0, %struct.A** %a1, align 8
  %call1 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 1) #3
  %1 = bitcast i8* %call1 to %struct.A*
  store %struct.A* %1, %struct.A** %a2, align 8
  %call2 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 1) #3
  %2 = bitcast i8* %call2 to %struct.A*
  store %struct.A* %2, %struct.A** %a1, align 8
  %call3 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 1) #3
  %3 = bitcast i8* %call3 to %struct.A*
  store %struct.A* %3, %struct.A** %a2, align 8
  %4 = load %struct.A*, %struct.A** %a2, align 8
  store %struct.A* %4, %struct.A** %a1, align 8
  %5 = load %struct.A*, %struct.A** %a1, align 8
  store %struct.A* %5, %struct.A** %a3, align 8
  %6 = load %struct.B*, %struct.B** %b1, align 8
  %7 = bitcast %struct.B* %6 to %struct.A*
  store %struct.A* %7, %struct.A** %a3, align 8
  %8 = load %struct.A*, %struct.A** %a3, align 8
  %9 = bitcast %struct.A* %8 to %struct.B*
  store %struct.B* %9, %struct.B** %b1, align 8
  %10 = load %struct.A*, %struct.A** %a1, align 8
  %isnull = icmp eq %struct.A* %10, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %11 = bitcast %struct.A* %10 to i8*
  call void @_ZdlPv(i8* noundef %11) #4
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #1

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #2

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { builtin allocsize(0) }
attributes #4 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
