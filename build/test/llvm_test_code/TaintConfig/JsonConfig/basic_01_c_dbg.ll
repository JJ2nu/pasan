; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/basic_01.c'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/basic_01.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @foo(i32 noundef %A, i32 noundef %B) #0 !dbg !8 {
entry:
  %A.addr = alloca i32, align 4
  %B.addr = alloca i32, align 4
  store i32 %A, i32* %A.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %A.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 %B, i32* %B.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %B.addr, metadata !16, metadata !DIExpression()), !dbg !17
  ret i32 0, !dbg !18
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bar() #0 !dbg !19 {
entry:
  ret i32 0, !dbg !22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @baz(i32 noundef %A, i32 noundef %B, i32 noundef %C) #0 !dbg !23 {
entry:
  %A.addr = alloca i32, align 4
  %B.addr = alloca i32, align 4
  %C.addr = alloca i32, align 4
  store i32 %A, i32* %A.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %A.addr, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 %B, i32* %B.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %B.addr, metadata !28, metadata !DIExpression()), !dbg !29
  store i32 %C, i32* %C.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %C.addr, metadata !30, metadata !DIExpression()), !dbg !31
  ret i32 0, !dbg !32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quark() #0 !dbg !33 {
entry:
  ret void, !dbg !36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @average(i32 noundef %Count, ...) #0 !dbg !37 {
entry:
  %Count.addr = alloca i32, align 4
  %Args = alloca [1 x %struct.__va_list_tag], align 16
  %Tot = alloca double, align 8
  %J = alloca i32, align 4
  store i32 %Count, i32* %Count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %Count.addr, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %Args, metadata !43, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata double* %Tot, metadata !60, metadata !DIExpression()), !dbg !61
  store double 0.000000e+00, double* %Tot, align 8, !dbg !61
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %Args, i64 0, i64 0, !dbg !62
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !62
  call void @llvm.va_start(i8* %arraydecay1), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %J, metadata !63, metadata !DIExpression()), !dbg !65
  store i32 0, i32* %J, align 4, !dbg !65
  br label %for.cond, !dbg !66

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %J, align 4, !dbg !67
  %1 = load i32, i32* %Count.addr, align 4, !dbg !69
  %cmp = icmp slt i32 %0, %1, !dbg !70
  br i1 %cmp, label %for.body, label %for.end, !dbg !71

for.body:                                         ; preds = %for.cond
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %Args, i64 0, i64 0, !dbg !72
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 1, !dbg !72
  %fp_offset = load i32, i32* %fp_offset_p, align 4, !dbg !72
  %fits_in_fp = icmp ule i32 %fp_offset, 160, !dbg !72
  br i1 %fits_in_fp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !72

vaarg.in_reg:                                     ; preds = %for.body
  %2 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3, !dbg !72
  %reg_save_area = load i8*, i8** %2, align 16, !dbg !72
  %3 = getelementptr i8, i8* %reg_save_area, i32 %fp_offset, !dbg !72
  %4 = bitcast i8* %3 to double*, !dbg !72
  %5 = add i32 %fp_offset, 16, !dbg !72
  store i32 %5, i32* %fp_offset_p, align 4, !dbg !72
  br label %vaarg.end, !dbg !72

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2, !dbg !72
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8, !dbg !72
  %6 = bitcast i8* %overflow_arg_area to double*, !dbg !72
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8, !dbg !72
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !72
  br label %vaarg.end, !dbg !72

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi double* [ %4, %vaarg.in_reg ], [ %6, %vaarg.in_mem ], !dbg !72
  %7 = load double, double* %vaarg.addr, align 8, !dbg !72
  %8 = load double, double* %Tot, align 8, !dbg !74
  %add = fadd double %8, %7, !dbg !74
  store double %add, double* %Tot, align 8, !dbg !74
  br label %for.inc, !dbg !75

for.inc:                                          ; preds = %vaarg.end
  %9 = load i32, i32* %J, align 4, !dbg !76
  %inc = add nsw i32 %9, 1, !dbg !76
  store i32 %inc, i32* %J, align 4, !dbg !76
  br label %for.cond, !dbg !77, !llvm.loop !78

for.end:                                          ; preds = %for.cond
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %Args, i64 0, i64 0, !dbg !81
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !81
  call void @llvm.va_end(i8* %arraydecay34), !dbg !81
  %10 = load double, double* %Tot, align 8, !dbg !82
  %11 = load i32, i32* %Count.addr, align 4, !dbg !83
  %conv = sitofp i32 %11 to double, !dbg !83
  %div = fdiv double %10, %conv, !dbg !84
  ret double %div, !dbg !85
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !86 {
entry:
  %retval = alloca i32, align 4
  %A = alloca i32, align 4
  %B = alloca i32, align 4
  %C = alloca i32, align 4
  %Avg = alloca double, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %A, metadata !87, metadata !DIExpression()), !dbg !88
  %call = call i32 @foo(i32 noundef 42, i32 noundef 13), !dbg !89
  store i32 %call, i32* %A, align 4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %B, metadata !90, metadata !DIExpression()), !dbg !91
  %call1 = call i32 @bar(), !dbg !92
  store i32 %call1, i32* %B, align 4, !dbg !91
  call void @llvm.dbg.declare(metadata i32* %C, metadata !93, metadata !DIExpression()), !dbg !94
  %0 = load i32, i32* %A, align 4, !dbg !95
  %add = add nsw i32 %0, 42, !dbg !96
  store i32 %add, i32* %C, align 4, !dbg !94
  %1 = load i32, i32* %C, align 4, !dbg !97
  %2 = load i32, i32* %A, align 4, !dbg !98
  %3 = load i32, i32* %B, align 4, !dbg !99
  %call2 = call i32 @baz(i32 noundef %1, i32 noundef %2, i32 noundef %3), !dbg !100
  store i32 %call2, i32* %C, align 4, !dbg !101
  call void @quark(), !dbg !102
  call void @llvm.dbg.declare(metadata double* %Avg, metadata !103, metadata !DIExpression()), !dbg !104
  %call3 = call double (i32, ...) @average(i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12), !dbg !105
  store double %call3, double* %Avg, align 8, !dbg !104
  %4 = load i32, i32* %C, align 4, !dbg !106
  ret i32 %4, !dbg !107
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/basic_01.c", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/TaintConfig/JsonConfig", checksumkind: CSK_MD5, checksum: "ad0eb4cc8d12379258583265216c5f32")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", scope: !9, file: !9, line: 3, type: !10, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/TaintConfig/JsonConfig/basic_01.c", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "ad0eb4cc8d12379258583265216c5f32")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "A", arg: 1, scope: !8, file: !9, line: 3, type: !12)
!15 = !DILocation(line: 3, column: 13, scope: !8)
!16 = !DILocalVariable(name: "B", arg: 2, scope: !8, file: !9, line: 3, type: !12)
!17 = !DILocation(line: 3, column: 20, scope: !8)
!18 = !DILocation(line: 3, column: 25, scope: !8)
!19 = distinct !DISubprogram(name: "bar", scope: !9, file: !9, line: 5, type: !20, scopeLine: 5, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!20 = !DISubroutineType(types: !21)
!21 = !{!12}
!22 = !DILocation(line: 5, column: 13, scope: !19)
!23 = distinct !DISubprogram(name: "baz", scope: !9, file: !9, line: 7, type: !24, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!24 = !DISubroutineType(types: !25)
!25 = !{!12, !12, !12, !12}
!26 = !DILocalVariable(name: "A", arg: 1, scope: !23, file: !9, line: 7, type: !12)
!27 = !DILocation(line: 7, column: 13, scope: !23)
!28 = !DILocalVariable(name: "B", arg: 2, scope: !23, file: !9, line: 7, type: !12)
!29 = !DILocation(line: 7, column: 20, scope: !23)
!30 = !DILocalVariable(name: "C", arg: 3, scope: !23, file: !9, line: 7, type: !12)
!31 = !DILocation(line: 7, column: 27, scope: !23)
!32 = !DILocation(line: 7, column: 32, scope: !23)
!33 = distinct !DISubprogram(name: "quark", scope: !9, file: !9, line: 9, type: !34, scopeLine: 9, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!34 = !DISubroutineType(types: !35)
!35 = !{null}
!36 = !DILocation(line: 9, column: 15, scope: !33)
!37 = distinct !DISubprogram(name: "average", scope: !9, file: !9, line: 11, type: !38, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !12, null}
!40 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!41 = !DILocalVariable(name: "Count", arg: 1, scope: !37, file: !9, line: 11, type: !12)
!42 = !DILocation(line: 11, column: 20, scope: !37)
!43 = !DILocalVariable(name: "Args", scope: !37, file: !9, line: 12, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !45, line: 14, baseType: !46)
!45 = !DIFile(filename: "/usr/local/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !47, baseType: !48)
!47 = !DIFile(filename: "test/llvm_test_code/TaintConfig/JsonConfig/basic_01.c", directory: "/home/jinu/Desktop/phasar")
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 192, elements: !57)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !50)
!50 = !{!51, !53, !54, !56}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !49, file: !47, line: 12, baseType: !52, size: 32)
!52 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !49, file: !47, line: 12, baseType: !52, size: 32, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !49, file: !47, line: 12, baseType: !55, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !49, file: !47, line: 12, baseType: !55, size: 64, offset: 128)
!57 = !{!58}
!58 = !DISubrange(count: 1)
!59 = !DILocation(line: 12, column: 11, scope: !37)
!60 = !DILocalVariable(name: "Tot", scope: !37, file: !9, line: 13, type: !40)
!61 = !DILocation(line: 13, column: 10, scope: !37)
!62 = !DILocation(line: 14, column: 3, scope: !37)
!63 = !DILocalVariable(name: "J", scope: !64, file: !9, line: 15, type: !12)
!64 = distinct !DILexicalBlock(scope: !37, file: !9, line: 15, column: 3)
!65 = !DILocation(line: 15, column: 12, scope: !64)
!66 = !DILocation(line: 15, column: 8, scope: !64)
!67 = !DILocation(line: 15, column: 19, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !9, line: 15, column: 3)
!69 = !DILocation(line: 15, column: 23, scope: !68)
!70 = !DILocation(line: 15, column: 21, scope: !68)
!71 = !DILocation(line: 15, column: 3, scope: !64)
!72 = !DILocation(line: 16, column: 12, scope: !73)
!73 = distinct !DILexicalBlock(scope: !68, file: !9, line: 15, column: 35)
!74 = !DILocation(line: 16, column: 9, scope: !73)
!75 = !DILocation(line: 17, column: 3, scope: !73)
!76 = !DILocation(line: 15, column: 31, scope: !68)
!77 = !DILocation(line: 15, column: 3, scope: !68)
!78 = distinct !{!78, !71, !79, !80}
!79 = !DILocation(line: 17, column: 3, scope: !64)
!80 = !{!"llvm.loop.mustprogress"}
!81 = !DILocation(line: 18, column: 3, scope: !37)
!82 = !DILocation(line: 19, column: 10, scope: !37)
!83 = !DILocation(line: 19, column: 16, scope: !37)
!84 = !DILocation(line: 19, column: 14, scope: !37)
!85 = !DILocation(line: 19, column: 3, scope: !37)
!86 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 22, type: !20, scopeLine: 22, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!87 = !DILocalVariable(name: "A", scope: !86, file: !9, line: 23, type: !12)
!88 = !DILocation(line: 23, column: 7, scope: !86)
!89 = !DILocation(line: 23, column: 11, scope: !86)
!90 = !DILocalVariable(name: "B", scope: !86, file: !9, line: 24, type: !12)
!91 = !DILocation(line: 24, column: 7, scope: !86)
!92 = !DILocation(line: 24, column: 11, scope: !86)
!93 = !DILocalVariable(name: "C", scope: !86, file: !9, line: 25, type: !12)
!94 = !DILocation(line: 25, column: 7, scope: !86)
!95 = !DILocation(line: 25, column: 11, scope: !86)
!96 = !DILocation(line: 25, column: 13, scope: !86)
!97 = !DILocation(line: 26, column: 11, scope: !86)
!98 = !DILocation(line: 26, column: 14, scope: !86)
!99 = !DILocation(line: 26, column: 17, scope: !86)
!100 = !DILocation(line: 26, column: 7, scope: !86)
!101 = !DILocation(line: 26, column: 5, scope: !86)
!102 = !DILocation(line: 27, column: 3, scope: !86)
!103 = !DILocalVariable(name: "Avg", scope: !86, file: !9, line: 28, type: !40)
!104 = !DILocation(line: 28, column: 10, scope: !86)
!105 = !DILocation(line: 28, column: 16, scope: !86)
!106 = !DILocation(line: 29, column: 10, scope: !86)
!107 = !DILocation(line: 29, column: 3, scope: !86)
