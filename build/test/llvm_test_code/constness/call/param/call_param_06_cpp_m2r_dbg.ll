; ModuleID = 'call_param_06_cpp_m2r_dbg.ll'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/call/param/call_param_06.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z3fooPi(i32* noundef %p) #0 !dbg !8 {
entry:
  call void @llvm.dbg.value(metadata i32* %p, metadata !15, metadata !DIExpression()), !dbg !16
  %0 = load i32, i32* %p, align 4, !dbg !17
  call void @llvm.dbg.value(metadata i32 %0, metadata !18, metadata !DIExpression()), !dbg !16
  ret void, !dbg !19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main() #2 !dbg !20 {
entry:
  %call = call noalias noundef nonnull i8* @_Znwm(i64 noundef 4) #4, !dbg !23, !heapallocsite !13
  %0 = bitcast i8* %call to i32*, !dbg !23
  store i32 24, i32* %0, align 4, !dbg !23
  call void @llvm.dbg.value(metadata i32* %0, metadata !24, metadata !DIExpression()), !dbg !25
  call void @_Z3fooPi(i32* noundef %0), !dbg !26
  ret i32 0, !dbg !27
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
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/call/param/call_param_06.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/constness/call/param", checksumkind: CSK_MD5, checksum: "4e502d724951d56159b16bfad7e487aa")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooPi", scope: !9, file: !9, line: 2, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "test/llvm_test_code/constness/call/param/call_param_06.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "4e502d724951d56159b16bfad7e487aa")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "p", arg: 1, scope: !8, file: !9, line: 2, type: !12)
!16 = !DILocation(line: 0, scope: !8)
!17 = !DILocation(line: 2, column: 28, scope: !8)
!18 = !DILocalVariable(name: "b", scope: !8, file: !9, line: 2, type: !13)
!19 = !DILocation(line: 2, column: 32, scope: !8)
!20 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 4, type: !21, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!21 = !DISubroutineType(types: !22)
!22 = !{!13}
!23 = !DILocation(line: 5, column: 12, scope: !20)
!24 = !DILocalVariable(name: "i", scope: !20, file: !9, line: 5, type: !12)
!25 = !DILocation(line: 0, scope: !20)
!26 = !DILocation(line: 6, column: 3, scope: !20)
!27 = !DILocation(line: 7, column: 3, scope: !20)
