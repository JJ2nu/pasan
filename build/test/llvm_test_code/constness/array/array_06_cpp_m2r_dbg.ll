; ModuleID = 'array_06_cpp_m2r_dbg.ll'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/array/array_06.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [2 x i32] [i32 42, i32 99], align 4

; Function Attrs: mustprogress noinline norecurse nounwind uwtable
define dso_local noundef i32 @main() #0 !dbg !8 {
entry:
  %a = alloca [2 x i32], align 4
  call void @llvm.dbg.declare(metadata [2 x i32]* %a, metadata !14, metadata !DIExpression()), !dbg !18
  %0 = bitcast [2 x i32]* %a to i8*, !dbg !18
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([2 x i32]* @__const.main.a to i8*), i64 8, i1 false), !dbg !18
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %a, i64 0, i64 0, !dbg !19
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay, i64 1, !dbg !20
  call void @llvm.dbg.value(metadata i32* %add.ptr, metadata !21, metadata !DIExpression()), !dbg !23
  store i32 17, i32* %add.ptr, align 4, !dbg !24
  ret i32 0, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { mustprogress noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/array/array_06.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/constness/array", checksumkind: CSK_MD5, checksum: "daac60e9123a656f0b49c7443c1a6898")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 2, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/constness/array/array_06.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "daac60e9123a656f0b49c7443c1a6898")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a", scope: !8, file: !9, line: 3, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 2)
!18 = !DILocation(line: 3, column: 7, scope: !8)
!19 = !DILocation(line: 5, column: 12, scope: !8)
!20 = !DILocation(line: 5, column: 14, scope: !8)
!21 = !DILocalVariable(name: "i", scope: !8, file: !9, line: 5, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!23 = !DILocation(line: 0, scope: !8)
!24 = !DILocation(line: 6, column: 6, scope: !8)
!25 = !DILocation(line: 7, column: 3, scope: !8)
