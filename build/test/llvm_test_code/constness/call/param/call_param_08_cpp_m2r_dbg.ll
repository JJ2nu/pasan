; ModuleID = 'call_param_08_cpp_m2r_dbg.ll'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/call/param/call_param_08.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z3fooRi(i32* noundef nonnull align 4 dereferenceable(4) %a) #0 !dbg !8 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 24, i32* %a, align 4, !dbg !17
  store i32 2, i32* %a, align 4, !dbg !18
  ret void, !dbg !19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse nounwind uwtable
define dso_local noundef i32 @main() #2 !dbg !20 {
entry:
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !23, metadata !DIExpression()), !dbg !24
  call void @_Z3fooRi(i32* noundef nonnull align 4 dereferenceable(4) %i), !dbg !25
  ret i32 0, !dbg !26
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/call/param/call_param_08.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/constness/call/param", checksumkind: CSK_MD5, checksum: "f31316a59e916a9a8f6607b737050083")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooRi", scope: !9, file: !9, line: 2, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "test/llvm_test_code/constness/call/param/call_param_08.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "f31316a59e916a9a8f6607b737050083")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "a", arg: 1, scope: !8, file: !9, line: 2, type: !12)
!16 = !DILocation(line: 0, scope: !8)
!17 = !DILocation(line: 4, column: 5, scope: !8)
!18 = !DILocation(line: 5, column: 5, scope: !8)
!19 = !DILocation(line: 6, column: 1, scope: !8)
!20 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 8, type: !21, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!21 = !DISubroutineType(types: !22)
!22 = !{!13}
!23 = !DILocalVariable(name: "i", scope: !20, file: !9, line: 9, type: !13)
!24 = !DILocation(line: 9, column: 7, scope: !20)
!25 = !DILocation(line: 10, column: 3, scope: !20)
!26 = !DILocation(line: 11, column: 3, scope: !20)
