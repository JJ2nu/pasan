; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/uninit.c'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %b, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %c, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 10, i32* %c, align 4, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %d, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 20, i32* %d, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %e, metadata !22, metadata !DIExpression()), !dbg !23
  %0 = load i32, i32* %a, align 4, !dbg !24
  %1 = load i32, i32* %b, align 4, !dbg !25
  %mul = mul nsw i32 %0, %1, !dbg !26
  store i32 %mul, i32* %e, align 4, !dbg !23
  ret i32 0, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/uninit.c", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/uninitialized_variables", checksumkind: CSK_MD5, checksum: "7f335fd5251359d1b8bbf1495749784f")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 1, type: !10, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/uninitialized_variables/uninit.c", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "7f335fd5251359d1b8bbf1495749784f")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 2, type: !12)
!15 = !DILocation(line: 2, column: 7, scope: !8)
!16 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 3, type: !12)
!17 = !DILocation(line: 3, column: 7, scope: !8)
!18 = !DILocalVariable(name: "c", scope: !8, file: !9, line: 4, type: !12)
!19 = !DILocation(line: 4, column: 7, scope: !8)
!20 = !DILocalVariable(name: "d", scope: !8, file: !9, line: 5, type: !12)
!21 = !DILocation(line: 5, column: 7, scope: !8)
!22 = !DILocalVariable(name: "e", scope: !8, file: !9, line: 6, type: !12)
!23 = !DILocation(line: 6, column: 7, scope: !8)
!24 = !DILocation(line: 6, column: 11, scope: !8)
!25 = !DILocation(line: 6, column: 15, scope: !8)
!26 = !DILocation(line: 6, column: 13, scope: !8)
!27 = !DILocation(line: 7, column: 3, scope: !8)
