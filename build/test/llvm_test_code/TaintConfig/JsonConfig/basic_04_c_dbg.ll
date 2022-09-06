; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/basic_04.c'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/basic_04.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
entry:
  %retval = alloca i32, align 4
  %I = alloca i32, align 4
  %J = alloca i32, align 4
  %K = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %I, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 42, i32* %I, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %J, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 13, i32* %J, align 4, !dbg !17
  call void @llvm.dbg.declare(metadata i32* %K, metadata !18, metadata !DIExpression()), !dbg !19
  %0 = load i32, i32* %I, align 4, !dbg !20
  %1 = load i32, i32* %J, align 4, !dbg !21
  %add = add nsw i32 %0, %1, !dbg !22
  store i32 %add, i32* %K, align 4, !dbg !19
  %2 = load i32, i32* %K, align 4, !dbg !23
  ret i32 %2, !dbg !24
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/basic_04.c", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/TaintConfig/JsonConfig", checksumkind: CSK_MD5, checksum: "50b32713209e4229a2f8c8f7d203c0e8")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/TaintConfig/JsonConfig/basic_04.c", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "50b32713209e4229a2f8c8f7d203c0e8")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "I", scope: !8, file: !9, line: 2, type: !12)
!15 = !DILocation(line: 2, column: 7, scope: !8)
!16 = !DILocalVariable(name: "J", scope: !8, file: !9, line: 3, type: !12)
!17 = !DILocation(line: 3, column: 7, scope: !8)
!18 = !DILocalVariable(name: "K", scope: !8, file: !9, line: 4, type: !12)
!19 = !DILocation(line: 4, column: 7, scope: !8)
!20 = !DILocation(line: 4, column: 11, scope: !8)
!21 = !DILocation(line: 4, column: 15, scope: !8)
!22 = !DILocation(line: 4, column: 13, scope: !8)
!23 = !DILocation(line: 5, column: 10, scope: !8)
!24 = !DILocation(line: 5, column: 3, scope: !8)
