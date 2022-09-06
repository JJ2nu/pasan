; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/branch_03.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/branch_03.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cond = external dso_local global i8, align 1

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #0 !dbg !8 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 42, i32* %i, align 4, !dbg !15
  %0 = load i8, i8* @cond, align 1, !dbg !16
  %tobool = trunc i8 %0 to i1, !dbg !16
  br i1 %tobool, label %if.then, label %if.end, !dbg !18

if.then:                                          ; preds = %entry
  store i32 10, i32* %i, align 4, !dbg !19
  br label %if.end, !dbg !21

if.end:                                           ; preds = %if.then, %entry
  store i32 30, i32* %i, align 4, !dbg !22
  ret i32 0, !dbg !23
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/branch_03.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/linear_constant", checksumkind: CSK_MD5, checksum: "dd95af43130f01b2eb1579dc8919a2db")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 2, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/linear_constant/branch_03.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "dd95af43130f01b2eb1579dc8919a2db")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "i", scope: !8, file: !9, line: 3, type: !12)
!15 = !DILocation(line: 3, column: 7, scope: !8)
!16 = !DILocation(line: 4, column: 7, scope: !17)
!17 = distinct !DILexicalBlock(scope: !8, file: !9, line: 4, column: 7)
!18 = !DILocation(line: 4, column: 7, scope: !8)
!19 = !DILocation(line: 5, column: 7, scope: !20)
!20 = distinct !DILexicalBlock(scope: !17, file: !9, line: 4, column: 13)
!21 = !DILocation(line: 6, column: 3, scope: !20)
!22 = !DILocation(line: 7, column: 5, scope: !8)
!23 = !DILocation(line: 8, column: 3, scope: !8)
