; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/constness/basic/basic_04.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/basic/basic_04.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #0 !dbg !8 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 14, i32* %i, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %j, metadata !16, metadata !DIExpression()), !dbg !17
  %0 = load i32, i32* %i, align 4, !dbg !18
  %mul = mul nsw i32 %0, 2, !dbg !19
  store i32 %mul, i32* %j, align 4, !dbg !17
  call void @llvm.dbg.declare(metadata i32* %k, metadata !20, metadata !DIExpression()), !dbg !21
  %1 = load i32, i32* %i, align 4, !dbg !22
  %2 = load i32, i32* %j, align 4, !dbg !23
  %add = add nsw i32 %1, %2, !dbg !24
  store i32 %add, i32* %k, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata double* %d, metadata !25, metadata !DIExpression()), !dbg !27
  %3 = load i32, i32* %i, align 4, !dbg !28
  %conv = sitofp i32 %3 to double, !dbg !28
  %sub = fsub double %conv, 2.030000e+01, !dbg !29
  store double %sub, double* %d, align 8, !dbg !27
  %4 = load i32, i32* %i, align 4, !dbg !30
  %div = sdiv i32 %4, 14, !dbg !31
  store i32 %div, i32* %i, align 4, !dbg !32
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
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/basic/basic_04.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/constness/basic", checksumkind: CSK_MD5, checksum: "01b2e59687b09a55a616d1c5b2284018")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 2, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/constness/basic/basic_04.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "01b2e59687b09a55a616d1c5b2284018")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "i", scope: !8, file: !9, line: 3, type: !12)
!15 = !DILocation(line: 3, column: 7, scope: !8)
!16 = !DILocalVariable(name: "j", scope: !8, file: !9, line: 4, type: !12)
!17 = !DILocation(line: 4, column: 7, scope: !8)
!18 = !DILocation(line: 4, column: 11, scope: !8)
!19 = !DILocation(line: 4, column: 13, scope: !8)
!20 = !DILocalVariable(name: "k", scope: !8, file: !9, line: 5, type: !12)
!21 = !DILocation(line: 5, column: 7, scope: !8)
!22 = !DILocation(line: 5, column: 11, scope: !8)
!23 = !DILocation(line: 5, column: 15, scope: !8)
!24 = !DILocation(line: 5, column: 13, scope: !8)
!25 = !DILocalVariable(name: "d", scope: !8, file: !9, line: 6, type: !26)
!26 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!27 = !DILocation(line: 6, column: 10, scope: !8)
!28 = !DILocation(line: 6, column: 14, scope: !8)
!29 = !DILocation(line: 6, column: 16, scope: !8)
!30 = !DILocation(line: 7, column: 7, scope: !8)
!31 = !DILocation(line: 7, column: 9, scope: !8)
!32 = !DILocation(line: 7, column: 5, scope: !8)
!33 = !DILocation(line: 8, column: 3, scope: !8)
