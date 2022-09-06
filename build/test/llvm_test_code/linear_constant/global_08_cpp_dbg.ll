; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_08.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_08.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = dso_local global i32 1, align 4, !dbg !0

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3bazi(i32 noundef %c) #0 !dbg !13 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !17, metadata !DIExpression()), !dbg !18
  %0 = load i32, i32* @g, align 4, !dbg !19
  %1 = load i32, i32* %c.addr, align 4, !dbg !20
  %add = add nsw i32 %0, %1, !dbg !21
  ret i32 %add, !dbg !22
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3bari(i32 noundef %b) #0 !dbg !23 {
entry:
  %b.addr = alloca i32, align 4
  store i32 %b, i32* %b.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !24, metadata !DIExpression()), !dbg !25
  %0 = load i32, i32* %b.addr, align 4, !dbg !26
  %add = add nsw i32 %0, 1, !dbg !27
  %call = call noundef i32 @_Z3bazi(i32 noundef %add), !dbg !28
  ret i32 %call, !dbg !29
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3fooi(i32 noundef %a) #0 !dbg !30 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !31, metadata !DIExpression()), !dbg !32
  %0 = load i32, i32* %a.addr, align 4, !dbg !33
  %add = add nsw i32 %0, 1, !dbg !34
  %call = call noundef i32 @_Z3bari(i32 noundef %add), !dbg !35
  ret i32 %call, !dbg !36
}

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #2 !dbg !37 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = load i32, i32* @g, align 4, !dbg !40
  %add = add nsw i32 %0, 1, !dbg !40
  store i32 %add, i32* @g, align 4, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %i, metadata !41, metadata !DIExpression()), !dbg !42
  store i32 0, i32* %i, align 4, !dbg !42
  %call = call noundef i32 @_Z3fooi(i32 noundef 1), !dbg !43
  store i32 %call, i32* %i, align 4, !dbg !44
  ret i32 0, !dbg !45
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
!3 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/global_08.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/linear_constant", checksumkind: CSK_MD5, checksum: "808c935c296df28f10da07a47bfd7bc9")
!4 = !{!0}
!5 = !DIFile(filename: "test/llvm_test_code/linear_constant/global_08.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "808c935c296df28f10da07a47bfd7bc9")
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!13 = distinct !DISubprogram(name: "baz", linkageName: "_Z3bazi", scope: !5, file: !5, line: 3, type: !14, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!6, !6}
!16 = !{}
!17 = !DILocalVariable(name: "c", arg: 1, scope: !13, file: !5, line: 3, type: !6)
!18 = !DILocation(line: 3, column: 13, scope: !13)
!19 = !DILocation(line: 4, column: 10, scope: !13)
!20 = !DILocation(line: 4, column: 14, scope: !13)
!21 = !DILocation(line: 4, column: 12, scope: !13)
!22 = !DILocation(line: 4, column: 3, scope: !13)
!23 = distinct !DISubprogram(name: "bar", linkageName: "_Z3bari", scope: !5, file: !5, line: 7, type: !14, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!24 = !DILocalVariable(name: "b", arg: 1, scope: !23, file: !5, line: 7, type: !6)
!25 = !DILocation(line: 7, column: 13, scope: !23)
!26 = !DILocation(line: 8, column: 14, scope: !23)
!27 = !DILocation(line: 8, column: 16, scope: !23)
!28 = !DILocation(line: 8, column: 10, scope: !23)
!29 = !DILocation(line: 8, column: 3, scope: !23)
!30 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooi", scope: !5, file: !5, line: 11, type: !14, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!31 = !DILocalVariable(name: "a", arg: 1, scope: !30, file: !5, line: 11, type: !6)
!32 = !DILocation(line: 11, column: 13, scope: !30)
!33 = !DILocation(line: 12, column: 14, scope: !30)
!34 = !DILocation(line: 12, column: 16, scope: !30)
!35 = !DILocation(line: 12, column: 10, scope: !30)
!36 = !DILocation(line: 12, column: 3, scope: !30)
!37 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 15, type: !38, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!38 = !DISubroutineType(types: !39)
!39 = !{!6}
!40 = !DILocation(line: 16, column: 5, scope: !37)
!41 = !DILocalVariable(name: "i", scope: !37, file: !5, line: 17, type: !6)
!42 = !DILocation(line: 17, column: 7, scope: !37)
!43 = !DILocation(line: 18, column: 7, scope: !37)
!44 = !DILocation(line: 18, column: 5, scope: !37)
!45 = !DILocation(line: 19, column: 3, scope: !37)
