; ModuleID = 'cf_while_01_cpp_m2r_dbg.ll'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/control_flow/cf_while_01.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #0 !dbg !8 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !14, metadata !DIExpression()), !dbg !15
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 4) #3, !dbg !16, !heapallocsite !12
  %0 = bitcast i8* %call to i32*, !dbg !16
  store i32 42, i32* %0, align 4, !dbg !16
  call void @llvm.dbg.value(metadata i32* %0, metadata !17, metadata !DIExpression()), !dbg !15
  br label %while.cond, !dbg !19

while.cond:                                       ; preds = %while.body, %entry
  %cmp = icmp sgt i32 0, 0, !dbg !20
  br i1 %cmp, label %while.body, label %while.end, !dbg !19

while.body:                                       ; preds = %while.cond
  store i32 10, i32* %0, align 4, !dbg !21
  br label %while.cond, !dbg !19, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  ret i32 0, !dbg !26
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { builtin allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/control_flow/cf_while_01.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/constness/control_flow", checksumkind: CSK_MD5, checksum: "616c81cbc6c1be856c7871b34d99fa71")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 2, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/constness/control_flow/cf_while_01.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "616c81cbc6c1be856c7871b34d99fa71")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "i", scope: !8, file: !9, line: 4, type: !12)
!15 = !DILocation(line: 0, scope: !8)
!16 = !DILocation(line: 5, column: 12, scope: !8)
!17 = !DILocalVariable(name: "k", scope: !8, file: !9, line: 5, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!19 = !DILocation(line: 6, column: 3, scope: !8)
!20 = !DILocation(line: 6, column: 12, scope: !8)
!21 = !DILocation(line: 7, column: 8, scope: !22)
!22 = distinct !DILexicalBlock(scope: !8, file: !9, line: 6, column: 17)
!23 = distinct !{!23, !19, !24, !25}
!24 = !DILocation(line: 8, column: 3, scope: !8)
!25 = !{!"llvm.loop.mustprogress"}
!26 = !DILocation(line: 9, column: 3, scope: !8)
