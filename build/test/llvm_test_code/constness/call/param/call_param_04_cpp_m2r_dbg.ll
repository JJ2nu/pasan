; ModuleID = 'call_param_04_cpp_m2r_dbg.ll'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/call/param/call_param_04.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z3fooPi(i32* noundef %a) #0 !dbg !8 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !15, metadata !DIExpression()), !dbg !16
  ret void, !dbg !17
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse nounwind uwtable
define dso_local noundef i32 @main() #2 !dbg !18 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !22
  store i32 10, i32* %i, align 4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %j, metadata !23, metadata !DIExpression()), !dbg !24
  store i32 13, i32* %j, align 4, !dbg !24
  call void @_Z3fooPi(i32* noundef %i), !dbg !25
  call void @_Z3fooPi(i32* noundef %j), !dbg !26
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
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/constness/call/param/call_param_04.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/constness/call/param", checksumkind: CSK_MD5, checksum: "f87af7378e8aaa53fa07d205d6eb9ad5")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "foo", linkageName: "_Z3fooPi", scope: !9, file: !9, line: 2, type: !10, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "test/llvm_test_code/constness/call/param/call_param_04.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "f87af7378e8aaa53fa07d205d6eb9ad5")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "a", arg: 1, scope: !8, file: !9, line: 2, type: !12)
!16 = !DILocation(line: 0, scope: !8)
!17 = !DILocation(line: 2, column: 19, scope: !8)
!18 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 4, type: !19, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!19 = !DISubroutineType(types: !20)
!20 = !{!13}
!21 = !DILocalVariable(name: "i", scope: !18, file: !9, line: 5, type: !13)
!22 = !DILocation(line: 5, column: 7, scope: !18)
!23 = !DILocalVariable(name: "j", scope: !18, file: !9, line: 6, type: !13)
!24 = !DILocation(line: 6, column: 7, scope: !18)
!25 = !DILocation(line: 7, column: 3, scope: !18)
!26 = !DILocation(line: 8, column: 3, scope: !18)
!27 = !DILocation(line: 9, column: 3, scope: !18)
