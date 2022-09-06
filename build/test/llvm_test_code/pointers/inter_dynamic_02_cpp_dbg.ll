; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/pointers/inter_dynamic_02.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/pointers/inter_dynamic_02.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z4initPi(i32* noundef %p) #0 !dbg !221 {
entry:
  %p.addr = alloca i32*, align 8
  store i32* %p, i32** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr, metadata !226, metadata !DIExpression()), !dbg !227
  %0 = load i32*, i32** %p.addr, align 8, !dbg !228
  store i32 13, i32* %0, align 4, !dbg !229
  ret void, !dbg !230
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #2 !dbg !231 {
entry:
  %p = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p, metadata !232, metadata !DIExpression()), !dbg !233
  %call = call noalias i8* @malloc(i64 noundef 4) #4, !dbg !234
  %0 = bitcast i8* %call to i32*, !dbg !235
  store i32* %0, i32** %p, align 8, !dbg !233
  %1 = load i32*, i32** %p, align 8, !dbg !236
  call void @_Z4initPi(i32* noundef %1), !dbg !237
  %2 = load i32*, i32** %p, align 8, !dbg !238
  store i32 42, i32* %2, align 4, !dbg !239
  %3 = load i32*, i32** %p, align 8, !dbg !240
  %4 = bitcast i32* %3 to i8*, !dbg !240
  call void @free(i8* noundef %4) #4, !dbg !241
  ret i32 0, !dbg !242
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!215, !216, !217, !218, !219}
!llvm.ident = !{!220}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, imports: !5, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/pointers/inter_dynamic_02.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/pointers", checksumkind: CSK_MD5, checksum: "fc3cff59d260a2a0eab413e5ef77b761")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{!6, !13, !17, !24, !28, !36, !41, !43, !51, !55, !59, !69, !71, !75, !79, !83, !88, !92, !96, !100, !104, !112, !116, !120, !122, !126, !130, !135, !141, !145, !149, !151, !159, !163, !171, !173, !177, !181, !185, !189, !194, !199, !204, !205, !206, !207, !209, !210, !211, !212, !213, !214}
!6 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !8, file: !12, line: 52)
!7 = !DINamespace(name: "std", scope: null)
!8 = !DISubprogram(name: "abs", scope: !9, file: !9, line: 848, type: !10, flags: DIFlagPrototyped, spFlags: 0)
!9 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!10 = !DISubroutineType(types: !11)
!11 = !{!4, !4}
!12 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/bits/std_abs.h", directory: "")
!13 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !14, file: !16, line: 127)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !9, line: 63, baseType: !15)
!15 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!16 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdlib", directory: "")
!17 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !18, file: !16, line: 128)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !9, line: 71, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !20, identifier: "_ZTS6ldiv_t")
!20 = !{!21, !23}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !19, file: !9, line: 69, baseType: !22, size: 64)
!22 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !19, file: !9, line: 70, baseType: !22, size: 64, offset: 64)
!24 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !25, file: !16, line: 130)
!25 = !DISubprogram(name: "abort", scope: !9, file: !9, line: 598, type: !26, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!26 = !DISubroutineType(types: !27)
!27 = !{null}
!28 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !29, file: !16, line: 132)
!29 = !DISubprogram(name: "aligned_alloc", scope: !9, file: !9, line: 592, type: !30, flags: DIFlagPrototyped, spFlags: 0)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !33, !33}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "/usr/local/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !37, file: !16, line: 134)
!37 = !DISubprogram(name: "atexit", scope: !9, file: !9, line: 602, type: !38, flags: DIFlagPrototyped, spFlags: 0)
!38 = !DISubroutineType(types: !39)
!39 = !{!4, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!41 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !42, file: !16, line: 137)
!42 = !DISubprogram(name: "at_quick_exit", scope: !9, file: !9, line: 607, type: !38, flags: DIFlagPrototyped, spFlags: 0)
!43 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !44, file: !16, line: 140)
!44 = !DISubprogram(name: "atof", scope: !9, file: !9, line: 102, type: !45, flags: DIFlagPrototyped, spFlags: 0)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !48}
!47 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !52, file: !16, line: 141)
!52 = !DISubprogram(name: "atoi", scope: !9, file: !9, line: 105, type: !53, flags: DIFlagPrototyped, spFlags: 0)
!53 = !DISubroutineType(types: !54)
!54 = !{!4, !48}
!55 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !56, file: !16, line: 142)
!56 = !DISubprogram(name: "atol", scope: !9, file: !9, line: 108, type: !57, flags: DIFlagPrototyped, spFlags: 0)
!57 = !DISubroutineType(types: !58)
!58 = !{!22, !48}
!59 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !60, file: !16, line: 143)
!60 = !DISubprogram(name: "bsearch", scope: !9, file: !9, line: 828, type: !61, flags: DIFlagPrototyped, spFlags: 0)
!61 = !DISubroutineType(types: !62)
!62 = !{!32, !63, !63, !33, !33, !65}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !9, line: 816, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!4, !63, !63}
!69 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !70, file: !16, line: 144)
!70 = !DISubprogram(name: "calloc", scope: !9, file: !9, line: 543, type: !30, flags: DIFlagPrototyped, spFlags: 0)
!71 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !72, file: !16, line: 145)
!72 = !DISubprogram(name: "div", scope: !9, file: !9, line: 860, type: !73, flags: DIFlagPrototyped, spFlags: 0)
!73 = !DISubroutineType(types: !74)
!74 = !{!14, !4, !4}
!75 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !76, file: !16, line: 146)
!76 = !DISubprogram(name: "exit", scope: !9, file: !9, line: 624, type: !77, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !4}
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !80, file: !16, line: 147)
!80 = !DISubprogram(name: "free", scope: !9, file: !9, line: 555, type: !81, flags: DIFlagPrototyped, spFlags: 0)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !32}
!83 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !84, file: !16, line: 148)
!84 = !DISubprogram(name: "getenv", scope: !9, file: !9, line: 641, type: !85, flags: DIFlagPrototyped, spFlags: 0)
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !48}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!88 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !89, file: !16, line: 149)
!89 = !DISubprogram(name: "labs", scope: !9, file: !9, line: 849, type: !90, flags: DIFlagPrototyped, spFlags: 0)
!90 = !DISubroutineType(types: !91)
!91 = !{!22, !22}
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !93, file: !16, line: 150)
!93 = !DISubprogram(name: "ldiv", scope: !9, file: !9, line: 862, type: !94, flags: DIFlagPrototyped, spFlags: 0)
!94 = !DISubroutineType(types: !95)
!95 = !{!18, !22, !22}
!96 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !97, file: !16, line: 151)
!97 = !DISubprogram(name: "malloc", scope: !9, file: !9, line: 540, type: !98, flags: DIFlagPrototyped, spFlags: 0)
!98 = !DISubroutineType(types: !99)
!99 = !{!32, !33}
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !101, file: !16, line: 153)
!101 = !DISubprogram(name: "mblen", scope: !9, file: !9, line: 930, type: !102, flags: DIFlagPrototyped, spFlags: 0)
!102 = !DISubroutineType(types: !103)
!103 = !{!4, !48, !33}
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !105, file: !16, line: 154)
!105 = !DISubprogram(name: "mbstowcs", scope: !9, file: !9, line: 941, type: !106, flags: DIFlagPrototyped, spFlags: 0)
!106 = !DISubroutineType(types: !107)
!107 = !{!33, !108, !111, !33}
!108 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !48)
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !113, file: !16, line: 155)
!113 = !DISubprogram(name: "mbtowc", scope: !9, file: !9, line: 933, type: !114, flags: DIFlagPrototyped, spFlags: 0)
!114 = !DISubroutineType(types: !115)
!115 = !{!4, !108, !111, !33}
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !117, file: !16, line: 157)
!117 = !DISubprogram(name: "qsort", scope: !9, file: !9, line: 838, type: !118, flags: DIFlagPrototyped, spFlags: 0)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !32, !33, !33, !65}
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !121, file: !16, line: 160)
!121 = !DISubprogram(name: "quick_exit", scope: !9, file: !9, line: 630, type: !77, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !123, file: !16, line: 163)
!123 = !DISubprogram(name: "rand", scope: !9, file: !9, line: 454, type: !124, flags: DIFlagPrototyped, spFlags: 0)
!124 = !DISubroutineType(types: !125)
!125 = !{!4}
!126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !127, file: !16, line: 164)
!127 = !DISubprogram(name: "realloc", scope: !9, file: !9, line: 551, type: !128, flags: DIFlagPrototyped, spFlags: 0)
!128 = !DISubroutineType(types: !129)
!129 = !{!32, !32, !33}
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !131, file: !16, line: 165)
!131 = !DISubprogram(name: "srand", scope: !9, file: !9, line: 456, type: !132, flags: DIFlagPrototyped, spFlags: 0)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !134}
!134 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !136, file: !16, line: 166)
!136 = !DISubprogram(name: "strtod", scope: !9, file: !9, line: 118, type: !137, flags: DIFlagPrototyped, spFlags: 0)
!137 = !DISubroutineType(types: !138)
!138 = !{!47, !111, !139}
!139 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !142, file: !16, line: 167)
!142 = !DISubprogram(name: "strtol", scope: !9, file: !9, line: 177, type: !143, flags: DIFlagPrototyped, spFlags: 0)
!143 = !DISubroutineType(types: !144)
!144 = !{!22, !111, !139, !4}
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !146, file: !16, line: 168)
!146 = !DISubprogram(name: "strtoul", scope: !9, file: !9, line: 181, type: !147, flags: DIFlagPrototyped, spFlags: 0)
!147 = !DISubroutineType(types: !148)
!148 = !{!35, !111, !139, !4}
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !150, file: !16, line: 169)
!150 = !DISubprogram(name: "system", scope: !9, file: !9, line: 791, type: !53, flags: DIFlagPrototyped, spFlags: 0)
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !152, file: !16, line: 171)
!152 = !DISubprogram(name: "wcstombs", scope: !9, file: !9, line: 945, type: !153, flags: DIFlagPrototyped, spFlags: 0)
!153 = !DISubroutineType(types: !154)
!154 = !{!33, !155, !156, !33}
!155 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!156 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !160, file: !16, line: 172)
!160 = !DISubprogram(name: "wctomb", scope: !9, file: !9, line: 937, type: !161, flags: DIFlagPrototyped, spFlags: 0)
!161 = !DISubroutineType(types: !162)
!162 = !{!4, !87, !110}
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !164, entity: !165, file: !16, line: 200)
!164 = !DINamespace(name: "__gnu_cxx", scope: null)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !9, line: 81, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !167, identifier: "_ZTS7lldiv_t")
!167 = !{!168, !170}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !166, file: !9, line: 79, baseType: !169, size: 64)
!169 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !166, file: !9, line: 80, baseType: !169, size: 64, offset: 64)
!171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !164, entity: !172, file: !16, line: 206)
!172 = !DISubprogram(name: "_Exit", scope: !9, file: !9, line: 636, type: !77, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !164, entity: !174, file: !16, line: 210)
!174 = !DISubprogram(name: "llabs", scope: !9, file: !9, line: 852, type: !175, flags: DIFlagPrototyped, spFlags: 0)
!175 = !DISubroutineType(types: !176)
!176 = !{!169, !169}
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !164, entity: !178, file: !16, line: 216)
!178 = !DISubprogram(name: "lldiv", scope: !9, file: !9, line: 866, type: !179, flags: DIFlagPrototyped, spFlags: 0)
!179 = !DISubroutineType(types: !180)
!180 = !{!165, !169, !169}
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !164, entity: !182, file: !16, line: 227)
!182 = !DISubprogram(name: "atoll", scope: !9, file: !9, line: 113, type: !183, flags: DIFlagPrototyped, spFlags: 0)
!183 = !DISubroutineType(types: !184)
!184 = !{!169, !48}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !164, entity: !186, file: !16, line: 228)
!186 = !DISubprogram(name: "strtoll", scope: !9, file: !9, line: 201, type: !187, flags: DIFlagPrototyped, spFlags: 0)
!187 = !DISubroutineType(types: !188)
!188 = !{!169, !111, !139, !4}
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !164, entity: !190, file: !16, line: 229)
!190 = !DISubprogram(name: "strtoull", scope: !9, file: !9, line: 206, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!191 = !DISubroutineType(types: !192)
!192 = !{!193, !111, !139, !4}
!193 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !164, entity: !195, file: !16, line: 231)
!195 = !DISubprogram(name: "strtof", scope: !9, file: !9, line: 124, type: !196, flags: DIFlagPrototyped, spFlags: 0)
!196 = !DISubroutineType(types: !197)
!197 = !{!198, !111, !139}
!198 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !164, entity: !200, file: !16, line: 232)
!200 = !DISubprogram(name: "strtold", scope: !9, file: !9, line: 127, type: !201, flags: DIFlagPrototyped, spFlags: 0)
!201 = !DISubroutineType(types: !202)
!202 = !{!203, !111, !139}
!203 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !165, file: !16, line: 240)
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !172, file: !16, line: 242)
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !174, file: !16, line: 244)
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !208, file: !16, line: 245)
!208 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !164, file: !16, line: 213, type: !179, flags: DIFlagPrototyped, spFlags: 0)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !178, file: !16, line: 246)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !182, file: !16, line: 248)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !195, file: !16, line: 249)
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !186, file: !16, line: 250)
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !190, file: !16, line: 251)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !7, entity: !200, file: !16, line: 252)
!215 = !{i32 7, !"Dwarf Version", i32 5}
!216 = !{i32 2, !"Debug Info Version", i32 3}
!217 = !{i32 1, !"wchar_size", i32 4}
!218 = !{i32 7, !"uwtable", i32 1}
!219 = !{i32 7, !"frame-pointer", i32 2}
!220 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!221 = distinct !DISubprogram(name: "init", linkageName: "_Z4initPi", scope: !222, file: !222, line: 4, type: !223, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !225)
!222 = !DIFile(filename: "test/llvm_test_code/pointers/inter_dynamic_02.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "fc3cff59d260a2a0eab413e5ef77b761")
!223 = !DISubroutineType(types: !224)
!224 = !{null, !3}
!225 = !{}
!226 = !DILocalVariable(name: "p", arg: 1, scope: !221, file: !222, line: 4, type: !3)
!227 = !DILocation(line: 4, column: 16, scope: !221)
!228 = !DILocation(line: 4, column: 22, scope: !221)
!229 = !DILocation(line: 4, column: 24, scope: !221)
!230 = !DILocation(line: 4, column: 30, scope: !221)
!231 = distinct !DISubprogram(name: "main", scope: !222, file: !222, line: 6, type: !124, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !225)
!232 = !DILocalVariable(name: "p", scope: !231, file: !222, line: 7, type: !3)
!233 = !DILocation(line: 7, column: 8, scope: !231)
!234 = !DILocation(line: 7, column: 31, scope: !231)
!235 = !DILocation(line: 7, column: 12, scope: !231)
!236 = !DILocation(line: 8, column: 8, scope: !231)
!237 = !DILocation(line: 8, column: 3, scope: !231)
!238 = !DILocation(line: 9, column: 4, scope: !231)
!239 = !DILocation(line: 9, column: 6, scope: !231)
!240 = !DILocation(line: 10, column: 8, scope: !231)
!241 = !DILocation(line: 10, column: 3, scope: !231)
!242 = !DILocation(line: 11, column: 1, scope: !231)
