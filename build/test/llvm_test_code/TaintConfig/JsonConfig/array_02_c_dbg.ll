; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/array_02.c'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/array_02.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  %Buffer = alloca i8*, align 8
  %I = alloca i32, align 4
  %P = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i8** %Buffer, metadata !17, metadata !DIExpression()), !dbg !18
  %call = call noalias i8* @malloc(i64 noundef 128) #3, !dbg !19
  store i8* %call, i8** %Buffer, align 8, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %I, metadata !20, metadata !DIExpression()), !dbg !22
  store i32 0, i32* %I, align 4, !dbg !22
  br label %for.cond, !dbg !23

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %I, align 4, !dbg !24
  %cmp = icmp slt i32 %0, 128, !dbg !26
  br i1 %cmp, label %for.body, label %for.end, !dbg !27

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %Buffer, align 8, !dbg !28
  %2 = load i32, i32* %I, align 4, !dbg !30
  %idxprom = sext i32 %2 to i64, !dbg !28
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom, !dbg !28
  store i8 42, i8* %arrayidx, align 1, !dbg !31
  br label %for.inc, !dbg !32

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %I, align 4, !dbg !33
  %inc = add nsw i32 %3, 1, !dbg !33
  store i32 %inc, i32* %I, align 4, !dbg !33
  br label %for.cond, !dbg !34, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  %4 = load i8*, i8** %Buffer, align 8, !dbg !38
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 42, !dbg !38
  store i8 13, i8* %arrayidx1, align 1, !dbg !39
  call void @llvm.dbg.declare(metadata i8** %P, metadata !40, metadata !DIExpression()), !dbg !41
  %5 = load i8*, i8** %Buffer, align 8, !dbg !42
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 42, !dbg !42
  store i8* %arrayidx2, i8** %P, align 8, !dbg !41
  %6 = load i8*, i8** %Buffer, align 8, !dbg !43
  call void @free(i8* noundef %6) #3, !dbg !44
  ret i32 0, !dbg !45
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/TaintConfig/JsonConfig/array_02.c", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/TaintConfig/JsonConfig", checksumkind: CSK_MD5, checksum: "776821779258d0bf89d804e243bc4534")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!11 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 3, type: !13, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!12 = !DIFile(filename: "test/llvm_test_code/TaintConfig/JsonConfig/array_02.c", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "776821779258d0bf89d804e243bc4534")
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "Buffer", scope: !11, file: !12, line: 4, type: !3)
!18 = !DILocation(line: 4, column: 9, scope: !11)
!19 = !DILocation(line: 4, column: 26, scope: !11)
!20 = !DILocalVariable(name: "I", scope: !21, file: !12, line: 5, type: !15)
!21 = distinct !DILexicalBlock(scope: !11, file: !12, line: 5, column: 3)
!22 = !DILocation(line: 5, column: 12, scope: !21)
!23 = !DILocation(line: 5, column: 8, scope: !21)
!24 = !DILocation(line: 5, column: 19, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !12, line: 5, column: 3)
!26 = !DILocation(line: 5, column: 21, scope: !25)
!27 = !DILocation(line: 5, column: 3, scope: !21)
!28 = !DILocation(line: 6, column: 5, scope: !29)
!29 = distinct !DILexicalBlock(scope: !25, file: !12, line: 5, column: 33)
!30 = !DILocation(line: 6, column: 12, scope: !29)
!31 = !DILocation(line: 6, column: 15, scope: !29)
!32 = !DILocation(line: 7, column: 3, scope: !29)
!33 = !DILocation(line: 5, column: 28, scope: !25)
!34 = !DILocation(line: 5, column: 3, scope: !25)
!35 = distinct !{!35, !27, !36, !37}
!36 = !DILocation(line: 7, column: 3, scope: !21)
!37 = !{!"llvm.loop.mustprogress"}
!38 = !DILocation(line: 8, column: 3, scope: !11)
!39 = !DILocation(line: 8, column: 14, scope: !11)
!40 = !DILocalVariable(name: "P", scope: !11, file: !12, line: 9, type: !3)
!41 = !DILocation(line: 9, column: 9, scope: !11)
!42 = !DILocation(line: 9, column: 14, scope: !11)
!43 = !DILocation(line: 10, column: 8, scope: !11)
!44 = !DILocation(line: 10, column: 3, scope: !11)
!45 = !DILocation(line: 11, column: 3, scope: !11)
