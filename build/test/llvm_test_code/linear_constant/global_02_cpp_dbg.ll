; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_02.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_02.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = dso_local global i32 10, align 4, !dbg !0

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !18
  %0 = load i32, i32* @g, align 4, !dbg !19
  store i32 %0, i32* %i, align 4, !dbg !18
  %1 = load i32, i32* %i, align 4, !dbg !20
  %sub = sub nsw i32 %1, 20, !dbg !20
  store i32 %sub, i32* %i, align 4, !dbg !20
  %2 = load i32, i32* %i, align 4, !dbg !21
  store i32 %2, i32* @g, align 4, !dbg !22
  ret i32 0, !dbg !23
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g", scope: !2, file: !5, line: 1, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_02.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/linear_constant", checksumkind: CSK_MD5, checksum: "fc7d81ddf2a5051de34eaf12267b9462")
!4 = !{!0}
!5 = !DIFile(filename: "test/llvm_test_code/linear_constant/global_02.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "fc7d81ddf2a5051de34eaf12267b9462")
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!13 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 3, type: !14, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!6}
!16 = !{}
!17 = !DILocalVariable(name: "i", scope: !13, file: !5, line: 4, type: !6)
!18 = !DILocation(line: 4, column: 7, scope: !13)
!19 = !DILocation(line: 4, column: 11, scope: !13)
!20 = !DILocation(line: 5, column: 5, scope: !13)
!21 = !DILocation(line: 6, column: 7, scope: !13)
!22 = !DILocation(line: 6, column: 5, scope: !13)
!23 = !DILocation(line: 7, column: 3, scope: !13)
