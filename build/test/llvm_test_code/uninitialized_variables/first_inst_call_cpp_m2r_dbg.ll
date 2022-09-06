; ModuleID = 'first_inst_call_cpp_m2r_dbg.ll'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/first_inst_call.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z7computei(i32 noundef %i) #0 !dbg !8 {
entry:
  call void @llvm.dbg.value(metadata i32 %i, metadata !14, metadata !DIExpression()), !dbg !15
  %mul = mul nsw i32 %i, %i, !dbg !16
  ret i32 %mul, !dbg !17
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse nounwind uwtable
define dso_local noundef i32 @main() #2 !dbg !18 {
entry:
  %call = call noundef i32 @_Z7computei(i32 noundef undef), !dbg !21
  call void @llvm.dbg.value(metadata i32 %call, metadata !22, metadata !DIExpression()), !dbg !23
  ret i32 0, !dbg !24
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
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/uninitialized_variables/first_inst_call.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/uninitialized_variables", checksumkind: CSK_MD5, checksum: "d1710b9e5d05821c417566eaea81e9ed")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "compute", linkageName: "_Z7computei", scope: !9, file: !9, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/uninitialized_variables/first_inst_call.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "d1710b9e5d05821c417566eaea81e9ed")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocalVariable(name: "i", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!15 = !DILocation(line: 0, scope: !8)
!16 = !DILocation(line: 1, column: 31, scope: !8)
!17 = !DILocation(line: 1, column: 22, scope: !8)
!18 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 3, type: !19, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!19 = !DISubroutineType(types: !20)
!20 = !{!12}
!21 = !DILocation(line: 5, column: 11, scope: !18)
!22 = !DILocalVariable(name: "j", scope: !18, file: !9, line: 5, type: !12)
!23 = !DILocation(line: 0, scope: !18)
!24 = !DILocation(line: 6, column: 3, scope: !18)
