; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/dummy_source_sink/taint_04.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/dummy_source_sink/taint_04.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z6sourcev() #0 !dbg !8 {
entry:
  ret i32 0, !dbg !14
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z4sinki(i32 noundef %p) #0 !dbg !15 {
entry:
  %p.addr = alloca i32, align 4
  store i32 %p, i32* %p.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %p.addr, metadata !18, metadata !DIExpression()), !dbg !19
  ret void, !dbg !20
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main(i32 noundef %argc, i8** noundef %argv) #2 !dbg !21 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !27, metadata !DIExpression()), !dbg !28
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %a, metadata !31, metadata !DIExpression()), !dbg !32
  %call = call noundef i32 @_Z6sourcev(), !dbg !33
  store i32 %call, i32* %a, align 4, !dbg !32
  %0 = load i32, i32* %a, align 4, !dbg !34
  call void @_Z4sinki(i32 noundef %0), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %b, metadata !36, metadata !DIExpression()), !dbg !37
  %1 = load i32, i32* %a, align 4, !dbg !38
  store i32 %1, i32* %b, align 4, !dbg !37
  %2 = load i32, i32* %b, align 4, !dbg !39
  call void @_Z4sinki(i32 noundef %2), !dbg !40
  ret i32 0, !dbg !41
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/jinu/Desktop/phasar/test/llvm_test_code/taint_analysis/dummy_source_sink/taint_04.cpp", directory: "/home/jinu/Desktop/phasar/build/test/llvm_test_code/taint_analysis/dummy_source_sink", checksumkind: CSK_MD5, checksum: "dd34b9c45a29f9438cf1ece85a491212")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!8 = distinct !DISubprogram(name: "source", linkageName: "_Z6sourcev", scope: !9, file: !9, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!9 = !DIFile(filename: "test/llvm_test_code/taint_analysis/dummy_source_sink/taint_04.cpp", directory: "/home/jinu/Desktop/phasar", checksumkind: CSK_MD5, checksum: "dd34b9c45a29f9438cf1ece85a491212")
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{}
!14 = !DILocation(line: 1, column: 16, scope: !8)
!15 = distinct !DISubprogram(name: "sink", linkageName: "_Z4sinki", scope: !9, file: !9, line: 2, type: !16, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !12}
!18 = !DILocalVariable(name: "p", arg: 1, scope: !15, file: !9, line: 2, type: !12)
!19 = !DILocation(line: 2, column: 15, scope: !15)
!20 = !DILocation(line: 2, column: 19, scope: !15)
!21 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 4, type: !22, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !13)
!22 = !DISubroutineType(types: !23)
!23 = !{!12, !12, !24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DILocalVariable(name: "argc", arg: 1, scope: !21, file: !9, line: 4, type: !12)
!28 = !DILocation(line: 4, column: 14, scope: !21)
!29 = !DILocalVariable(name: "argv", arg: 2, scope: !21, file: !9, line: 4, type: !24)
!30 = !DILocation(line: 4, column: 27, scope: !21)
!31 = !DILocalVariable(name: "a", scope: !21, file: !9, line: 5, type: !12)
!32 = !DILocation(line: 5, column: 7, scope: !21)
!33 = !DILocation(line: 5, column: 11, scope: !21)
!34 = !DILocation(line: 6, column: 8, scope: !21)
!35 = !DILocation(line: 6, column: 3, scope: !21)
!36 = !DILocalVariable(name: "b", scope: !21, file: !9, line: 7, type: !12)
!37 = !DILocation(line: 7, column: 7, scope: !21)
!38 = !DILocation(line: 7, column: 11, scope: !21)
!39 = !DILocation(line: 8, column: 8, scope: !21)
!40 = !DILocation(line: 8, column: 3, scope: !21)
!41 = !DILocation(line: 9, column: 3, scope: !21)
