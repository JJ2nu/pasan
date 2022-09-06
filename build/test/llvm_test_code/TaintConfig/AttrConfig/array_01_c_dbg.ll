; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/AttrConfig/array_01.c'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/AttrConfig/array_01.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"psr.source\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [80 x i8] c"/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/AttrConfig/array_01.c\00", section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !8 {
entry:
  %retval = alloca i32, align 4
  %Buffer = alloca [128 x i8], align 16
  %I = alloca i32, align 4
  %P = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata [128 x i8]* %Buffer, metadata !14, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %I, metadata !20, metadata !DIExpression()), !dbg !22
  store i32 0, i32* %I, align 4, !dbg !22
  br label %for.cond, !dbg !23

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %I, align 4, !dbg !24
  %cmp = icmp slt i32 %0, 128, !dbg !26
  br i1 %cmp, label %for.body, label %for.end, !dbg !27

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %I, align 4, !dbg !28
  %idxprom = sext i32 %1 to i64, !dbg !30
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %Buffer, i64 0, i64 %idxprom, !dbg !30
  store i8 42, i8* %arrayidx, align 1, !dbg !31
  br label %for.inc, !dbg !32

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %I, align 4, !dbg !33
  %inc = add nsw i32 %2, 1, !dbg !33
  store i32 %inc, i32* %I, align 4, !dbg !33
  br label %for.cond, !dbg !34, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds [128 x i8], [128 x i8]* %Buffer, i64 0, i64 42, !dbg !38
  store i8 13, i8* %arrayidx1, align 2, !dbg !39
  call void @llvm.dbg.declare(metadata i8** %P, metadata !40, metadata !DIExpression()), !dbg !42
  %P2 = bitcast i8** %P to i8*, !dbg !43
  call void @llvm.var.annotation(i8* %P2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i32 0, i32 0), i32 8, i8* null), !dbg !43
  %arrayidx3 = getelementptr inbounds [128 x i8], [128 x i8]* %Buffer, i64 0, i64 42, !dbg !44
  store i8* %arrayidx3, i8** %P, align 8, !dbg !42
  ret i32 0, !dbg !45
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { inaccessiblememonly nofree nosync nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/AttrConfig/array_01.c", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/TaintConfig/AttrConfig", checksumkind: CSK_MD5, checksum: "6c9360669d7a7cffe4f76e67f33b687f")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 2, type: !10, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/TaintConfig/AttrConfig/array_01.c", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "6c9360669d7a7cffe4f76e67f33b687f")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "Buffer", scope: !8, file: !9, line: 3, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 1024, elements: !17)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{!18}
!18 = !DISubrange(count: 128)
!19 = !DILocation(line: 3, column: 8, scope: !8)
!20 = !DILocalVariable(name: "I", scope: !21, file: !9, line: 4, type: !12)
!21 = distinct !DILexicalBlock(scope: !8, file: !9, line: 4, column: 3)
!22 = !DILocation(line: 4, column: 12, scope: !21)
!23 = !DILocation(line: 4, column: 8, scope: !21)
!24 = !DILocation(line: 4, column: 19, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !9, line: 4, column: 3)
!26 = !DILocation(line: 4, column: 21, scope: !25)
!27 = !DILocation(line: 4, column: 3, scope: !21)
!28 = !DILocation(line: 5, column: 12, scope: !29)
!29 = distinct !DILexicalBlock(scope: !25, file: !9, line: 4, column: 33)
!30 = !DILocation(line: 5, column: 5, scope: !29)
!31 = !DILocation(line: 5, column: 15, scope: !29)
!32 = !DILocation(line: 6, column: 3, scope: !29)
!33 = !DILocation(line: 4, column: 28, scope: !25)
!34 = !DILocation(line: 4, column: 3, scope: !25)
!35 = distinct !{!35, !27, !36, !37}
!36 = !DILocation(line: 6, column: 3, scope: !21)
!37 = !{!"llvm.loop.mustprogress"}
!38 = !DILocation(line: 7, column: 3, scope: !8)
!39 = !DILocation(line: 7, column: 14, scope: !8)
!40 = !DILocalVariable(name: "P", scope: !8, file: !9, line: 8, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!42 = !DILocation(line: 8, column: 49, scope: !8)
!43 = !DILocation(line: 8, column: 3, scope: !8)
!44 = !DILocation(line: 8, column: 54, scope: !8)
!45 = !DILocation(line: 9, column: 3, scope: !8)
