; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/overflow_div_min_by_neg_one.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/overflow_div_min_by_neg_one.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #0 !dbg !97 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i64* %i, metadata !102, metadata !DIExpression()), !dbg !103
  store i64 -9223372036854775807, i64* %i, align 8, !dbg !103
  call void @llvm.dbg.declare(metadata i64* %j, metadata !104, metadata !DIExpression()), !dbg !105
  %0 = load i64, i64* %i, align 8, !dbg !106
  %sub = sub nsw i64 %0, 8, !dbg !107
  store i64 %sub, i64* %j, align 8, !dbg !105
  call void @llvm.dbg.declare(metadata i64* %k, metadata !108, metadata !DIExpression()), !dbg !109
  %1 = load i64, i64* %j, align 8, !dbg !110
  %div = sdiv i64 %1, -1, !dbg !111
  store i64 %div, i64* %k, align 8, !dbg !109
  ret i32 0, !dbg !112
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, imports: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/overflow_div_min_by_neg_one.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/linear_constant", checksumkind: CSK_MD5, checksum: "eb4f0756f032ea69f6eede02cf2169eb")
!2 = !{!3, !11, !15, !19, !23, !26, !28, !30, !32, !35, !38, !41, !44, !47, !49, !54, !58, !62, !66, !68, !70, !72, !74, !77, !80, !83, !86, !89}
!3 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !5, file: !10, line: 47)
!4 = !DINamespace(name: "std", scope: null)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !6, line: 24, baseType: !7)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !8, line: 37, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!9 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdint", directory: "")
!11 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !12, file: !10, line: 48)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !6, line: 25, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !8, line: 39, baseType: !14)
!14 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!15 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !16, file: !10, line: 49)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !6, line: 26, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !8, line: 41, baseType: !18)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !20, file: !10, line: 50)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !6, line: 27, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !8, line: 44, baseType: !22)
!22 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!23 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !24, file: !10, line: 52)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !25, line: 58, baseType: !9)
!25 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!26 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !27, file: !10, line: 53)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !25, line: 60, baseType: !22)
!28 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !29, file: !10, line: 54)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !25, line: 61, baseType: !22)
!30 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !31, file: !10, line: 55)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !25, line: 62, baseType: !22)
!32 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !33, file: !10, line: 57)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !25, line: 43, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !8, line: 52, baseType: !7)
!35 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !36, file: !10, line: 58)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !25, line: 44, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !8, line: 54, baseType: !13)
!38 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !39, file: !10, line: 59)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !25, line: 45, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !8, line: 56, baseType: !17)
!41 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !42, file: !10, line: 60)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !25, line: 46, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !8, line: 58, baseType: !21)
!44 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !45, file: !10, line: 62)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !25, line: 101, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !8, line: 72, baseType: !22)
!47 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !48, file: !10, line: 63)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !25, line: 87, baseType: !22)
!49 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !50, file: !10, line: 65)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !51, line: 24, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !8, line: 38, baseType: !53)
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !55, file: !10, line: 66)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !51, line: 25, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !8, line: 40, baseType: !57)
!57 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!58 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !59, file: !10, line: 67)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !51, line: 26, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !8, line: 42, baseType: !61)
!61 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!62 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !63, file: !10, line: 68)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !51, line: 27, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !8, line: 45, baseType: !65)
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !67, file: !10, line: 70)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !25, line: 71, baseType: !53)
!68 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !69, file: !10, line: 71)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !25, line: 73, baseType: !65)
!70 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !71, file: !10, line: 72)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !25, line: 74, baseType: !65)
!72 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !73, file: !10, line: 73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !25, line: 75, baseType: !65)
!74 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !75, file: !10, line: 75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !25, line: 49, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !8, line: 53, baseType: !52)
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !78, file: !10, line: 76)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !25, line: 50, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !8, line: 55, baseType: !56)
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !81, file: !10, line: 77)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !25, line: 51, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !8, line: 57, baseType: !60)
!83 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !84, file: !10, line: 78)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !25, line: 52, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !8, line: 59, baseType: !64)
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !87, file: !10, line: 80)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !25, line: 102, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !8, line: 73, baseType: !65)
!89 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !90, file: !10, line: 81)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !25, line: 90, baseType: !65)
!91 = !{i32 7, !"Dwarf Version", i32 5}
!92 = !{i32 2, !"Debug Info Version", i32 3}
!93 = !{i32 1, !"wchar_size", i32 4}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!97 = distinct !DISubprogram(name: "main", scope: !98, file: !98, line: 3, type: !99, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !101)
!98 = !DIFile(filename: "test/llvm_test_code/linear_constant/overflow_div_min_by_neg_one.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "eb4f0756f032ea69f6eede02cf2169eb")
!99 = !DISubroutineType(types: !100)
!100 = !{!18}
!101 = !{}
!102 = !DILocalVariable(name: "i", scope: !97, file: !98, line: 4, type: !20)
!103 = !DILocation(line: 4, column: 11, scope: !97)
!104 = !DILocalVariable(name: "j", scope: !97, file: !98, line: 5, type: !20)
!105 = !DILocation(line: 5, column: 11, scope: !97)
!106 = !DILocation(line: 5, column: 15, scope: !97)
!107 = !DILocation(line: 5, column: 17, scope: !97)
!108 = !DILocalVariable(name: "k", scope: !97, file: !98, line: 6, type: !20)
!109 = !DILocation(line: 6, column: 11, scope: !97)
!110 = !DILocation(line: 6, column: 15, scope: !97)
!111 = !DILocation(line: 6, column: 17, scope: !97)
!112 = !DILocation(line: 7, column: 3, scope: !97)
