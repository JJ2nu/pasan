; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/recursion_02.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/recursion_02.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z3facj(i32 noundef %i) #0 !dbg !8 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !14, metadata !DIExpression()), !dbg !15
  %0 = load i32, i32* %i.addr, align 4, !dbg !16
  %cmp = icmp eq i32 %0, 0, !dbg !18
  br i1 %cmp, label %if.then, label %if.end, !dbg !19

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !20
  br label %return, !dbg !20

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4, !dbg !22
  %2 = load i32, i32* %i.addr, align 4, !dbg !23
  %sub = sub i32 %2, 1, !dbg !24
  %call = call noundef i32 @_Z3facj(i32 noundef %sub), !dbg !25
  %mul = mul i32 %1, %call, !dbg !26
  store i32 %mul, i32* %retval, align 4, !dbg !27
  br label %return, !dbg !27

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !28
  ret i32 %3, !dbg !28
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #2 !dbg !29 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !33, metadata !DIExpression()), !dbg !34
  %call = call noundef i32 @_Z3facj(i32 noundef 5), !dbg !35
  store i32 %call, i32* %a, align 4, !dbg !34
  ret i32 0, !dbg !36
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/recursion_02.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/linear_constant", checksumkind: CSK_MD5, checksum: "d820e10edb743aa660b02e69c0e2a0fc")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "fac", linkageName: "_Z3facj", scope: !9, file: !9, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/linear_constant/recursion_02.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "d820e10edb743aa660b02e69c0e2a0fc")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{}
!14 = !DILocalVariable(name: "i", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!15 = !DILocation(line: 1, column: 23, scope: !8)
!16 = !DILocation(line: 2, column: 7, scope: !17)
!17 = distinct !DILexicalBlock(scope: !8, file: !9, line: 2, column: 7)
!18 = !DILocation(line: 2, column: 9, scope: !17)
!19 = !DILocation(line: 2, column: 7, scope: !8)
!20 = !DILocation(line: 3, column: 5, scope: !21)
!21 = distinct !DILexicalBlock(scope: !17, file: !9, line: 2, column: 15)
!22 = !DILocation(line: 5, column: 10, scope: !8)
!23 = !DILocation(line: 5, column: 18, scope: !8)
!24 = !DILocation(line: 5, column: 20, scope: !8)
!25 = !DILocation(line: 5, column: 14, scope: !8)
!26 = !DILocation(line: 5, column: 12, scope: !8)
!27 = !DILocation(line: 5, column: 3, scope: !8)
!28 = !DILocation(line: 6, column: 1, scope: !8)
!29 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 8, type: !30, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!30 = !DISubroutineType(types: !31)
!31 = !{!32}
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DILocalVariable(name: "a", scope: !29, file: !9, line: 9, type: !12)
!34 = !DILocation(line: 9, column: 12, scope: !29)
!35 = !DILocation(line: 9, column: 16, scope: !29)
!36 = !DILocation(line: 10, column: 3, scope: !29)
