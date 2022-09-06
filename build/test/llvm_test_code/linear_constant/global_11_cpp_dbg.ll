; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_11.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_11.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g1 = dso_local global i32 42, align 4, !dbg !0
@g2 = dso_local global i32 9001, align 4, !dbg !5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3fooi(i32 noundef %x) #0 !dbg !15 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr, metadata !19, metadata !DIExpression()), !dbg !20
  %0 = load i32, i32* %x.addr, align 4, !dbg !21
  %add = add nsw i32 %0, 1, !dbg !22
  store i32 %add, i32* %x.addr, align 4, !dbg !23
  %1 = load i32, i32* %x.addr, align 4, !dbg !24
  ret i32 %1, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #2 !dbg !26 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !29, metadata !DIExpression()), !dbg !30
  store i32 13, i32* %a, align 4, !dbg !30
  %0 = load i32, i32* %a, align 4, !dbg !31
  %call = call noundef i32 @_Z3fooi(i32 noundef %0), !dbg !32
  store i32 %call, i32* %a, align 4, !dbg !33
  %1 = load i32, i32* %a, align 4, !dbg !34
  ret i32 %1, !dbg !35
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g1", scope: !2, file: !7, line: 1, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_11.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/linear_constant", checksumkind: CSK_MD5, checksum: "8f37dd7a70fd43d5d50cc5c176d53296")
!4 = !{!0, !5}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "g2", scope: !2, file: !7, line: 2, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "test/llvm_test_code/linear_constant/global_11.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "8f37dd7a70fd43d5d50cc5c176d53296")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!15 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooi", scope: !7, file: !7, line: 4, type: !16, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!8, !8}
!18 = !{}
!19 = !DILocalVariable(name: "x", arg: 1, scope: !15, file: !7, line: 4, type: !8)
!20 = !DILocation(line: 4, column: 13, scope: !15)
!21 = !DILocation(line: 5, column: 7, scope: !15)
!22 = !DILocation(line: 5, column: 9, scope: !15)
!23 = !DILocation(line: 5, column: 5, scope: !15)
!24 = !DILocation(line: 6, column: 10, scope: !15)
!25 = !DILocation(line: 6, column: 3, scope: !15)
!26 = distinct !DISubprogram(name: "main", scope: !7, file: !7, line: 9, type: !27, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !18)
!27 = !DISubroutineType(types: !28)
!28 = !{!8}
!29 = !DILocalVariable(name: "a", scope: !26, file: !7, line: 10, type: !8)
!30 = !DILocation(line: 10, column: 7, scope: !26)
!31 = !DILocation(line: 11, column: 11, scope: !26)
!32 = !DILocation(line: 11, column: 7, scope: !26)
!33 = !DILocation(line: 11, column: 5, scope: !26)
!34 = !DILocation(line: 12, column: 10, scope: !26)
!35 = !DILocation(line: 12, column: 3, scope: !26)
