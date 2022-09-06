; ModuleID = 'call_param_05_cpp_m2r_dbg.ll'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/call/param/call_param_05.cpp"
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

; Function Attrs: mustprogress noinline norecurse nounwind uwtable
define dso_local noundef i32 @main() #2 !dbg !19 {
entry:
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !22, metadata !DIExpression()), !dbg !23
  call void @_Z3fooPi(i32* noundef %i), !dbg !24
  call void @_Z3fooPi(i32* noundef %i), !dbg !25
  call void @_Z3fooPi(i32* noundef %i), !dbg !26
  ret i32 0, !dbg !27
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
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/call/param/call_param_05.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/constness/call/param", checksumkind: CSK_MD5, checksum: "843fcf0ab082f329b35c092d0c330a0e")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooPi", scope: !9, file: !9, line: 2, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "test/llvm_test_code/constness/call/param/call_param_05.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "843fcf0ab082f329b35c092d0c330a0e")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "p", arg: 1, scope: !8, file: !9, line: 2, type: !12)
!16 = !DILocation(line: 0, scope: !8)
!17 = !DILocation(line: 2, column: 23, scope: !8)
!18 = !DILocation(line: 2, column: 29, scope: !8)
!19 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 4, type: !20, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!20 = !DISubroutineType(types: !21)
!21 = !{!13}
!22 = !DILocalVariable(name: "i", scope: !19, file: !9, line: 5, type: !13)
!23 = !DILocation(line: 5, column: 7, scope: !19)
!24 = !DILocation(line: 6, column: 3, scope: !19)
!25 = !DILocation(line: 7, column: 3, scope: !19)
!26 = !DILocation(line: 8, column: 3, scope: !19)
!27 = !DILocation(line: 9, column: 3, scope: !19)
