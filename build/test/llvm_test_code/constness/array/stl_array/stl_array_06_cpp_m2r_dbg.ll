; ModuleID = 'stl_array_06_cpp_m2r_dbg.ll'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/array/stl_array/stl_array_06.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"struct.std::array" = type { [3 x i32] }

@__const.main.a = private unnamed_addr constant %"struct.std::array" { [3 x i32] [i32 1, i32 2, i32 3] }, align 4
@__const.main.b = private unnamed_addr constant %"struct.std::array" { [3 x i32] [i32 4, i32 5, i32 6] }, align 4

; Function Attrs: mustprogress noinline norecurse nounwind uwtable
define dso_local noundef i32 @main() #0 !dbg !14 {
entry:
  %a = alloca %"struct.std::array", align 4
  %b = alloca %"struct.std::array", align 4
  call void @llvm.dbg.declare(metadata %"struct.std::array"* %a, metadata !20, metadata !DIExpression()), !dbg !125
  %0 = bitcast %"struct.std::array"* %a to i8*, !dbg !125
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast (%"struct.std::array"* @__const.main.a to i8*), i64 12, i1 false), !dbg !125
  call void @llvm.dbg.declare(metadata %"struct.std::array"* %b, metadata !126, metadata !DIExpression()), !dbg !127
  %1 = bitcast %"struct.std::array"* %b to i8*, !dbg !127
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 bitcast (%"struct.std::array"* @__const.main.b to i8*), i64 12, i1 false), !dbg !127
  %2 = bitcast %"struct.std::array"* %a to i8*, !dbg !128
  %3 = bitcast %"struct.std::array"* %b to i8*, !dbg !128
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 12, i1 false), !dbg !128
  ret i32 0, !dbg !129
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { mustprogress noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, imports: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/array/stl_array/stl_array_06.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/constness/array/stl_array", checksumkind: CSK_MD5, checksum: "12613a332ca4926e20913c46364f3be4")
!2 = !{!3}
!3 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !4, entity: !5, file: !7, line: 58)
!4 = !DINamespace(name: "__gnu_debug", scope: null)
!5 = !DINamespace(name: "__debug", scope: !6)
!6 = !DINamespace(name: "std", scope: null)
!7 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/debug/debug.h", directory: "", checksumkind: CSK_MD5, checksum: "982c0103e1e5f86b0818efdfc5273c3c")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!14 = distinct !DISubprogram(name: "main", scope: !15, file: !15, line: 3, type: !16, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!15 = !DIFile(filename: "test/llvm_test_code/constness/array/stl_array/stl_array_06.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "12613a332ca4926e20913c46364f3be4")
!16 = !DISubroutineType(types: !17)
!17 = !{!18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{}
!20 = !DILocalVariable(name: "a", scope: !14, file: !15, line: 4, type: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "array<int, 3UL>", scope: !6, file: !22, line: 95, size: 96, flags: DIFlagTypePassByValue, elements: !23, templateParams: !41, identifier: "_ZTSSt5arrayIiLm3EE")
!22 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/array", directory: "")
!23 = !{!24, !47, !54, !58, !63, !70, !71, !72, !78, !83, !84, !85, !86, !87, !88, !89, !93, !94, !98, !103, !107, !108, !109, !112, !115, !116, !117, !121}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_M_elems", scope: !21, file: !22, line: 111, baseType: !25, size: 96)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Type", scope: !26, file: !22, line: 51, baseType: !44)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__array_traits<int, 3UL>", scope: !6, file: !22, line: 49, size: 8, flags: DIFlagTypePassByValue, elements: !27, templateParams: !41, identifier: "_ZTSSt14__array_traitsIiLm3EE")
!27 = !{!28, !37}
!28 = !DISubprogram(name: "_S_ref", linkageName: "_ZNSt14__array_traitsIiLm3EE6_S_refERA3_Kim", scope: !26, file: !22, line: 56, type: !29, scopeLine: 56, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !32, !34}
!31 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !18, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !6, file: !35, line: 280, baseType: !36)
!35 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "b580bd6c81b6bfb6402fbc5dbb4852dd")
!36 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DISubprogram(name: "_S_ptr", linkageName: "_ZNSt14__array_traitsIiLm3EE6_S_ptrERA3_Ki", scope: !26, file: !22, line: 60, type: !38, scopeLine: 60, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: 0)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !32}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!41 = !{!42, !43}
!42 = !DITemplateTypeParameter(name: "_Tp", type: !18)
!43 = !DITemplateValueParameter(name: "_Nm", type: !36, value: i64 3)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 96, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 3)
!47 = !DISubprogram(name: "fill", linkageName: "_ZNSt5arrayIiLm3EE4fillERKi", scope: !21, file: !22, line: 117, type: !48, scopeLine: 117, flags: DIFlagPrototyped, spFlags: 0)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50, !51}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!51 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !21, file: !22, line: 97, baseType: !18)
!54 = !DISubprogram(name: "swap", linkageName: "_ZNSt5arrayIiLm3EE4swapERS0_", scope: !21, file: !22, line: 121, type: !55, scopeLine: 121, flags: DIFlagPrototyped, spFlags: 0)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !50, !57}
!57 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !21, size: 64)
!58 = !DISubprogram(name: "begin", linkageName: "_ZNSt5arrayIiLm3EE5beginEv", scope: !21, file: !22, line: 127, type: !59, scopeLine: 127, flags: DIFlagPrototyped, spFlags: 0)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !50}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "iterator", scope: !21, file: !22, line: 102, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!63 = !DISubprogram(name: "begin", linkageName: "_ZNKSt5arrayIiLm3EE5beginEv", scope: !21, file: !22, line: 131, type: !64, scopeLine: 131, flags: DIFlagPrototyped, spFlags: 0)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !68}
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_iterator", scope: !21, file: !22, line: 103, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!70 = !DISubprogram(name: "end", linkageName: "_ZNSt5arrayIiLm3EE3endEv", scope: !21, file: !22, line: 135, type: !59, scopeLine: 135, flags: DIFlagPrototyped, spFlags: 0)
!71 = !DISubprogram(name: "end", linkageName: "_ZNKSt5arrayIiLm3EE3endEv", scope: !21, file: !22, line: 139, type: !64, scopeLine: 139, flags: DIFlagPrototyped, spFlags: 0)
!72 = !DISubprogram(name: "rbegin", linkageName: "_ZNSt5arrayIiLm3EE6rbeginEv", scope: !21, file: !22, line: 143, type: !73, scopeLine: 143, flags: DIFlagPrototyped, spFlags: 0)
!73 = !DISubroutineType(types: !74)
!74 = !{!75, !50}
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "reverse_iterator", scope: !21, file: !22, line: 106, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<int *>", scope: !6, file: !77, line: 127, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIPiE")
!77 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/stl_iterator.h", directory: "", checksumkind: CSK_MD5, checksum: "43ad7d2b85ae23c8eccc761a6b4418f9")
!78 = !DISubprogram(name: "rbegin", linkageName: "_ZNKSt5arrayIiLm3EE6rbeginEv", scope: !21, file: !22, line: 147, type: !79, scopeLine: 147, flags: DIFlagPrototyped, spFlags: 0)
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !68}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reverse_iterator", scope: !21, file: !22, line: 107, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<const int *>", scope: !6, file: !77, line: 127, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIPKiE")
!83 = !DISubprogram(name: "rend", linkageName: "_ZNSt5arrayIiLm3EE4rendEv", scope: !21, file: !22, line: 151, type: !73, scopeLine: 151, flags: DIFlagPrototyped, spFlags: 0)
!84 = !DISubprogram(name: "rend", linkageName: "_ZNKSt5arrayIiLm3EE4rendEv", scope: !21, file: !22, line: 155, type: !79, scopeLine: 155, flags: DIFlagPrototyped, spFlags: 0)
!85 = !DISubprogram(name: "cbegin", linkageName: "_ZNKSt5arrayIiLm3EE6cbeginEv", scope: !21, file: !22, line: 159, type: !64, scopeLine: 159, flags: DIFlagPrototyped, spFlags: 0)
!86 = !DISubprogram(name: "cend", linkageName: "_ZNKSt5arrayIiLm3EE4cendEv", scope: !21, file: !22, line: 163, type: !64, scopeLine: 163, flags: DIFlagPrototyped, spFlags: 0)
!87 = !DISubprogram(name: "crbegin", linkageName: "_ZNKSt5arrayIiLm3EE7crbeginEv", scope: !21, file: !22, line: 167, type: !79, scopeLine: 167, flags: DIFlagPrototyped, spFlags: 0)
!88 = !DISubprogram(name: "crend", linkageName: "_ZNKSt5arrayIiLm3EE5crendEv", scope: !21, file: !22, line: 171, type: !79, scopeLine: 171, flags: DIFlagPrototyped, spFlags: 0)
!89 = !DISubprogram(name: "size", linkageName: "_ZNKSt5arrayIiLm3EE4sizeEv", scope: !21, file: !22, line: 176, type: !90, scopeLine: 176, flags: DIFlagPrototyped, spFlags: 0)
!90 = !DISubroutineType(types: !91)
!91 = !{!92, !68}
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", file: !22, line: 104, baseType: !34)
!93 = !DISubprogram(name: "max_size", linkageName: "_ZNKSt5arrayIiLm3EE8max_sizeEv", scope: !21, file: !22, line: 179, type: !90, scopeLine: 179, flags: DIFlagPrototyped, spFlags: 0)
!94 = !DISubprogram(name: "empty", linkageName: "_ZNKSt5arrayIiLm3EE5emptyEv", scope: !21, file: !22, line: 182, type: !95, scopeLine: 182, flags: DIFlagPrototyped, spFlags: 0)
!95 = !DISubroutineType(types: !96)
!96 = !{!97, !68}
!97 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!98 = !DISubprogram(name: "operator[]", linkageName: "_ZNSt5arrayIiLm3EEixEm", scope: !21, file: !22, line: 186, type: !99, scopeLine: 186, flags: DIFlagPrototyped, spFlags: 0)
!99 = !DISubroutineType(types: !100)
!100 = !{!101, !50, !92}
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "reference", scope: !21, file: !22, line: 100, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !53, size: 64)
!103 = !DISubprogram(name: "operator[]", linkageName: "_ZNKSt5arrayIiLm3EEixEm", scope: !21, file: !22, line: 193, type: !104, scopeLine: 193, flags: DIFlagPrototyped, spFlags: 0)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !68, !92}
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_reference", scope: !21, file: !22, line: 101, baseType: !51)
!107 = !DISubprogram(name: "at", linkageName: "_ZNSt5arrayIiLm3EE2atEm", scope: !21, file: !22, line: 202, type: !99, scopeLine: 202, flags: DIFlagPrototyped, spFlags: 0)
!108 = !DISubprogram(name: "at", linkageName: "_ZNKSt5arrayIiLm3EE2atEm", scope: !21, file: !22, line: 212, type: !104, scopeLine: 212, flags: DIFlagPrototyped, spFlags: 0)
!109 = !DISubprogram(name: "front", linkageName: "_ZNSt5arrayIiLm3EE5frontEv", scope: !21, file: !22, line: 224, type: !110, scopeLine: 224, flags: DIFlagPrototyped, spFlags: 0)
!110 = !DISubroutineType(types: !111)
!111 = !{!101, !50}
!112 = !DISubprogram(name: "front", linkageName: "_ZNKSt5arrayIiLm3EE5frontEv", scope: !21, file: !22, line: 231, type: !113, scopeLine: 231, flags: DIFlagPrototyped, spFlags: 0)
!113 = !DISubroutineType(types: !114)
!114 = !{!106, !68}
!115 = !DISubprogram(name: "back", linkageName: "_ZNSt5arrayIiLm3EE4backEv", scope: !21, file: !22, line: 240, type: !110, scopeLine: 240, flags: DIFlagPrototyped, spFlags: 0)
!116 = !DISubprogram(name: "back", linkageName: "_ZNKSt5arrayIiLm3EE4backEv", scope: !21, file: !22, line: 247, type: !113, scopeLine: 247, flags: DIFlagPrototyped, spFlags: 0)
!117 = !DISubprogram(name: "data", linkageName: "_ZNSt5arrayIiLm3EE4dataEv", scope: !21, file: !22, line: 257, type: !118, scopeLine: 257, flags: DIFlagPrototyped, spFlags: 0)
!118 = !DISubroutineType(types: !119)
!119 = !{!120, !50}
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !21, file: !22, line: 98, baseType: !62)
!121 = !DISubprogram(name: "data", linkageName: "_ZNKSt5arrayIiLm3EE4dataEv", scope: !21, file: !22, line: 261, type: !122, scopeLine: 261, flags: DIFlagPrototyped, spFlags: 0)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !68}
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_pointer", scope: !21, file: !22, line: 99, baseType: !67)
!125 = !DILocation(line: 4, column: 22, scope: !14)
!126 = !DILocalVariable(name: "b", scope: !14, file: !15, line: 5, type: !21)
!127 = !DILocation(line: 5, column: 22, scope: !14)
!128 = !DILocation(line: 6, column: 5, scope: !14)
!129 = !DILocation(line: 7, column: 3, scope: !14)