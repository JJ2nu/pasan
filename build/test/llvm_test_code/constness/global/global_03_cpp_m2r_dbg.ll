; ModuleID = 'global_03_cpp_m2r_dbg.ll'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/global/global_03.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = dso_local global i32* null, align 8, !dbg !0
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_global_03.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !14 {
entry:
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 4) #5, !dbg !19, !heapallocsite !7
  %0 = bitcast i8* %call to i32*, !dbg !19
  store i32 17, i32* %0, align 4, !dbg !19
  store i32* %0, i32** @g, align 8, !dbg !21
  ret void, !dbg !22
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z3fooPi(i32* noundef %p) #2 !dbg !23 {
entry:
  call void @llvm.dbg.value(metadata i32* %p, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 42, i32* %p, align 4, !dbg !28
  ret void, !dbg !29
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: mustprogress noinline norecurse nounwind uwtable
define dso_local noundef i32 @main() #4 !dbg !30 {
entry:
  %0 = load i32*, i32** @g, align 8, !dbg !33
  call void @llvm.dbg.value(metadata i32* %0, metadata !34, metadata !DIExpression()), !dbg !35
  call void @_Z3fooPi(i32* noundef %0), !dbg !36
  ret i32 0, !dbg !37
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_global_03.cpp() #0 section ".text.startup" !dbg !38 {
entry:
  call void @__cxx_global_var_init(), !dbg !40
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { builtin allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g", scope: !2, file: !5, line: 6, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/global/global_03.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/constness/global", checksumkind: CSK_MD5, checksum: "91ef52dae0ee13e778d4bca688e1aa0f")
!4 = !{!0}
!5 = !DIFile(filename: "test/llvm_test_code/constness/global/global_03.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "91ef52dae0ee13e778d4bca688e1aa0f")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!14 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !15, file: !15, type: !16, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !18)
!15 = !DIFile(filename: "test/llvm_test_code/constness/global/global_03.cpp", directory: "/home/jinu/Desktop/phasar")
!16 = !DISubroutineType(types: !17)
!17 = !{null}
!18 = !{}
!19 = !DILocation(line: 6, column: 10, scope: !20)
!20 = !DILexicalBlockFile(scope: !14, file: !5, discriminator: 0)
!21 = !DILocation(line: 0, scope: !14)
!22 = !DILocation(line: 6, column: 18, scope: !20)
!23 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooPi", scope: !5, file: !5, line: 8, type: !24, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !6}
!26 = !DILocalVariable(name: "p", arg: 1, scope: !23, file: !5, line: 8, type: !6)
!27 = !DILocation(line: 0, scope: !23)
!28 = !DILocation(line: 8, column: 23, scope: !23)
!29 = !DILocation(line: 8, column: 29, scope: !23)
!30 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 10, type: !31, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!31 = !DISubroutineType(types: !32)
!32 = !{!7}
!33 = !DILocation(line: 12, column: 12, scope: !30)
!34 = !DILocalVariable(name: "i", scope: !30, file: !5, line: 12, type: !6)
!35 = !DILocation(line: 0, scope: !30)
!36 = !DILocation(line: 13, column: 3, scope: !30)
!37 = !DILocation(line: 14, column: 3, scope: !30)
!38 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_global_03.cpp", scope: !15, file: !15, type: !39, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !18)
!39 = !DISubroutineType(types: !18)
!40 = !DILocation(line: 0, scope: !38)
