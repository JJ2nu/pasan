; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/static_fun_01.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/static_fun_01.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 !dbg !8 {
entry:
  %retval = alloca i32, align 4
  %A = alloca i32, align 4
  %B = alloca i32, align 4
  %C = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %A, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 42, i32* %A, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %B, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 0, i32* %B, align 4, !dbg !17
  call void @llvm.dbg.declare(metadata i32* %C, metadata !18, metadata !DIExpression()), !dbg !19
  %0 = load i32, i32* %A, align 4, !dbg !20
  %call = call noundef i32 @_ZL3bariPi(i32 noundef %0, i32* noundef %B), !dbg !21
  store i32 %call, i32* %C, align 4, !dbg !19
  %1 = load i32, i32* %C, align 4, !dbg !22
  ret i32 %1, !dbg !23
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef i32 @_ZL3bariPi(i32 noundef %A, i32* noundef %B) #2 !dbg !24 {
entry:
  %retval = alloca i32, align 4
  %A.addr = alloca i32, align 4
  %B.addr = alloca i32*, align 8
  store i32 %A, i32* %A.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %A.addr, metadata !28, metadata !DIExpression()), !dbg !29
  store i32* %B, i32** %B.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %B.addr, metadata !30, metadata !DIExpression()), !dbg !31
  %0 = load i32*, i32** %B.addr, align 8, !dbg !32
  store i32 13, i32* %0, align 4, !dbg !33
  %1 = load i32, i32* %A.addr, align 4, !dbg !34
  %cmp = icmp eq i32 %1, 42, !dbg !36
  br i1 %cmp, label %if.then, label %if.end, !dbg !37

if.then:                                          ; preds = %entry
  store i32 13, i32* %retval, align 4, !dbg !38
  br label %return, !dbg !38

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %A.addr, align 4, !dbg !40
  store i32 %2, i32* %retval, align 4, !dbg !41
  br label %return, !dbg !41

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !42
  ret i32 %3, !dbg !42
}

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/static_fun_01.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/TaintConfig/JsonConfig", checksumkind: CSK_MD5, checksum: "9196223e5ff0d7d8d7bfdfbcd8d182fa")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 9, type: !10, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/TaintConfig/JsonConfig/static_fun_01.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "9196223e5ff0d7d8d7bfdfbcd8d182fa")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "A", scope: !8, file: !9, line: 10, type: !12)
!15 = !DILocation(line: 10, column: 7, scope: !8)
!16 = !DILocalVariable(name: "B", scope: !8, file: !9, line: 11, type: !12)
!17 = !DILocation(line: 11, column: 7, scope: !8)
!18 = !DILocalVariable(name: "C", scope: !8, file: !9, line: 12, type: !12)
!19 = !DILocation(line: 12, column: 7, scope: !8)
!20 = !DILocation(line: 12, column: 15, scope: !8)
!21 = !DILocation(line: 12, column: 11, scope: !8)
!22 = !DILocation(line: 13, column: 10, scope: !8)
!23 = !DILocation(line: 13, column: 3, scope: !8)
!24 = distinct !DISubprogram(name: "bar", linkageName: "_ZL3bariPi", scope: !9, file: !9, line: 1, type: !25, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !13)
!25 = !DISubroutineType(types: !26)
!26 = !{!12, !12, !27}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!28 = !DILocalVariable(name: "A", arg: 1, scope: !24, file: !9, line: 1, type: !12)
!29 = !DILocation(line: 1, column: 20, scope: !24)
!30 = !DILocalVariable(name: "B", arg: 2, scope: !24, file: !9, line: 1, type: !27)
!31 = !DILocation(line: 1, column: 28, scope: !24)
!32 = !DILocation(line: 2, column: 4, scope: !24)
!33 = !DILocation(line: 2, column: 6, scope: !24)
!34 = !DILocation(line: 3, column: 7, scope: !35)
!35 = distinct !DILexicalBlock(scope: !24, file: !9, line: 3, column: 7)
!36 = !DILocation(line: 3, column: 9, scope: !35)
!37 = !DILocation(line: 3, column: 7, scope: !24)
!38 = !DILocation(line: 4, column: 5, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !9, line: 3, column: 16)
!40 = !DILocation(line: 6, column: 10, scope: !24)
!41 = !DILocation(line: 6, column: 3, scope: !24)
!42 = !DILocation(line: 7, column: 1, scope: !24)
