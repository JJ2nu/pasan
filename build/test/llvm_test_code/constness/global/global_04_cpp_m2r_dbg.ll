; ModuleID = 'global_04_cpp_m2r_dbg.ll'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/global/global_04.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = dso_local global i32* null, align 8, !dbg !0

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z3foov() #0 !dbg !14 {
entry:
  %0 = load i32*, i32** @g, align 8, !dbg !18
  store i32 99, i32* %0, align 4, !dbg !19
  ret void, !dbg !20
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #1 !dbg !21 {
entry:
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 4) #4, !dbg !24, !heapallocsite !7
  %0 = bitcast i8* %call to i32*, !dbg !24
  store i32 42, i32* %0, align 4, !dbg !24
  call void @llvm.dbg.value(metadata i32* %0, metadata !25, metadata !DIExpression()), !dbg !26
  store i32* %0, i32** @g, align 8, !dbg !27
  call void @_Z3foov(), !dbg !28
  ret i32 0, !dbg !29
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { builtin allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g", scope: !2, file: !5, line: 2, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/global/global_04.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/constness/global", checksumkind: CSK_MD5, checksum: "33969fc490dbd655083cc496d821acb6")
!4 = !{!0}
!5 = !DIFile(filename: "test/llvm_test_code/constness/global/global_04.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "33969fc490dbd655083cc496d821acb6")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!14 = distinct !DISubprogram(name: "foo", linkageName: "_Z3foov", scope: !5, file: !5, line: 4, type: !15, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{null}
!17 = !{}
!18 = !DILocation(line: 4, column: 15, scope: !14)
!19 = !DILocation(line: 4, column: 17, scope: !14)
!20 = !DILocation(line: 4, column: 23, scope: !14)
!21 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 6, type: !22, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !17)
!22 = !DISubroutineType(types: !23)
!23 = !{!7}
!24 = !DILocation(line: 7, column: 12, scope: !21)
!25 = !DILocalVariable(name: "i", scope: !21, file: !5, line: 7, type: !6)
!26 = !DILocation(line: 0, scope: !21)
!27 = !DILocation(line: 8, column: 5, scope: !21)
!28 = !DILocation(line: 9, column: 3, scope: !21)
!29 = !DILocation(line: 10, column: 3, scope: !21)