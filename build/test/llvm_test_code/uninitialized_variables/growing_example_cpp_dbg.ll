; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/growing_example.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/growing_example.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z8functionii(i32 noundef %x, i32 noundef %y) #0 !dbg !8 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 %y, i32* %y.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %y.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %j, metadata !20, metadata !DIExpression()), !dbg !21
  %0 = load i32, i32* %x.addr, align 4, !dbg !22
  store i32 %0, i32* %j, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %k, metadata !23, metadata !DIExpression()), !dbg !24
  %1 = load i32, i32* %y.addr, align 4, !dbg !25
  store i32 %1, i32* %k, align 4, !dbg !24
  %2 = load i32, i32* %i, align 4, !dbg !26
  %3 = load i32, i32* %k, align 4, !dbg !27
  %add = add nsw i32 %2, %3, !dbg !28
  ret i32 %add, !dbg !29
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main(i32 noundef %argc, i8** noundef %argv) #2 !dbg !30 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !36, metadata !DIExpression()), !dbg !37
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %i, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %j, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %k, metadata !44, metadata !DIExpression()), !dbg !45
  %0 = load i32, i32* %j, align 4, !dbg !46
  %call = call noundef i32 @_Z8functionii(i32 noundef %0, i32 noundef 12), !dbg !47
  store i32 %call, i32* %k, align 4, !dbg !48
  ret i32 0, !dbg !49
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/growing_example.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/uninitialized_variables", checksumkind: CSK_MD5, checksum: "72a0570c8e9e76c92e232ef07c4431cd")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "function", linkageName: "_Z8functionii", scope: !9, file: !9, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/uninitialized_variables/growing_example.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "72a0570c8e9e76c92e232ef07c4431cd")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "x", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!15 = !DILocation(line: 1, column: 18, scope: !8)
!16 = !DILocalVariable(name: "y", arg: 2, scope: !8, file: !9, line: 1, type: !12)
!17 = !DILocation(line: 1, column: 25, scope: !8)
!18 = !DILocalVariable(name: "i", scope: !8, file: !9, line: 2, type: !12)
!19 = !DILocation(line: 2, column: 7, scope: !8)
!20 = !DILocalVariable(name: "j", scope: !8, file: !9, line: 3, type: !12)
!21 = !DILocation(line: 3, column: 7, scope: !8)
!22 = !DILocation(line: 3, column: 11, scope: !8)
!23 = !DILocalVariable(name: "k", scope: !8, file: !9, line: 4, type: !12)
!24 = !DILocation(line: 4, column: 7, scope: !8)
!25 = !DILocation(line: 4, column: 11, scope: !8)
!26 = !DILocation(line: 5, column: 10, scope: !8)
!27 = !DILocation(line: 5, column: 14, scope: !8)
!28 = !DILocation(line: 5, column: 12, scope: !8)
!29 = !DILocation(line: 5, column: 3, scope: !8)
!30 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 8, type: !31, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!31 = !DISubroutineType(types: !32)
!32 = !{!12, !12, !33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!36 = !DILocalVariable(name: "argc", arg: 1, scope: !30, file: !9, line: 8, type: !12)
!37 = !DILocation(line: 8, column: 14, scope: !30)
!38 = !DILocalVariable(name: "argv", arg: 2, scope: !30, file: !9, line: 8, type: !33)
!39 = !DILocation(line: 8, column: 27, scope: !30)
!40 = !DILocalVariable(name: "i", scope: !30, file: !9, line: 9, type: !12)
!41 = !DILocation(line: 9, column: 7, scope: !30)
!42 = !DILocalVariable(name: "j", scope: !30, file: !9, line: 10, type: !12)
!43 = !DILocation(line: 10, column: 7, scope: !30)
!44 = !DILocalVariable(name: "k", scope: !30, file: !9, line: 11, type: !12)
!45 = !DILocation(line: 11, column: 7, scope: !30)
!46 = !DILocation(line: 12, column: 16, scope: !30)
!47 = !DILocation(line: 12, column: 7, scope: !30)
!48 = !DILocation(line: 12, column: 5, scope: !30)
!49 = !DILocation(line: 13, column: 3, scope: !30)
