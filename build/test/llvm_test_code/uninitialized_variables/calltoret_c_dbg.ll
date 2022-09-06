; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/calltoret.c'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/calltoret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addTen(i32 noundef %a) #0 !dbg !8 {
entry:
  %a.addr = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %b, metadata !16, metadata !DIExpression()), !dbg !17
  %0 = load i32, i32* %a.addr, align 4, !dbg !18
  %add = add nsw i32 %0, 10, !dbg !19
  ret i32 %add, !dbg !20
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !21 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %b, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 10, i32* %b, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %c, metadata !28, metadata !DIExpression()), !dbg !29
  %0 = load i32, i32* %a, align 4, !dbg !30
  %call = call i32 @addTen(i32 noundef %0), !dbg !31
  store i32 %call, i32* %c, align 4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %d, metadata !32, metadata !DIExpression()), !dbg !33
  ret i32 0, !dbg !34
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/calltoret.c", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/uninitialized_variables", checksumkind: CSK_MD5, checksum: "38ee73bbbf5bef5bf8d25cd0e747e5bf")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "addTen", scope: !9, file: !9, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/uninitialized_variables/calltoret.c", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "38ee73bbbf5bef5bf8d25cd0e747e5bf")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!15 = !DILocation(line: 1, column: 16, scope: !8)
!16 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 2, type: !12)
!17 = !DILocation(line: 2, column: 7, scope: !8)
!18 = !DILocation(line: 3, column: 10, scope: !8)
!19 = !DILocation(line: 3, column: 12, scope: !8)
!20 = !DILocation(line: 3, column: 3, scope: !8)
!21 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 6, type: !22, scopeLine: 6, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!22 = !DISubroutineType(types: !23)
!23 = !{!12}
!24 = !DILocalVariable(name: "a", scope: !21, file: !9, line: 7, type: !12)
!25 = !DILocation(line: 7, column: 7, scope: !21)
!26 = !DILocalVariable(name: "b", scope: !21, file: !9, line: 8, type: !12)
!27 = !DILocation(line: 8, column: 7, scope: !21)
!28 = !DILocalVariable(name: "c", scope: !21, file: !9, line: 9, type: !12)
!29 = !DILocation(line: 9, column: 7, scope: !21)
!30 = !DILocation(line: 9, column: 18, scope: !21)
!31 = !DILocation(line: 9, column: 11, scope: !21)
!32 = !DILocalVariable(name: "d", scope: !21, file: !9, line: 10, type: !12)
!33 = !DILocation(line: 10, column: 7, scope: !21)
!34 = !DILocation(line: 11, column: 3, scope: !21)
