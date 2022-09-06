; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_12.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_12.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = dso_local global i32 0, align 4, !dbg !0
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_Z11global_ctorv, i8* null }]

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z11global_ctorv() #0 !dbg !13 {
entry:
  store i32 42, i32* @g, align 4, !dbg !17
  ret void, !dbg !18
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3fooi(i32 noundef %x) #0 !dbg !19 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr, metadata !22, metadata !DIExpression()), !dbg !23
  %0 = load i32, i32* %x.addr, align 4, !dbg !24
  %add = add nsw i32 %0, 1, !dbg !25
  store i32 %add, i32* %x.addr, align 4, !dbg !26
  %1 = load i32, i32* %x.addr, align 4, !dbg !27
  ret i32 %1, !dbg !28
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #2 !dbg !29 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !32, metadata !DIExpression()), !dbg !33
  %0 = load i32, i32* @g, align 4, !dbg !34
  store i32 %0, i32* %a, align 4, !dbg !33
  %1 = load i32, i32* %a, align 4, !dbg !35
  %call = call noundef i32 @_Z3fooi(i32 noundef %1), !dbg !36
  store i32 %call, i32* %a, align 4, !dbg !37
  %2 = load i32, i32* %a, align 4, !dbg !38
  ret i32 %2, !dbg !39
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g", scope: !2, file: !5, line: 1, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_12.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/linear_constant", checksumkind: CSK_MD5, checksum: "ed87e81b50c95ce4b0db7e413ece22bf")
!4 = !{!0}
!5 = !DIFile(filename: "test/llvm_test_code/linear_constant/global_12.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "ed87e81b50c95ce4b0db7e413ece22bf")
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!13 = distinct !DISubprogram(name: "global_ctor", linkageName: "_Z11global_ctorv", scope: !5, file: !5, line: 3, type: !14, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{null}
!16 = !{}
!17 = !DILocation(line: 3, column: 53, scope: !13)
!18 = !DILocation(line: 3, column: 59, scope: !13)
!19 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooi", scope: !5, file: !5, line: 5, type: !20, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!20 = !DISubroutineType(types: !21)
!21 = !{!6, !6}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !19, file: !5, line: 5, type: !6)
!23 = !DILocation(line: 5, column: 13, scope: !19)
!24 = !DILocation(line: 6, column: 7, scope: !19)
!25 = !DILocation(line: 6, column: 9, scope: !19)
!26 = !DILocation(line: 6, column: 5, scope: !19)
!27 = !DILocation(line: 7, column: 10, scope: !19)
!28 = !DILocation(line: 7, column: 3, scope: !19)
!29 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 10, type: !30, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!30 = !DISubroutineType(types: !31)
!31 = !{!6}
!32 = !DILocalVariable(name: "a", scope: !29, file: !5, line: 11, type: !6)
!33 = !DILocation(line: 11, column: 7, scope: !29)
!34 = !DILocation(line: 11, column: 11, scope: !29)
!35 = !DILocation(line: 12, column: 11, scope: !29)
!36 = !DILocation(line: 12, column: 7, scope: !29)
!37 = !DILocation(line: 12, column: 5, scope: !29)
!38 = !DILocation(line: 13, column: 10, scope: !29)
!39 = !DILocation(line: 13, column: 3, scope: !29)
