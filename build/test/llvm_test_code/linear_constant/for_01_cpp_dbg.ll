; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/for_01.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/for_01.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #0 !dbg !8 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 0, i32* %a, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %i, metadata !16, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %i, align 4, !dbg !18
  br label %for.cond, !dbg !19

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !20
  %cmp = icmp slt i32 %0, 10, !dbg !22
  br i1 %cmp, label %for.body, label %for.end, !dbg !23

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !24
  %2 = load i32, i32* %a, align 4, !dbg !26
  %add = add nsw i32 %2, %1, !dbg !26
  store i32 %add, i32* %a, align 4, !dbg !26
  br label %for.inc, !dbg !27

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4, !dbg !28
  %inc = add nsw i32 %3, 1, !dbg !28
  store i32 %inc, i32* %i, align 4, !dbg !28
  br label %for.cond, !dbg !29, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !33
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/for_01.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/linear_constant", checksumkind: CSK_MD5, checksum: "4c30385f45eb5a1e18dd7a5a649f3c92")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/linear_constant/for_01.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "4c30385f45eb5a1e18dd7a5a649f3c92")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 2, type: !12)
!15 = !DILocation(line: 2, column: 7, scope: !8)
!16 = !DILocalVariable(name: "i", scope: !17, file: !9, line: 3, type: !12)
!17 = distinct !DILexicalBlock(scope: !8, file: !9, line: 3, column: 3)
!18 = !DILocation(line: 3, column: 12, scope: !17)
!19 = !DILocation(line: 3, column: 8, scope: !17)
!20 = !DILocation(line: 3, column: 19, scope: !21)
!21 = distinct !DILexicalBlock(scope: !17, file: !9, line: 3, column: 3)
!22 = !DILocation(line: 3, column: 21, scope: !21)
!23 = !DILocation(line: 3, column: 3, scope: !17)
!24 = !DILocation(line: 4, column: 10, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !9, line: 3, column: 32)
!26 = !DILocation(line: 4, column: 7, scope: !25)
!27 = !DILocation(line: 5, column: 3, scope: !25)
!28 = !DILocation(line: 3, column: 27, scope: !21)
!29 = !DILocation(line: 3, column: 3, scope: !21)
!30 = distinct !{!30, !23, !31, !32}
!31 = !DILocation(line: 5, column: 3, scope: !17)
!32 = !{!"llvm.loop.mustprogress"}
!33 = !DILocation(line: 6, column: 3, scope: !8)
