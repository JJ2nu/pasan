; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/call_12.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/call_12.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3fooii(i32 noundef %a, i32 noundef %b) #0 !dbg !8 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 %b, i32* %b.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !16, metadata !DIExpression()), !dbg !17
  %0 = load i32, i32* %b.addr, align 4, !dbg !18
  %1 = load i32, i32* %a.addr, align 4, !dbg !19
  %add = add nsw i32 %1, %0, !dbg !19
  store i32 %add, i32* %a.addr, align 4, !dbg !19
  %2 = load i32, i32* %a.addr, align 4, !dbg !20
  %3 = load i32, i32* %b.addr, align 4, !dbg !21
  %add1 = add nsw i32 %3, %2, !dbg !21
  store i32 %add1, i32* %b.addr, align 4, !dbg !21
  %4 = load i32, i32* %a.addr, align 4, !dbg !22
  %5 = load i32, i32* %b.addr, align 4, !dbg !23
  %add2 = add nsw i32 %4, %5, !dbg !24
  ret i32 %add2, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #2 !dbg !26 {
entry:
  %retval = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %k, metadata !29, metadata !DIExpression()), !dbg !30
  %call = call noundef i32 @_Z3fooii(i32 noundef 1, i32 noundef 2), !dbg !31
  store i32 %call, i32* %k, align 4, !dbg !32
  ret i32 0, !dbg !33
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/call_12.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/linear_constant", checksumkind: CSK_MD5, checksum: "f3c9d1772634aa7515cfe1f53cb81d34")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooii", scope: !9, file: !9, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/linear_constant/call_12.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "f3c9d1772634aa7515cfe1f53cb81d34")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "a", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!15 = !DILocation(line: 1, column: 13, scope: !8)
!16 = !DILocalVariable(name: "b", arg: 2, scope: !8, file: !9, line: 1, type: !12)
!17 = !DILocation(line: 1, column: 20, scope: !8)
!18 = !DILocation(line: 2, column: 8, scope: !8)
!19 = !DILocation(line: 2, column: 5, scope: !8)
!20 = !DILocation(line: 3, column: 8, scope: !8)
!21 = !DILocation(line: 3, column: 5, scope: !8)
!22 = !DILocation(line: 4, column: 10, scope: !8)
!23 = !DILocation(line: 4, column: 14, scope: !8)
!24 = !DILocation(line: 4, column: 12, scope: !8)
!25 = !DILocation(line: 4, column: 3, scope: !8)
!26 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 7, type: !27, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!27 = !DISubroutineType(types: !28)
!28 = !{!12}
!29 = !DILocalVariable(name: "k", scope: !26, file: !9, line: 8, type: !12)
!30 = !DILocation(line: 8, column: 7, scope: !26)
!31 = !DILocation(line: 9, column: 7, scope: !26)
!32 = !DILocation(line: 9, column: 5, scope: !26)
!33 = !DILocation(line: 10, column: 3, scope: !26)
