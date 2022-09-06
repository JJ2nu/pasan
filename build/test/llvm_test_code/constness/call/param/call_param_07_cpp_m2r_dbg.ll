; ModuleID = 'call_param_07_cpp_m2r_dbg.ll'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/call/param/call_param_07.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z3fooPi(i32* noundef %p) #0 !dbg !8 {
entry:
  call void @llvm.dbg.value(metadata i32* %p, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 42, i32* %p, align 4, !dbg !17
  ret void, !dbg !18
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z3barPi(i32* noundef %b) #0 !dbg !19 {
entry:
  call void @llvm.dbg.value(metadata i32* %b, metadata !20, metadata !DIExpression()), !dbg !21
  call void @_Z3fooPi(i32* noundef %b), !dbg !22
  ret void, !dbg !23
}

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #2 !dbg !24 {
entry:
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 4) #4, !dbg !27, !heapallocsite !13
  %0 = bitcast i8* %call to i32*, !dbg !27
  store i32 24, i32* %0, align 4, !dbg !27
  call void @llvm.dbg.value(metadata i32* %0, metadata !28, metadata !DIExpression()), !dbg !29
  call void @_Z3barPi(i32* noundef %0), !dbg !30
  ret i32 0, !dbg !31
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znwm(i64 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { builtin allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/call/param/call_param_07.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/constness/call/param", checksumkind: CSK_MD5, checksum: "6c93b79f68972842856d459ca9f0b11a")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooPi", scope: !9, file: !9, line: 2, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "test/llvm_test_code/constness/call/param/call_param_07.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "6c93b79f68972842856d459ca9f0b11a")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "p", arg: 1, scope: !8, file: !9, line: 2, type: !12)
!16 = !DILocation(line: 0, scope: !8)
!17 = !DILocation(line: 2, column: 23, scope: !8)
!18 = !DILocation(line: 2, column: 29, scope: !8)
!19 = distinct !DISubprogram(name: "bar", linkageName: "_Z3barPi", scope: !9, file: !9, line: 4, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!20 = !DILocalVariable(name: "b", arg: 1, scope: !19, file: !9, line: 4, type: !12)
!21 = !DILocation(line: 0, scope: !19)
!22 = !DILocation(line: 4, column: 20, scope: !19)
!23 = !DILocation(line: 4, column: 28, scope: !19)
!24 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 5, type: !25, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!25 = !DISubroutineType(types: !26)
!26 = !{!13}
!27 = !DILocation(line: 6, column: 12, scope: !24)
!28 = !DILocalVariable(name: "i", scope: !24, file: !9, line: 6, type: !12)
!29 = !DILocation(line: 0, scope: !24)
!30 = !DILocation(line: 7, column: 3, scope: !24)
!31 = !DILocation(line: 8, column: 3, scope: !24)
