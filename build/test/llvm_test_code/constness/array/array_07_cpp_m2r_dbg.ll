; ModuleID = 'array_07_cpp_m2r_dbg.ll'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/array/array_07.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline norecurse nounwind uwtable
define dso_local noundef i32 @main() #0 !dbg !8 {
entry:
  %a = alloca [2 x [2 x i32]], align 16
  call void @llvm.dbg.declare(metadata [2 x [2 x i32]]* %a, metadata !14, metadata !DIExpression()), !dbg !18
  %arrayidx = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %a, i64 0, i64 0, !dbg !19
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i64 0, i64 0, !dbg !19
  store i32 42, i32* %arrayidx1, align 16, !dbg !20
  %arrayidx2 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %a, i64 0, i64 0, !dbg !21
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx2, i64 0, i64 1, !dbg !21
  store i32 42, i32* %arrayidx3, align 4, !dbg !22
  ret i32 0, !dbg !23
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { mustprogress noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/array/array_07.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/constness/array", checksumkind: CSK_MD5, checksum: "92dc3fbb2d0dc1b330c85e7502518e9c")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 2, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/constness/array/array_07.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "92dc3fbb2d0dc1b330c85e7502518e9c")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 3, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !16)
!16 = !{!17, !17}
!17 = !DISubrange(count: 2)
!18 = !DILocation(line: 3, column: 7, scope: !8)
!19 = !DILocation(line: 4, column: 3, scope: !8)
!20 = !DILocation(line: 4, column: 11, scope: !8)
!21 = !DILocation(line: 5, column: 3, scope: !8)
!22 = !DILocation(line: 5, column: 11, scope: !8)
!23 = !DILocation(line: 6, column: 3, scope: !8)
