; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_13.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_13.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = dso_local global i32 0, align 4, !dbg !0
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_Z11global_ctorv, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_Z11global_dtorv, i8* null }]

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z11global_ctorv() #0 !dbg !13 {
entry:
  store i32 42, i32* @g, align 4, !dbg !17
  ret void, !dbg !18
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z11global_dtorv() #0 !dbg !19 {
entry:
  store i32 666, i32* @g, align 4, !dbg !20
  ret void, !dbg !21
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3fooi(i32 noundef %x) #0 !dbg !22 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr, metadata !25, metadata !DIExpression()), !dbg !26
  %0 = load i32, i32* %x.addr, align 4, !dbg !27
  %add = add nsw i32 %0, 1, !dbg !28
  store i32 %add, i32* %x.addr, align 4, !dbg !29
  %1 = load i32, i32* %x.addr, align 4, !dbg !30
  ret i32 %1, !dbg !31
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #2 !dbg !32 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !35, metadata !DIExpression()), !dbg !36
  %0 = load i32, i32* @g, align 4, !dbg !37
  store i32 %0, i32* %a, align 4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %b, metadata !38, metadata !DIExpression()), !dbg !39
  %1 = load i32, i32* %a, align 4, !dbg !40
  %call = call noundef i32 @_Z3fooi(i32 noundef %1), !dbg !41
  store i32 %call, i32* %b, align 4, !dbg !39
  %2 = load i32, i32* @g, align 4, !dbg !42
  ret i32 %2, !dbg !43
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
!3 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_13.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/linear_constant", checksumkind: CSK_MD5, checksum: "5f43424554b0c139dba14fc1eabb0fb9")
!4 = !{!0}
!5 = !DIFile(filename: "test/llvm_test_code/linear_constant/global_13.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "5f43424554b0c139dba14fc1eabb0fb9")
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
!19 = distinct !DISubprogram(name: "global_dtor", linkageName: "_Z11global_dtorv", scope: !5, file: !5, line: 5, type: !14, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!20 = !DILocation(line: 5, column: 52, scope: !19)
!21 = !DILocation(line: 5, column: 59, scope: !19)
!22 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooi", scope: !5, file: !5, line: 7, type: !23, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!23 = !DISubroutineType(types: !24)
!24 = !{!6, !6}
!25 = !DILocalVariable(name: "x", arg: 1, scope: !22, file: !5, line: 7, type: !6)
!26 = !DILocation(line: 7, column: 13, scope: !22)
!27 = !DILocation(line: 8, column: 7, scope: !22)
!28 = !DILocation(line: 8, column: 9, scope: !22)
!29 = !DILocation(line: 8, column: 5, scope: !22)
!30 = !DILocation(line: 9, column: 10, scope: !22)
!31 = !DILocation(line: 9, column: 3, scope: !22)
!32 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 12, type: !33, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!33 = !DISubroutineType(types: !34)
!34 = !{!6}
!35 = !DILocalVariable(name: "a", scope: !32, file: !5, line: 13, type: !6)
!36 = !DILocation(line: 13, column: 7, scope: !32)
!37 = !DILocation(line: 13, column: 11, scope: !32)
!38 = !DILocalVariable(name: "b", scope: !32, file: !5, line: 14, type: !6)
!39 = !DILocation(line: 14, column: 7, scope: !32)
!40 = !DILocation(line: 14, column: 15, scope: !32)
!41 = !DILocation(line: 14, column: 11, scope: !32)
!42 = !DILocation(line: 15, column: 10, scope: !32)
!43 = !DILocation(line: 15, column: 3, scope: !32)
