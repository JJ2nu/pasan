; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/glibc_and_intrinsic_calls/glibc_and_intrinsics_2.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/glibc_and_intrinsic_calls/glibc_and_intrinsics_2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3foov() #0 {
entry:
  ret i32 42
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3barv() #0 {
entry:
  ret i32 13
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32*, align 8
  %j = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias i8* @malloc(i64 noundef 40) #6
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %i, align 8
  %1 = load i32*, i32** %i, align 8
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 40, i1 false)
  %3 = load i32*, i32** %i, align 8
  %4 = bitcast i32* %3 to i8*
  call void @free(i8* noundef %4) #6
  %call1 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 4) #7
  %5 = bitcast i8* %call1 to i32*
  store i32 13, i32* %5, align 4
  store i32* %5, i32** %j, align 8
  %call2 = call noundef i32 @_Z3foov()
  %6 = load i32*, i32** %j, align 8
  store i32 %call2, i32* %6, align 4
  %call3 = call noundef i32 @_Z3barv()
  %7 = load i32*, i32** %j, align 8
  %8 = load i32, i32* %7, align 4
  %add = add nsw i32 %8, %call3
  store i32 %add, i32* %7, align 4
  %9 = load i32*, i32** %j, align 8
  %isnull = icmp eq i32* %9, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %10 = bitcast i32* %9 to i8*
  call void @_ZdlPv(i8* noundef %10) #8
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #4

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) #5

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { builtin allocsize(0) }
attributes #8 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
