; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/branch_05.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/branch_05.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cond = external dso_local global i8, align 1

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #0 !dbg !8 {
entry:
  %retval = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %j, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 10, i32* %j, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %i, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 42, i32* %i, align 4, !dbg !17
  %0 = load i8, i8* @cond, align 1, !dbg !18
  %tobool = trunc i8 %0 to i1, !dbg !18
  br i1 %tobool, label %if.then, label %if.end, !dbg !20

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %j, align 4, !dbg !21
  %add = add nsw i32 %1, 32, !dbg !23
  store i32 %add, i32* %i, align 4, !dbg !24
  br label %if.end, !dbg !25

if.end:                                           ; preds = %if.then, %entry
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
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/branch_05.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/linear_constant", checksumkind: CSK_MD5, checksum: "bde7e09e2b3b9cfbeac5ab5541f56324")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 2, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/linear_constant/branch_05.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "bde7e09e2b3b9cfbeac5ab5541f56324")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "j", scope: !8, file: !9, line: 3, type: !12)
!15 = !DILocation(line: 3, column: 7, scope: !8)
!16 = !DILocalVariable(name: "i", scope: !8, file: !9, line: 4, type: !12)
!17 = !DILocation(line: 4, column: 7, scope: !8)
!18 = !DILocation(line: 5, column: 7, scope: !19)
!19 = distinct !DILexicalBlock(scope: !8, file: !9, line: 5, column: 7)
!20 = !DILocation(line: 5, column: 7, scope: !8)
!21 = !DILocation(line: 6, column: 9, scope: !22)
!22 = distinct !DILexicalBlock(scope: !19, file: !9, line: 5, column: 13)
!23 = !DILocation(line: 6, column: 11, scope: !22)
!24 = !DILocation(line: 6, column: 7, scope: !22)
!25 = !DILocation(line: 7, column: 3, scope: !22)
!26 = !DILocation(line: 8, column: 3, scope: !8)
