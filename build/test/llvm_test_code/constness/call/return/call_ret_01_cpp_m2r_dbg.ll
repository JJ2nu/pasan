; ModuleID = 'call_ret_01_cpp_m2r_dbg.ll'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/call/return/call_ret_01.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef i32 @_Z3foov() #0 !dbg !8 {
entry:
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 4) #4, !dbg !14, !heapallocsite !12
  %0 = bitcast i8* %call to i32*, !dbg !14
  store i32 42, i32* %0, align 4, !dbg !14
  call void @llvm.dbg.value(metadata i32* %0, metadata !15, metadata !DIExpression()), !dbg !17
  %1 = load i32, i32* %0, align 4, !dbg !18
  ret i32 %1, !dbg !19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #2

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #3 !dbg !20 {
entry:
  %call = call noundef i32 @_Z3foov(), !dbg !21
  call void @llvm.dbg.value(metadata i32 %call, metadata !22, metadata !DIExpression()), !dbg !23
  ret i32 0, !dbg !24
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { builtin allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/call/return/call_ret_01.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/constness/call/return", checksumkind: CSK_MD5, checksum: "a140b7a35d1083d2d2a868a20a03f39b")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", linkageName: "_Z3foov", scope: !9, file: !9, line: 2, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/constness/call/return/call_ret_01.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "a140b7a35d1083d2d2a868a20a03f39b")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocation(line: 3, column: 12, scope: !8)
!15 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 3, type: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!17 = !DILocation(line: 0, scope: !8)
!18 = !DILocation(line: 4, column: 10, scope: !8)
!19 = !DILocation(line: 4, column: 3, scope: !8)
!20 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 7, type: !10, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!21 = !DILocation(line: 8, column: 11, scope: !20)
!22 = !DILocalVariable(name: "i", scope: !20, file: !9, line: 8, type: !12)
!23 = !DILocation(line: 0, scope: !20)
!24 = !DILocation(line: 9, column: 3, scope: !20)