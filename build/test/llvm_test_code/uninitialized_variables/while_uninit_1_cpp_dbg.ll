; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/while_uninit_1.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/while_uninit_1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #0 !dbg !8 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 10, i32* %i, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %a, metadata !16, metadata !DIExpression()), !dbg !17
  br label %while.cond, !dbg !18

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %i, align 4, !dbg !19
  %dec = add nsw i32 %0, -1, !dbg !19
  store i32 %dec, i32* %i, align 4, !dbg !19
  %cmp = icmp sgt i32 %0, 0, !dbg !20
  br i1 %cmp, label %while.body, label %while.end, !dbg !18

while.body:                                       ; preds = %while.cond
  store i32 10, i32* %a, align 4, !dbg !21
  br label %while.cond, !dbg !18, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  ret i32 0, !dbg !26
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/while_uninit_1.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/uninitialized_variables", checksumkind: CSK_MD5, checksum: "e23f962fa64dfdddae99af7ef81032ac")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/uninitialized_variables/while_uninit_1.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "e23f962fa64dfdddae99af7ef81032ac")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "i", scope: !8, file: !9, line: 2, type: !12)
!15 = !DILocation(line: 2, column: 7, scope: !8)
!16 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 3, type: !12)
!17 = !DILocation(line: 3, column: 7, scope: !8)
!18 = !DILocation(line: 4, column: 3, scope: !8)
!19 = !DILocation(line: 4, column: 11, scope: !8)
!20 = !DILocation(line: 4, column: 14, scope: !8)
!21 = !DILocation(line: 5, column: 7, scope: !22)
!22 = distinct !DILexicalBlock(scope: !8, file: !9, line: 4, column: 19)
!23 = distinct !{!23, !18, !24, !25}
!24 = !DILocation(line: 6, column: 3, scope: !8)
!25 = !{!"llvm.loop.mustprogress"}
!26 = !DILocation(line: 7, column: 3, scope: !8)