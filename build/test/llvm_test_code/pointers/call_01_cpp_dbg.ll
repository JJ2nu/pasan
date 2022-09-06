; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/pointers/call_01.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/pointers/call_01.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z10setIntegerPi(i32* noundef %x) #0 !dbg !8 {
entry:
  %x.addr = alloca i32*, align 8
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !15, metadata !DIExpression()), !dbg !16
  %0 = load i32*, i32** %x.addr, align 8, !dbg !17
  store i32 42, i32* %0, align 4, !dbg !18
  ret void, !dbg !19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #2 !dbg !20 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32** %p, metadata !25, metadata !DIExpression()), !dbg !26
  store i32* %i, i32** %p, align 8, !dbg !26
  %0 = load i32*, i32** %p, align 8, !dbg !27
  call void @_Z10setIntegerPi(i32* noundef %0), !dbg !28
  %1 = load i32*, i32** %p, align 8, !dbg !29
  store i32 13, i32* %1, align 4, !dbg !30
  ret i32 0, !dbg !31
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/pointers/call_01.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/pointers", checksumkind: CSK_MD5, checksum: "7c4172ff94d8ed5a2345a5466441ff0d")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "setInteger", linkageName: "_Z10setIntegerPi", scope: !9, file: !9, line: 2, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "test/llvm_test_code/pointers/call_01.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "7c4172ff94d8ed5a2345a5466441ff0d")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "x", arg: 1, scope: !8, file: !9, line: 2, type: !12)
!16 = !DILocation(line: 2, column: 22, scope: !8)
!17 = !DILocation(line: 2, column: 28, scope: !8)
!18 = !DILocation(line: 2, column: 30, scope: !8)
!19 = !DILocation(line: 2, column: 36, scope: !8)
!20 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 4, type: !21, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!21 = !DISubroutineType(types: !22)
!22 = !{!13}
!23 = !DILocalVariable(name: "i", scope: !20, file: !9, line: 5, type: !13)
!24 = !DILocation(line: 5, column: 7, scope: !20)
!25 = !DILocalVariable(name: "p", scope: !20, file: !9, line: 6, type: !12)
!26 = !DILocation(line: 6, column: 8, scope: !20)
!27 = !DILocation(line: 7, column: 14, scope: !20)
!28 = !DILocation(line: 7, column: 3, scope: !20)
!29 = !DILocation(line: 8, column: 4, scope: !20)
!30 = !DILocation(line: 8, column: 6, scope: !20)
!31 = !DILocation(line: 9, column: 3, scope: !20)
