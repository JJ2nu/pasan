; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/recursion.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/recursion.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef nonnull align 4 dereferenceable(4) i32* @_Z3fooRii(i32* noundef nonnull align 4 dereferenceable(4) %x, i32 noundef %n) #0 !dbg !207 {
entry:
  %retval = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !213, metadata !DIExpression()), !dbg !214
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !215, metadata !DIExpression()), !dbg !216
  %0 = load i32, i32* %n.addr, align 4, !dbg !217
  %cmp = icmp slt i32 %0, 1, !dbg !219
  br i1 %cmp, label %if.then, label %if.end, !dbg !220

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %x.addr, align 8, !dbg !221
  store i32* %1, i32** %retval, align 8, !dbg !222
  br label %return, !dbg !222

if.end:                                           ; preds = %entry
  %2 = load i32*, i32** %x.addr, align 8, !dbg !223
  %3 = load i32, i32* %n.addr, align 4, !dbg !224
  %sub = sub nsw i32 %3, 1, !dbg !225
  %call = call noundef nonnull align 4 dereferenceable(4) i32* @_Z3fooRii(i32* noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %sub), !dbg !226
  store i32* %call, i32** %retval, align 8, !dbg !227
  br label %return, !dbg !227

return:                                           ; preds = %if.end, %if.then
  %4 = load i32*, i32** %retval, align 8, !dbg !228
  ret i32* %4, !dbg !228
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #2 !dbg !229 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata i32* %j, metadata !232, metadata !DIExpression()), !dbg !233
  %call = call noundef nonnull align 4 dereferenceable(4) i32* @_Z3fooRii(i32* noundef nonnull align 4 dereferenceable(4) %i, i32 noundef 10), !dbg !234
  %0 = load i32, i32* %call, align 4, !dbg !234
  store i32 %0, i32* %j, align 4, !dbg !233
  %1 = load i32, i32* %j, align 4, !dbg !235
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %1), !dbg !236
  ret i32 0, !dbg !237
}

declare dso_local i32 @printf(i8* noundef, ...) #3

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, imports: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/recursion.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/uninitialized_variables", checksumkind: CSK_MD5, checksum: "41702df9ce12ce480d3fb66ce5677d2e")
!2 = !{!3, !10, !16, !21, !26, !28, !30, !32, !34, !41, !48, !55, !59, !63, !67, !76, !80, !82, !87, !93, !97, !104, !106, !110, !114, !118, !120, !124, !128, !130, !134, !136, !138, !142, !146, !150, !154, !158, !162, !164, !171, !175, !179, !184, !186, !188, !192, !196, !197, !198, !199, !200}
!3 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !5, file: !9, line: 98)
!4 = !DINamespace(name: "std", scope: null)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !6, line: 7, baseType: !7)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !8, line: 49, size: 1728, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!9 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdio", directory: "")
!10 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !11, file: !9, line: 99)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !12, line: 84, baseType: !13)
!12 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !14, line: 14, baseType: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !14, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!16 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !17, file: !9, line: 101)
!17 = !DISubprogram(name: "clearerr", scope: !12, file: !12, line: 786, type: !18, flags: DIFlagPrototyped, spFlags: 0)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!21 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !22, file: !9, line: 102)
!22 = !DISubprogram(name: "fclose", scope: !12, file: !12, line: 178, type: !23, flags: DIFlagPrototyped, spFlags: 0)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !20}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !27, file: !9, line: 103)
!27 = !DISubprogram(name: "feof", scope: !12, file: !12, line: 788, type: !23, flags: DIFlagPrototyped, spFlags: 0)
!28 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !29, file: !9, line: 104)
!29 = !DISubprogram(name: "ferror", scope: !12, file: !12, line: 790, type: !23, flags: DIFlagPrototyped, spFlags: 0)
!30 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !31, file: !9, line: 105)
!31 = !DISubprogram(name: "fflush", scope: !12, file: !12, line: 230, type: !23, flags: DIFlagPrototyped, spFlags: 0)
!32 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !33, file: !9, line: 106)
!33 = !DISubprogram(name: "fgetc", scope: !12, file: !12, line: 513, type: !23, flags: DIFlagPrototyped, spFlags: 0)
!34 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !35, file: !9, line: 107)
!35 = !DISubprogram(name: "fgetpos", scope: !12, file: !12, line: 760, type: !36, flags: DIFlagPrototyped, spFlags: 0)
!36 = !DISubroutineType(types: !37)
!37 = !{!25, !38, !39}
!38 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !20)
!39 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!41 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !42, file: !9, line: 108)
!42 = !DISubprogram(name: "fgets", scope: !12, file: !12, line: 592, type: !43, flags: DIFlagPrototyped, spFlags: 0)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !47, !25, !38}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!48 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !49, file: !9, line: 109)
!49 = !DISubprogram(name: "fopen", scope: !12, file: !12, line: 258, type: !50, flags: DIFlagPrototyped, spFlags: 0)
!50 = !DISubroutineType(types: !51)
!51 = !{!20, !52, !52}
!52 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!55 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !56, file: !9, line: 110)
!56 = !DISubprogram(name: "fprintf", scope: !12, file: !12, line: 350, type: !57, flags: DIFlagPrototyped, spFlags: 0)
!57 = !DISubroutineType(types: !58)
!58 = !{!25, !38, !52, null}
!59 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !60, file: !9, line: 111)
!60 = !DISubprogram(name: "fputc", scope: !12, file: !12, line: 549, type: !61, flags: DIFlagPrototyped, spFlags: 0)
!61 = !DISubroutineType(types: !62)
!62 = !{!25, !25, !20}
!63 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !64, file: !9, line: 112)
!64 = !DISubprogram(name: "fputs", scope: !12, file: !12, line: 655, type: !65, flags: DIFlagPrototyped, spFlags: 0)
!65 = !DISubroutineType(types: !66)
!66 = !{!25, !52, !38}
!67 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !68, file: !9, line: 113)
!68 = !DISubprogram(name: "fread", scope: !12, file: !12, line: 675, type: !69, flags: DIFlagPrototyped, spFlags: 0)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !74, !71, !71, !38}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 46, baseType: !73)
!72 = !DIFile(filename: "/usr/local/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!73 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !77, file: !9, line: 114)
!77 = !DISubprogram(name: "freopen", scope: !12, file: !12, line: 265, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!78 = !DISubroutineType(types: !79)
!79 = !{!20, !52, !52, !38}
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !81, file: !9, line: 115)
!81 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !12, file: !12, line: 434, type: !57, flags: DIFlagPrototyped, spFlags: 0)
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !83, file: !9, line: 116)
!83 = !DISubprogram(name: "fseek", scope: !12, file: !12, line: 713, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!84 = !DISubroutineType(types: !85)
!85 = !{!25, !20, !86, !25}
!86 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!87 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !88, file: !9, line: 117)
!88 = !DISubprogram(name: "fsetpos", scope: !12, file: !12, line: 765, type: !89, flags: DIFlagPrototyped, spFlags: 0)
!89 = !DISubroutineType(types: !90)
!90 = !{!25, !20, !91}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !94, file: !9, line: 118)
!94 = !DISubprogram(name: "ftell", scope: !12, file: !12, line: 718, type: !95, flags: DIFlagPrototyped, spFlags: 0)
!95 = !DISubroutineType(types: !96)
!96 = !{!86, !20}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !98, file: !9, line: 119)
!98 = !DISubprogram(name: "fwrite", scope: !12, file: !12, line: 681, type: !99, flags: DIFlagPrototyped, spFlags: 0)
!99 = !DISubroutineType(types: !100)
!100 = !{!71, !101, !71, !71, !38}
!101 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !105, file: !9, line: 120)
!105 = !DISubprogram(name: "getc", scope: !12, file: !12, line: 514, type: !23, flags: DIFlagPrototyped, spFlags: 0)
!106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !107, file: !9, line: 121)
!107 = !DISubprogram(name: "getchar", scope: !12, file: !12, line: 520, type: !108, flags: DIFlagPrototyped, spFlags: 0)
!108 = !DISubroutineType(types: !109)
!109 = !{!25}
!110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !111, file: !9, line: 126)
!111 = !DISubprogram(name: "perror", scope: !12, file: !12, line: 804, type: !112, flags: DIFlagPrototyped, spFlags: 0)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !53}
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !115, file: !9, line: 127)
!115 = !DISubprogram(name: "printf", scope: !12, file: !12, line: 356, type: !116, flags: DIFlagPrototyped, spFlags: 0)
!116 = !DISubroutineType(types: !117)
!117 = !{!25, !52, null}
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !119, file: !9, line: 128)
!119 = !DISubprogram(name: "putc", scope: !12, file: !12, line: 550, type: !61, flags: DIFlagPrototyped, spFlags: 0)
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !121, file: !9, line: 129)
!121 = !DISubprogram(name: "putchar", scope: !12, file: !12, line: 556, type: !122, flags: DIFlagPrototyped, spFlags: 0)
!122 = !DISubroutineType(types: !123)
!123 = !{!25, !25}
!124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !125, file: !9, line: 130)
!125 = !DISubprogram(name: "puts", scope: !12, file: !12, line: 661, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!126 = !DISubroutineType(types: !127)
!127 = !{!25, !53}
!128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !129, file: !9, line: 131)
!129 = !DISubprogram(name: "remove", scope: !12, file: !12, line: 152, type: !126, flags: DIFlagPrototyped, spFlags: 0)
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !131, file: !9, line: 132)
!131 = !DISubprogram(name: "rename", scope: !12, file: !12, line: 154, type: !132, flags: DIFlagPrototyped, spFlags: 0)
!132 = !DISubroutineType(types: !133)
!133 = !{!25, !53, !53}
!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !135, file: !9, line: 133)
!135 = !DISubprogram(name: "rewind", scope: !12, file: !12, line: 723, type: !18, flags: DIFlagPrototyped, spFlags: 0)
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !137, file: !9, line: 134)
!137 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !12, file: !12, line: 437, type: !116, flags: DIFlagPrototyped, spFlags: 0)
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !139, file: !9, line: 135)
!139 = !DISubprogram(name: "setbuf", scope: !12, file: !12, line: 328, type: !140, flags: DIFlagPrototyped, spFlags: 0)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !38, !47}
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !143, file: !9, line: 136)
!143 = !DISubprogram(name: "setvbuf", scope: !12, file: !12, line: 332, type: !144, flags: DIFlagPrototyped, spFlags: 0)
!144 = !DISubroutineType(types: !145)
!145 = !{!25, !38, !47, !25, !71}
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !147, file: !9, line: 137)
!147 = !DISubprogram(name: "sprintf", scope: !12, file: !12, line: 358, type: !148, flags: DIFlagPrototyped, spFlags: 0)
!148 = !DISubroutineType(types: !149)
!149 = !{!25, !47, !52, null}
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !151, file: !9, line: 138)
!151 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !12, file: !12, line: 439, type: !152, flags: DIFlagPrototyped, spFlags: 0)
!152 = !DISubroutineType(types: !153)
!153 = !{!25, !52, !52, null}
!154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !155, file: !9, line: 139)
!155 = !DISubprogram(name: "tmpfile", scope: !12, file: !12, line: 188, type: !156, flags: DIFlagPrototyped, spFlags: 0)
!156 = !DISubroutineType(types: !157)
!157 = !{!20}
!158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !159, file: !9, line: 141)
!159 = !DISubprogram(name: "tmpnam", scope: !12, file: !12, line: 205, type: !160, flags: DIFlagPrototyped, spFlags: 0)
!160 = !DISubroutineType(types: !161)
!161 = !{!45, !45}
!162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !163, file: !9, line: 143)
!163 = !DISubprogram(name: "ungetc", scope: !12, file: !12, line: 668, type: !61, flags: DIFlagPrototyped, spFlags: 0)
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !165, file: !9, line: 144)
!165 = !DISubprogram(name: "vfprintf", scope: !12, file: !12, line: 365, type: !166, flags: DIFlagPrototyped, spFlags: 0)
!166 = !DISubroutineType(types: !167)
!167 = !{!25, !38, !52, !168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !170, size: 192, flags: DIFlagFwdDecl, identifier: "_ZTS13__va_list_tag")
!170 = !DIFile(filename: "test/llvm_test_code/uninitialized_variables/recursion.cpp", directory: "/home/jinu/Desktop/phasar")
!171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !172, file: !9, line: 145)
!172 = !DISubprogram(name: "vprintf", scope: !12, file: !12, line: 371, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!173 = !DISubroutineType(types: !174)
!174 = !{!25, !52, !168}
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !176, file: !9, line: 146)
!176 = !DISubprogram(name: "vsprintf", scope: !12, file: !12, line: 373, type: !177, flags: DIFlagPrototyped, spFlags: 0)
!177 = !DISubroutineType(types: !178)
!178 = !{!25, !47, !52, !168}
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !180, entity: !181, file: !9, line: 175)
!180 = !DINamespace(name: "__gnu_cxx", scope: null)
!181 = !DISubprogram(name: "snprintf", scope: !12, file: !12, line: 378, type: !182, flags: DIFlagPrototyped, spFlags: 0)
!182 = !DISubroutineType(types: !183)
!183 = !{!25, !47, !71, !52, null}
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !180, entity: !185, file: !9, line: 176)
!185 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !12, file: !12, line: 479, type: !166, flags: DIFlagPrototyped, spFlags: 0)
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !180, entity: !187, file: !9, line: 177)
!187 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !12, file: !12, line: 484, type: !173, flags: DIFlagPrototyped, spFlags: 0)
!188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !180, entity: !189, file: !9, line: 178)
!189 = !DISubprogram(name: "vsnprintf", scope: !12, file: !12, line: 382, type: !190, flags: DIFlagPrototyped, spFlags: 0)
!190 = !DISubroutineType(types: !191)
!191 = !{!25, !47, !71, !52, !168}
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !180, entity: !193, file: !9, line: 179)
!193 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !12, file: !12, line: 487, type: !194, flags: DIFlagPrototyped, spFlags: 0)
!194 = !DISubroutineType(types: !195)
!195 = !{!25, !52, !52, !168}
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !181, file: !9, line: 185)
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !185, file: !9, line: 186)
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !187, file: !9, line: 187)
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !189, file: !9, line: 188)
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !4, entity: !193, file: !9, line: 189)
!201 = !{i32 7, !"Dwarf Version", i32 5}
!202 = !{i32 2, !"Debug Info Version", i32 3}
!203 = !{i32 1, !"wchar_size", i32 4}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!207 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooRii", scope: !208, file: !208, line: 2, type: !209, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !212)
!208 = !DIFile(filename: "test/llvm_test_code/uninitialized_variables/recursion.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "41702df9ce12ce480d3fb66ce5677d2e")
!209 = !DISubroutineType(types: !210)
!210 = !{!211, !211, !25}
!211 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !25, size: 64)
!212 = !{}
!213 = !DILocalVariable(name: "x", arg: 1, scope: !207, file: !208, line: 2, type: !211)
!214 = !DILocation(line: 2, column: 15, scope: !207)
!215 = !DILocalVariable(name: "n", arg: 2, scope: !207, file: !208, line: 2, type: !25)
!216 = !DILocation(line: 2, column: 22, scope: !207)
!217 = !DILocation(line: 3, column: 7, scope: !218)
!218 = distinct !DILexicalBlock(scope: !207, file: !208, line: 3, column: 7)
!219 = !DILocation(line: 3, column: 9, scope: !218)
!220 = !DILocation(line: 3, column: 7, scope: !207)
!221 = !DILocation(line: 4, column: 12, scope: !218)
!222 = !DILocation(line: 4, column: 5, scope: !218)
!223 = !DILocation(line: 5, column: 14, scope: !207)
!224 = !DILocation(line: 5, column: 17, scope: !207)
!225 = !DILocation(line: 5, column: 19, scope: !207)
!226 = !DILocation(line: 5, column: 10, scope: !207)
!227 = !DILocation(line: 5, column: 3, scope: !207)
!228 = !DILocation(line: 6, column: 1, scope: !207)
!229 = distinct !DISubprogram(name: "main", scope: !208, file: !208, line: 8, type: !108, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !212)
!230 = !DILocalVariable(name: "i", scope: !229, file: !208, line: 9, type: !25)
!231 = !DILocation(line: 9, column: 7, scope: !229)
!232 = !DILocalVariable(name: "j", scope: !229, file: !208, line: 10, type: !25)
!233 = !DILocation(line: 10, column: 7, scope: !229)
!234 = !DILocation(line: 10, column: 11, scope: !229)
!235 = !DILocation(line: 11, column: 18, scope: !229)
!236 = !DILocation(line: 11, column: 3, scope: !229)
!237 = !DILocation(line: 12, column: 3, scope: !229)
