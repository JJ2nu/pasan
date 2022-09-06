; ModuleID = 'global_02_cpp_m2r_dbg.ll'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/global/global_02.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = dso_local global i32* null, align 8, !dbg !0

; Function Attrs: mustprogress noinline norecurse nounwind uwtable
define dso_local noundef i32 @main() #0 !dbg !14 {
entry:
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 42, i32* %i, align 4, !dbg !19
  store i32* %i, i32** @g, align 8, !dbg !20
  %0 = load i32*, i32** @g, align 8, !dbg !21
  store i32 99, i32* %0, align 4, !dbg !22
  ret i32 0, !dbg !23
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { mustprogress noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g", scope: !2, file: !5, line: 2, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/global/global_02.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/constness/global", checksumkind: CSK_MD5, checksum: "70a135f943629e2d15a90be42f4ae094")
!4 = !{!0}
!5 = !DIFile(filename: "test/llvm_test_code/constness/global/global_02.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "70a135f943629e2d15a90be42f4ae094")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!14 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 3, type: !15, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{!7}
!17 = !{}
!18 = !DILocalVariable(name: "i", scope: !14, file: !5, line: 4, type: !7)
!19 = !DILocation(line: 4, column: 7, scope: !14)
!20 = !DILocation(line: 5, column: 5, scope: !14)
!21 = !DILocation(line: 6, column: 4, scope: !14)
!22 = !DILocation(line: 6, column: 6, scope: !14)
!23 = !DILocation(line: 7, column: 3, scope: !14)
