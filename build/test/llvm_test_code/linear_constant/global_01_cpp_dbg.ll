; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_01.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_01.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g1 = dso_local global i32 10, align 4, !dbg !0
@g2 = dso_local global i32 1, align 4, !dbg !5
@g3 = dso_local global double 3.141500e+00, align 8, !dbg !9

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #0 !dbg !18 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 666, i32* %i, align 4, !dbg !23
  store i32 42, i32* @g1, align 4, !dbg !24
  %0 = load i32, i32* @g1, align 4, !dbg !25
  store i32 %0, i32* @g2, align 4, !dbg !26
  ret i32 0, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g1", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_01.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/linear_constant", checksumkind: CSK_MD5, checksum: "7ccc611e24ba0cfd7ee7b52ccfee4c8f")
!4 = !{!0, !5, !9}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "g2", scope: !2, file: !7, line: 2, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "test/llvm_test_code/linear_constant/global_01.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "7ccc611e24ba0cfd7ee7b52ccfee4c8f")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "g3", scope: !2, file: !7, line: 3, type: !11, isLocal: false, isDefinition: true)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!18 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 5, type: !19, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!8}
!21 = !{}
!22 = !DILocalVariable(name: "i", scope: !18, file: !7, line: 6, type: !8)
!23 = !DILocation(line: 6, column: 7, scope: !18)
!24 = !DILocation(line: 7, column: 6, scope: !18)
!25 = !DILocation(line: 8, column: 8, scope: !18)
!26 = !DILocation(line: 8, column: 6, scope: !18)
!27 = !DILocation(line: 9, column: 3, scope: !18)
