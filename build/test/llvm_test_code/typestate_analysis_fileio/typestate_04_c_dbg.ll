; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/typestate_analysis_fileio/typestate_04.c'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/typestate_analysis_fileio/typestate_04.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [8 x i8] c"bar.txt\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(%struct._IO_FILE* noundef %p) #0 !dbg !8 {
entry:
  %p.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %p, %struct._IO_FILE** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %p.addr, metadata !76, metadata !DIExpression()), !dbg !77
  %call = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !78
  store %struct._IO_FILE* %call, %struct._IO_FILE** %p.addr, align 8, !dbg !79
  ret void, !dbg !80
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !81 {
entry:
  %retval = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %f, metadata !84, metadata !DIExpression()), !dbg !85
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !86
  call void @foo(%struct._IO_FILE* noundef %0), !dbg !87
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !88
  %call = call i32 @fclose(%struct._IO_FILE* noundef %1), !dbg !89
  ret i32 0, !dbg !90
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/typestate_analysis_fileio/typestate_04.c", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/typestate_analysis_fileio", checksumkind: CSK_MD5, checksum: "d8d28d438476ea21f1aa40af8c07c77d")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 4, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !75)
!9 = !DIFile(filename: "test/llvm_test_code/typestate_analysis_fileio/typestate_04.c", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "d8d28d438476ea21f1aa40af8c07c77d")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !14, line: 7, baseType: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !16, line: 49, size: 1728, elements: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!17 = !{!18, !20, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !36, !38, !39, !40, !44, !46, !48, !52, !55, !57, !60, !63, !64, !66, !70, !71}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !15, file: !16, line: 51, baseType: !19, size: 32)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !15, file: !16, line: 54, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !15, file: !16, line: 55, baseType: !21, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !15, file: !16, line: 56, baseType: !21, size: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !15, file: !16, line: 57, baseType: !21, size: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !15, file: !16, line: 58, baseType: !21, size: 64, offset: 320)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !15, file: !16, line: 59, baseType: !21, size: 64, offset: 384)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !15, file: !16, line: 60, baseType: !21, size: 64, offset: 448)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !15, file: !16, line: 61, baseType: !21, size: 64, offset: 512)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !15, file: !16, line: 64, baseType: !21, size: 64, offset: 576)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !15, file: !16, line: 65, baseType: !21, size: 64, offset: 640)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !15, file: !16, line: 66, baseType: !21, size: 64, offset: 704)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !15, file: !16, line: 68, baseType: !34, size: 64, offset: 768)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !16, line: 36, flags: DIFlagFwdDecl)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !15, file: !16, line: 70, baseType: !37, size: 64, offset: 832)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !15, file: !16, line: 72, baseType: !19, size: 32, offset: 896)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !15, file: !16, line: 73, baseType: !19, size: 32, offset: 928)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !15, file: !16, line: 74, baseType: !41, size: 64, offset: 960)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !42, line: 152, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!43 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !15, file: !16, line: 77, baseType: !45, size: 16, offset: 1024)
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !15, file: !16, line: 78, baseType: !47, size: 8, offset: 1040)
!47 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !15, file: !16, line: 79, baseType: !49, size: 8, offset: 1048)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 1)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !15, file: !16, line: 81, baseType: !53, size: 64, offset: 1088)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !16, line: 43, baseType: null)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !15, file: !16, line: 89, baseType: !56, size: 64, offset: 1152)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !42, line: 153, baseType: !43)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !15, file: !16, line: 91, baseType: !58, size: 64, offset: 1216)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !16, line: 37, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !15, file: !16, line: 92, baseType: !61, size: 64, offset: 1280)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !16, line: 38, flags: DIFlagFwdDecl)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !15, file: !16, line: 93, baseType: !37, size: 64, offset: 1344)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !15, file: !16, line: 94, baseType: !65, size: 64, offset: 1408)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !15, file: !16, line: 95, baseType: !67, size: 64, offset: 1472)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !68, line: 46, baseType: !69)
!68 = !DIFile(filename: "/usr/local/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!69 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !15, file: !16, line: 96, baseType: !19, size: 32, offset: 1536)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !15, file: !16, line: 98, baseType: !72, size: 160, offset: 1568)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 20)
!75 = !{}
!76 = !DILocalVariable(name: "p", arg: 1, scope: !8, file: !9, line: 4, type: !12)
!77 = !DILocation(line: 4, column: 16, scope: !8)
!78 = !DILocation(line: 4, column: 25, scope: !8)
!79 = !DILocation(line: 4, column: 23, scope: !8)
!80 = !DILocation(line: 4, column: 49, scope: !8)
!81 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 6, type: !82, scopeLine: 6, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !75)
!82 = !DISubroutineType(types: !83)
!83 = !{!19}
!84 = !DILocalVariable(name: "f", scope: !81, file: !9, line: 7, type: !12)
!85 = !DILocation(line: 7, column: 9, scope: !81)
!86 = !DILocation(line: 8, column: 7, scope: !81)
!87 = !DILocation(line: 8, column: 3, scope: !81)
!88 = !DILocation(line: 9, column: 10, scope: !81)
!89 = !DILocation(line: 9, column: 3, scope: !81)
!90 = !DILocation(line: 10, column: 3, scope: !81)