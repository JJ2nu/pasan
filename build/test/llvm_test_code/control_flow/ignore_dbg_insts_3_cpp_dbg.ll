; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/control_flow/ignore_dbg_insts_3.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/control_flow/ignore_dbg_insts_3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #0 !dbg !8 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %x, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 13, i32* %x, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %y, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 42, i32* %y, align 4, !dbg !17
  call void @llvm.dbg.declare(metadata i32* %z, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 0, i32* %z, align 4, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !22
  store i32 0, i32* %i, align 4, !dbg !22
  br label %for.cond, !dbg !23

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !24
  %1 = load i32, i32* %x, align 4, !dbg !26
  %2 = load i32, i32* %y, align 4, !dbg !27
  %add = add nsw i32 %1, %2, !dbg !28
  %cmp = icmp slt i32 %0, %add, !dbg !29
  br i1 %cmp, label %for.body, label %for.end, !dbg !30

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %z, align 4, !dbg !31
  %inc = add nsw i32 %3, 1, !dbg !31
  store i32 %inc, i32* %z, align 4, !dbg !31
  br label %for.inc, !dbg !33

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !34
  %inc1 = add nsw i32 %4, 1, !dbg !34
  store i32 %inc1, i32* %i, align 4, !dbg !34
  br label %for.cond, !dbg !35, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %x, align 4, !dbg !39
  %6 = load i32, i32* %z, align 4, !dbg !40
  %add2 = add nsw i32 %5, %6, !dbg !41
  ret i32 %add2, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/control_flow/ignore_dbg_insts_3.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/control_flow", checksumkind: CSK_MD5, checksum: "70a703b5ccdd920f728e11d2b254dd2b")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 2, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/control_flow/ignore_dbg_insts_3.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "70a703b5ccdd920f728e11d2b254dd2b")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "x", scope: !8, file: !9, line: 3, type: !12)
!15 = !DILocation(line: 3, column: 7, scope: !8)
!16 = !DILocalVariable(name: "y", scope: !8, file: !9, line: 4, type: !12)
!17 = !DILocation(line: 4, column: 7, scope: !8)
!18 = !DILocalVariable(name: "z", scope: !8, file: !9, line: 5, type: !12)
!19 = !DILocation(line: 5, column: 7, scope: !8)
!20 = !DILocalVariable(name: "i", scope: !21, file: !9, line: 6, type: !12)
!21 = distinct !DILexicalBlock(scope: !8, file: !9, line: 6, column: 3)
!22 = !DILocation(line: 6, column: 12, scope: !21)
!23 = !DILocation(line: 6, column: 8, scope: !21)
!24 = !DILocation(line: 6, column: 19, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !9, line: 6, column: 3)
!26 = !DILocation(line: 6, column: 23, scope: !25)
!27 = !DILocation(line: 6, column: 27, scope: !25)
!28 = !DILocation(line: 6, column: 25, scope: !25)
!29 = !DILocation(line: 6, column: 21, scope: !25)
!30 = !DILocation(line: 6, column: 3, scope: !21)
!31 = !DILocation(line: 7, column: 5, scope: !32)
!32 = distinct !DILexicalBlock(scope: !25, file: !9, line: 6, column: 35)
!33 = !DILocation(line: 8, column: 3, scope: !32)
!34 = !DILocation(line: 6, column: 30, scope: !25)
!35 = !DILocation(line: 6, column: 3, scope: !25)
!36 = distinct !{!36, !30, !37, !38}
!37 = !DILocation(line: 8, column: 3, scope: !21)
!38 = !{!"llvm.loop.mustprogress"}
!39 = !DILocation(line: 9, column: 10, scope: !8)
!40 = !DILocation(line: 9, column: 14, scope: !8)
!41 = !DILocation(line: 9, column: 12, scope: !8)
!42 = !DILocation(line: 9, column: 3, scope: !8)
