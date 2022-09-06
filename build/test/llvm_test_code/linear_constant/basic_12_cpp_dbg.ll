; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/basic_12.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/basic_12.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z3fooi(i32 noundef %x) #0 !dbg !8 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr, metadata !14, metadata !DIExpression()), !dbg !15
  %0 = load i32, i32* %x.addr, align 4, !dbg !16
  %add = add nsw i32 %0, 1, !dbg !17
  ret i32 %add, !dbg !18
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #2 !dbg !19 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 42, i32* %i, align 4, !dbg !23
  %0 = load i32, i32* %i, align 4, !dbg !24
  %call = call noundef i32 @_Z3fooi(i32 noundef %0), !dbg !25
  store i32 %call, i32* %i, align 4, !dbg !26
  %1 = load i32, i32* %i, align 4, !dbg !27
  ret i32 %1, !dbg !28
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/linear_constant/basic_12.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/linear_constant", checksumkind: CSK_MD5, checksum: "9aaa2f5622fc5048480df9388888d8af")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooi", scope: !9, file: !9, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/linear_constant/basic_12.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "9aaa2f5622fc5048480df9388888d8af")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "x", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!15 = !DILocation(line: 1, column: 13, scope: !8)
!16 = !DILocation(line: 1, column: 25, scope: !8)
!17 = !DILocation(line: 1, column: 27, scope: !8)
!18 = !DILocation(line: 1, column: 18, scope: !8)
!19 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 3, type: !20, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!20 = !DISubroutineType(types: !21)
!21 = !{!12}
!22 = !DILocalVariable(name: "i", scope: !19, file: !9, line: 4, type: !12)
!23 = !DILocation(line: 4, column: 7, scope: !19)
!24 = !DILocation(line: 5, column: 11, scope: !19)
!25 = !DILocation(line: 5, column: 7, scope: !19)
!26 = !DILocation(line: 5, column: 5, scope: !19)
!27 = !DILocation(line: 6, column: 10, scope: !19)
!28 = !DILocation(line: 6, column: 3, scope: !19)
